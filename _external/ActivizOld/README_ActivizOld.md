
# `ActivizOld` - Updating Scripts for ActiViz Repositories Containing Old Sources or Binaries

See also:

* [IGLib Wiki: Visual Toolkit (VTK) and ActiViz - State and Comparison](https://github.com/ajgorhoe/wiki.IGLib/blob/main/IGLib/developmentareas/graphics3d/VtkComparison/VtkStateAndComparison.md#L4) (private repository) - this contains detailed information on VTK and ActiViz, with a rich set of links, including available old versions of ActiViz binaries and source code

The only available **Activiz source** code repository I have found is [dearman/activizdotnet](https://github.com/dearman/activizdotnet) ([my fork](https://github.com/ajgorhoe/activizdotnet)), but it is **not very useful**. The link provided in the readme file that should contain binaries does not work, but binaries are critical for ActiViz to work.

There are two useful **VTK examples** repositories, which also include C# examples based on ActiViz. One repository is for old VTK versions when open source ActiViz was still available (up to 2021), and the other is from about 2021 on.

The repositories are:

* [VTKExamplesOld](https://github.com/lorensen/VTKExamples) - old version, the last commit is from March 2021, C# examples are in `src/CSharp/`
* [VTKExamplesOld](https://github.com/lorensen/VTKExamples) - new version, the initial commit is from November 2020 and the most recent commit is from January 2024, C# examples are in `site/CSharp/`

In the legacy IGLib Framework I use binaries that I have recorded long ago, and are included in the [IGLib base repository](https://github.com/ajgorhoe/IGLib.workspace.base.iglib) - see the [containing directory of the repository](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/tree/master/externalextended) or [containing directory on a particular branch](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/tree/feature/25_12_26_NumericRearrangement/externalextended) where the directory existed dor sure.

For the purpose of **transferring some ActiViz-based 3D plotting tools** to the new IGLib, I have put the above mentioned and other ActiViz binaries into separate repositories, such that they can be easily cloned and referenced:

* [ActiViz](https://github.com/ajgorhoe/ActivizOld-ActiViz) (from legacy [iglib/externalextended/ActiViz](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/tree/master/externalextended/ActiViz))
* [ActiViz_5.6.1_x86](https://github.com/ajgorhoe/ActivizOld-ActiViz_5.6.1_x86) (from legacy [iglib/externalextended/ActiViz_5.6.1_x86](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/tree/master/externalextended/ActiViz_5.6.1_x86))
* [ActiViz_5.8.0_x86](https://github.com/ajgorhoe/ActivizOld-ActiViz_5.8.0_x86) (from legacy [iglib/externalextended/ActiViz_5.8.0_x86](https://github.com/ajgorhoe/IGLib.workspace.base.iglib/tree/master/externalextended/ActiViz_5.8.0_x86))

From teh [Wayback Machine archives of ActiViz official pages](https://web.archive.org/web/20210701000000*/https://www.kitware.eu/activiz), it seems that the **latest version** of ActiViz **where binaries can be obtained** is **5.8.0.607**, as could be seen from the saved backup of the [ActiViz pages from 16th February 2016](https://web.archive.org/web/20210216033930/https://www.kitware.eu/activiz/). At this time, the pages already contain the *"Request trial version"* link, which *indicates that the open source version was not distributed any more*, but the old binaries were still available for download. From the [User's Guide](https://web.archive.org/web/20210510065145/https://www.kitware.eu/wp-content/uploads/2021/02/ActiViz.NET_9.0_Users_Guide.pdf) link from that time it seems that the **"supported"** (priprietary licensed) **version** of ActiViz was already **9.0** at that time. The next saved version **[from 15th April 2021](https://web.archive.org/web/20210415032454/https://www.kitware.eu/activiz/)** does **not contain old downloadable binaries any more**, and since here on binaries can only be obtained by requesting a trial version or buying a license. [User's Guide from this time](https://web.archive.org/web/20210510065145/https://www.kitware.eu/wp-content/uploads/2021/02/ActiViz.NET_9.0_Users_Guide.pdf) still refers to version 9.0. In the section "Getting ActiViz .NET", this user guide also refers to ActiViz 5.8.0 as the last open source version available, and to ActiViz .NET 9.0.1 as the latest supported (proprietary licensed) version.








