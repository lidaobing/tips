Eclipse Tips
============

.. contents::

GTK 2.18 下按钮出现异常(无法点击)
---------------------------------

将如下的内容保存为 eclipse3.5.desktop, 放在 $HOME/.local/share/applications, 然后从菜单启动, 注意中间的 GDK_NATIVE_WINDOWS=1

::

        [Desktop Entry]
        Type=Application
        Encoding=UTF-8
        Name=Eclipse 3.5 (local)
        Icon=/path/to/eclipse/plugins/org.eclipse.platform_3.3.201.v200909170800/eclipse48.png
        Exec=env GDK_NATIVE_WINDOWS=1 /path/to/eclipse/eclipse
        Terminal=false
        Categories=Development



切换到 Servers Tab 时报错: UIDecoratorManager class 初始化失败
--------------------------------------------------------------

* 切换到 Java EE perspective
* 关闭 Eclipse
* 启动 Eclipse

参见 https://bugs.eclipse.org/bugs/show_bug.cgi?id=279479, WTP 3.1.2 应该会解决该问题


编辑 JSP 时出现 StackOverFlow 时的解决办法
------------------------------------------

* 启用 Web Tools (WTP) Update Site: http://download.eclipse.org/webtools/updates
* 安装 "WTP Patches for org.eclipse.jst.web_core.feature"

在 64 位 linux 下运行 32 位 eclipse
-----------------------------------

* 安装 ia32-sun-java6-bin
* cd $ECLIPSE_HOME
* ln -s /usr/lib/jvm/ia32-java-6-sun jre

tagdir 报错
-----------

eclipse 不能识别 .jsp 文件中的
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/" %>
必须去掉尾部的 "/", 如下的格式能被识别
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>


插件
----

SVN
~~~

* subversive: http://download.eclipse.org/technology/subversive/0.7/update-site/
* subversive connector: 

  - http://community.polarion.com/projects/subversive/download/eclipse/2.0/galileo-site/ 
  - http://community.polarion.com/projects/subversive/download/eclipse/2.0/ganymede-site/

* subclipse: http://subclipse.tigris.org/update_1.4.x (现在一般用 subversive, 不再使用该插件)

Java
~~~~

* freemarker: http://www.freemarker.org/eclipse/update
* findbugs: http://findbugs.cs.umd.edu/eclipse/
* moreunit: http://moreunit.sourceforge.net/org.moreunit.updatesite/
* Spring IDE: http://springide.org/updatesite
* checkstyle: http://eclipse-cs.sf.net/update/

Google Plugin
~~~~~~~~~~~~~

* http://dl.google.com/eclipse/plugin/3.5

其他
~~~~

* pydev: http://www.fabioz.com/pydev/updates
* vimplugin: http://vimplugin.sf.net/update
* font size buttons: http://scg.unibe.ch/wiki/projects/fontsizebuttons , 把下载的jar包放入 dropins 目录, 重新启动 eclipse 即可使用 (Eclipse 3.5)
* mylyn

  - http://download.eclipse.org/tools/mylyn/update/e3.4
  - extras: http://download.eclipse.org/tools/mylyn/update/extras
  - incubator: http://download.eclipse.org/tools/mylyn/update/incubator

* egit: http://www.jgit.org/updates
* ivyde (ivy): http://www.apache.org/dist/ant/ivyde/updatesite
