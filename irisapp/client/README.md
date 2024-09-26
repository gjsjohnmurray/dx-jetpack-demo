# Gitpod Demo of Two Entries in the 2024 Developer Tools Contest

This Gitpod snapshot demonstrates two entries in the [InterSystems Developer Tools Contest 2024](https://openexchange.intersystems.com/contest/38), using an InterSystems IRIS Community environment augmented with InterSystems Package Manager (IPM).

 If you like them please vote for them.

 - [IPM in VS Code](https://openexchange.intersystems.com/contest/38#437)
 - [DX Jetpack for VS Code](https://openexchange.intersystems.com/contest/38#427)

## Using The Demo

The ServerDiff extension (part of the Jetpack but not new in the 2024 contest) will ask for permission to reinstall itself in order to use the `quickDiff` API proposal that it relies on. Click 'Yes'.

Once ServerDiff has reinstalled, check the ObjectScript panel on the status bar. It should show `devcontainer[USER]`, indicating a connection to the USER namespace of the InterSystems IRIS environment inside the container. If necessary, click on that panel and choose `Refresh Connection` from the quickpick that appears at the top of the window.

### Entry #1: IPM in VS Code

We suggest you watch [this short YouTube video](https://www.youtube.com/embed/w4w1oSRqoak), then perform the following steps for yourself.

1. On the Activity Bar click the InterSystems logo. In the SERVERS section find `devcontainer`. Expand it and its `Namespaces` subfolder.
2. Hover over the `USER` row and click the Package Manager button contributed by the extension we created.
3. In the IPM tab that opens, notice the entry in the INSTALLED section. The `isc.codetidy` package is preinstalled in this demo environment.
4. Expand the AVAILABLE section, then scroll through the list to find a package you'd like to install. For example [`vscode-per-namespace-settings`](https://openexchange.intersystems.com/package/vscode-per-namespace-settings) will augment VS Code's configuration capabilities on this IRIS server. To learn more about any package in this list, click on the icon at the rightmost end of its row.
5. Set the radiobutton alongside your choice, then use the Install button below the table.
> To see the newly-installed package in the INSTALLED section it is currently necessary to close the IPM tab and reopen it from Server Manager.
6. In the INSTALLED section, select the package you just installed. Now try the various buttons below the table, including finally the Uninstall one.

Open an IPM tab for the %SYS namespace and observe that `zpm` is the only installed package.
> **Don't uninstall the `zpm` package** or you won't be able to manage packages on this server.

### Entry #2: DX Jetpack, 2024 edition

 We suggest you focus on two of the three new extensions we created specifically for the 2024 contest:

- [Studio-style Workspace Creator](https://marketplace.visualstudio.com/items?itemName=georgejames.isfs-studio-style-workspace)
- [Server-Side Workspace Folder Tuner](https://marketplace.visualstudio.com/items?itemName=georgejames.isfs-root-tuner)

Here are some ideas, but feel free to go 'off-piste' and do whatever you like. The dev container can easily be rebuilt so you can start again.

1. On the USER row of the Server Manager tree, click the icon representing a 4-folder workspace. A status bar message appears briefly to tell you that the Workspace Creator extension has added 4 folders to your workspace.
2. Switch to VS Code's Explorer view and click on the Collapse All button at the rightmost end of the workspace header.
3. Expand each of the new folders in turn to see what they contain.
4. Right-click on the `devcontainer:USER - Classes` folder. If a single-entry Paste menu appears press `Escape` to dismiss this artefact (apparently a VS Code bug).
5. In the VS Code context menu that appears, choose `Hide Mapped Items`. Observe that the CSPX, Ens, EnsLib and EnsPortal packages are no longer visible.
6. On the context menu of the `devcontainer:USER - Routines` root, use the context menu to `Show Generated Items`. Observer the generated XXX.1.int routines appearing under pkg/isc/codetidy. These were generated from the corresponding classes under the previous root.
7. Use the `Show System Items` on the same context menu of the Classes root to make the %-packages and their classes visible.

> For [technical reasons](https://github.com/gjsjohnmurray/iris-rest-api-explorer/issues/1) the third new extension in DX Jetpack, [InterSystems REST API Explorer](https://marketplace.visualstudio.com/items?itemName=georgejames.iris-rest-api-explorer), is not currently able to work in the online demo environment. Please install Jetpack locally and evaluate it there.

## About The Entries

### IPM in VS Code

This extension streamlines working with the InterSystems Package Manager on your IRIS environments.

### DX Jetpack

DX Jetpack is an extension pack curated by [George James Software](https://georgejames.com) with the goal of boosting the developer experience (DX) for devs working on [InterSystems](https://developer.intersystems.com) platforms.

See all our VS Code extensions in [Visual Studio Marketplace](https://marketplace.visualstudio.com/publishers/georgejames).

## About George James Software

Known for our expertise in InterSystems technologies, George James Software has been providing innovative software solutions for over 35 years. We focus on activities that can help our customers with the support and maintenance of their systems and applications. Our activities include consulting, training, support, and developer tools - with the Deltanji source control being our flagship tool. Our tools augment InterSystems' technology and can help customers with the maintainability and supportability of their applications over the long term. 

To find out more, go to our website - [georgejames.com](https://georgejames.com) 
