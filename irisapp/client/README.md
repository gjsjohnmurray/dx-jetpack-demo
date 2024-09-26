# Gitpod Demo of InterSystems DX Jetpack for VS Code

In this Gitpod snapshot is an InterSystems IRIS Community environment augmented with InterSystems Package Manager (IPM) and the [isc-codetidy](https://openexchange.intersystems.com/package/isc-codetidy) package.

## Using The Demo

> Ignore any initial notifications about ports being opened.

The ServerDiff extension will ask for permission to reinstall itself in order to use the `quickDiff` API proposal that it relies on. Click 'Yes'.

Once ServerDiff has reinstalled, check the ObjectScript panel on the status bar. It should show `devcontainer[USER]`, indicating a connection to the USER namespace of the InterSystems IRIS environment inside the container. If necessary, click on that panel and choose `Refresh Connection` from the quickpick that appears at the top of the window.

**TODO update below here**

From the Activity Bar use the ObjectScript Explorer or the Server Manager to explore the `pkg.isc.codetidy.*` classes that isc-codetidy added to the USER namespace. We suggest you focus on the three new extensions we created specifically for the contest:

- [gj :: codeSpex](https://marketplace.visualstudio.com/items?itemName=georgejames.codespex)
- [ObjectScript Class View](https://marketplace.visualstudio.com/items?itemName=georgejames.objectscript-class-view)
- [ServerDiff](https://marketplace.visualstudio.com/items?itemName=georgejames.intersystems-serverdiff)

Here are some ideas, but feel free to go 'off-piste' and do whatever you like. The dev container can easily be rebuilt so you can start again.

1. Open a class from the `pkg.isc.codetidy` package, for example `pkg/isc/codetidy/CodeTidy.cls`.
2. Notice the 'speech bubble' icons that appear in the editor gutter, and the corresponding rows in a new COMMENTS tab in the Panel and the bottom of the window. Click to explore what they reveal.

**gj :: codeSpex** has given you a new way of reading the documentation for classes referenced in a line, which you would otherwise only see by hovering.

Using buttons on the title bar you can:
- Mute an entry so it doesn't show again during this session.
- Resolve it. This changes its status, giving it a different icon in the Comments panel. The filter button in that panel can be used to hide Resolved items.
- Resolve all occurrences in all currently-open documents by using a key modifier when clicking (see the button's hover tip).
- Exclude this from future scanning anywhere in this workspace, or for any workspace. _[TODO: These features are not yet implemented]_
- Collapse an entry.

3. From the context menu anywhere in the class, choose `Find All Implementations`. The References view will appear.

**ObjectScript Class View** has provided this information, which shows you all the class members your class defines or inherits, grouping them under the class where they are implemented.

4. Open a class for editing outside the USER namespace. To do this, first use the `Export` option on its context menu in the ObjectScript Explorer tree. This creates a copy of the class definition in a file under the `src` folder of the folder open in VS Code. In the ObjectScript Explorer tree the class acquires an icon, and by clicking on the item you will open the exported copy.

Make some changes but don't save them yet. **ServerDiff** will add diff markers in the gutter. Blue markers denotes a changes, green ones shows insertions, red ones are for deletions.

As soon as you save the changes the updated class gets imported into the namespace, causing the diff markers to disappear. If you disable automatic import on save by changing the `objectscript.importOnSave` setting you can save changes incrementally without losing the indication of differences relative to the version of the class in the namespace.

## About DX Jetpack

Curated by [George James Software](https://georgejames.com), this extension pack boosts the developer experience (DX) for devs working on [InterSystems](https://developer.intersystems.com) platforms.

We entered the DX Jetpack (2024 edition) and the InterSystems Package Manager extensions into the 2024 [InterSystems Developer Tools Contest](https://openexchange.intersystems.com/contest/38). If you like them please vote for them.

See all our VS Code extensions in [Visual Studio Marketplace](https://marketplace.visualstudio.com/publishers/georgejames).

## About George James Software

Known for our expertise in InterSystems technologies, George James Software has been providing innovative software solutions for over 35 years. We focus on activities that can help our customers with the support and maintenance of their systems and applications. Our activities include consulting, training, support, and developer tools - with the Deltanji source control being our flagship tool. Our tools augment InterSystems' technology and can help customers with the maintainability and supportability of their applications over the long term. 

To find out more, go to our website - [georgejames.com](https://georgejames.com) 
