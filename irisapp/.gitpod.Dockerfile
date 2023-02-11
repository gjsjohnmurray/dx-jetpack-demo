ARG IMAGE=containers.intersystems.com/intersystems/iris-community:2022.3.0.606.0

FROM $IMAGE

USER root

# Update package and install extras
RUN apt-get update && apt-get install -y \
	sudo \
	curl && \
	curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
	apt-get remove -y nodejs nodejs-doc && \
	apt-get autoremove -y && \
	apt-get install -y \
	nodejs && \
	npm install -g @vscode/vsce && \
	/bin/echo -e ${ISC_PACKAGE_MGRUSER}\\tALL=\(ALL\)\\tNOPASSWD: ALL >> /etc/sudoers && \
	sudo -u ${ISC_PACKAGE_MGRUSER} sudo echo enabled passwordless sudo-ing for ${ISC_PACKAGE_MGRUSER}

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

# create dev directory
WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

# Copy source files to image
COPY ./irisapp /opt/irisapp

# load demo stuff
RUN iris start IRIS \
	&& iris session IRIS < /opt/irisapp/iris.script && iris stop IRIS quietly

ENV SRC_PATH=/opt/irisapp
ENV IRISUSERNAME "SuperUser"
ENV IRISPASSWORD "SYS"
ENV IRISNAMESPACE "USER"

ENTRYPOINT [ "/tini", "--", "/opt/irisapp/entrypoint.sh" ]
