ARG IMAGE=containers.intersystems.com/intersystems/iris-community:2024.1
FROM $IMAGE

USER root

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo,irisowner -md /home/gitpod -s /bin/bash -p gitpod gitpod

# Update package and install extras
RUN apt-get update && apt-get install -y \
	sudo \
	git \
	git-lfs \
	curl && \
	/bin/echo -e gitpod\\tALL=\(ALL\)\\tNOPASSWD: ALL >> /etc/sudoers && \
	sudo -u gitpod sudo echo Enabled passwordless sudo-ing for gitpod && \
	/bin/echo -e ${ISC_PACKAGE_MGRUSER}\\tALL=\(ALL\)\\tNOPASSWD: ALL >> /etc/sudoers && \
	sudo -u ${ISC_PACKAGE_MGRUSER} sudo echo Enabled passwordless sudo-ing for ${ISC_PACKAGE_MGRUSER}

# create dev directory
WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp

# Comment/uncomment line below to trigger rebuild from here onward
# USER root

# switch user
USER ${ISC_PACKAGE_MGRUSER}

# Copy source files to image
COPY --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} ./irisapp /opt/irisapp

RUN sudo chmod +x /opt/irisapp/afterStart-gitpod.sh

# load demo stuff
RUN iris start IRIS \
	&& iris session IRIS < /opt/irisapp/iris.script && iris stop IRIS quietly

ENV SRC_PATH=/opt/irisapp
ENV IRISUSERNAME "SuperUser"
ENV IRISPASSWORD "SYS"
ENV IRISNAMESPACE "USER"

ENTRYPOINT []
