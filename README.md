<pre>
RoSF.us Development Team Presents
 ______           ______  ______ 
|  __  |  ______ |  ____||  ____|     _    _   _ __ _ 
| |__/ / |  __  || |____ | |___      | |  | | |  ____|
|  __ _  | |  | ||____  ||  ___|     | |  | | |_|__ _ 
| |  | | | |__| | ____| || |      _  | |__| |  ____| |
|_|  |_| |______||______||_|     |_| |______| |______|

安赫尔开发Athena内部版本v4.
</pre>

### RoSF.us™ R&D Team. 仙境传说MySQL一键单机版服务端. ###
简称: RO单机版

======================

#### 目录指引 ####

* 1. 什么是RO单机版? [1]
* 2. 系统必备组件 [2]
* 3. 安装 [3]
* 4. 故障排除 [4]
* 5. 我们需要帮助 [5]
* 6. 可能有用的内容 [6]

======================

#### 1. 什么是RO单机版? ####

RO单机版, 是模拟知名(MMO RPG)网络游戏 仙境传说(Ragnarok Online)的游戏模拟器, 基于Athena程序开发. 经过了一系列的整合与二次开发之后, 可以让中文游戏爱好者能够很快的上手使用. 整个系统包含编译后的应用程序, 免安装的MySQL程序, 数据库内容, 脚本Script等部分组成. 然而包含如此多的应用项目, 该程序的使用却非常简单, 仅仅需要启动一个文件.
在目前的v4版本中, 增加了大量的汉化脚本. 使玩家的游戏体验再次上升, 同时支持了2014年的客户端版本, 扩容了很多指令集和功能, 堪称目前最完美的华语单机版本.

======================

#### 2. 系统必备组件 ####

安装RO单机版, 您需要具备一些必要的系统组件. 首先该系统需要运行于Windows操作系统, 兼容的系统包含Windows98/2000/XP/7, 或者Server2003/2008. 另外为了获取SVN资料, 您还需要准备好 Subversion (SVN) 工具.

##### Windows System #####

* TortoiseGIT ( http://code.google.com/p/tortoisegit/ )
* 建议准备 :
      * 7-zip ( http://www.7-zip.org/ ) 
      * .NET Framework 4.5.1 ( http://support.microsoft.com/kb/2858725/zh-cn ) 
      * NotePad++ ( http://notepad-plus-plus.org/ ) 
      * MySQL ( http://dev.mysql.com/downloads/ )
	  * Navicat ( http://www.navicat.com/ ) MySQL 的强大管理程序, 你可以在官网下载正式版本, 当然在安赫尔的网盘里有更适用的版本.

======================

#### 3. 安装 ####

这里我们省略了上述几个系统必备组件的安装说明. 仅介绍通过 Subversion (SVN) 工具 Check Out 我们的最新版本RO单机版, 并且开始使用的步骤.

##### Windows System #####
* 首先请先安装完成 Subversion (SVN) 工具.
* 在系统硬盘下建立一个[rosfus]的目录 (e.g. D:\rosfus)
* 右键点击该目录, 在弹出菜单中选择 'SVN Checkout'.
* 然后粘贴 SVN URL 地址到输入框内, URL为: https://github.com/rosfus/cRO.git
* 当SVN数据全部同步到本地之后, 会至少建立 branches trunk 二个目录. 其中trunk为主要更新目录. branches目录中为优化版本的HeidiSQL.
* 打开trunk目录, 双击批处理文件[一键启动单机服务端MySQL.bat], 此时会弹出4个窗口. 1个MySQL管理器, 3个RO单机版服务端程序(略延迟于MySQL启动). 等待4个程序全部运行即可.
* 请注意由于是服务端程序, 而且使用了特殊的端口 6900 5121 6121, 因此可能会被一些程序判定是否拦截. 此时请选择放行.

##### MySQL #####
* 自行导入MySQL数据的时候, 请至少导入主数据库目录中的3个文件表.
      * sql-files\main.sql
      * sql-files\logs.sql
      * sql-files\item_db2.sql
* 并且导入5个更新文件. 方可完成MySQL数据库创建. 
      * sql-files\upgrades\2013-11-15--00-06.sql
      * sql-files\upgrades\2013-11-18--08-23.sql 
      * sql-files\upgrades\2013-12-24--00-15.sql (v3升级到v4 同样适用)
      * sql-files\upgrades\2014-01-04--16-47.sql
      * sql-files\upgrades\2014-01-06--17-22.sql
* 更新至最新版本后, 如果global_reg_value表依然存在, 请选择Drop该表.

##### Files #####
* \branches\
      * \udrive\
           * \bin
           * \data
           * \share
           * \tmp
           * \my.cnf
      * \mysql_start.bat
      * \mysql_stop.bat
* \tags\
      * \...
* \trunk
      * \conf\
           * \battle
                   * \...
           * \import
                   * \...
           * \import-tmpl
                   * \...
           * \...
      * \db\
           * \pre-re
                   * \...
           * \re
                   * \...
           * \...
      * \doc\
           * \...
      * \npc\
           * \..
      * \plugins\
           * \HPMHooking.dll
           * \MobDropQty.dll
           * \npc_loader.dll
      * \sql-files\
           * \...
      * \...
      * \一键启动单机服务端.bat
      * \一键启动单机服务端MySQL.bat
      * \关闭MySQL清理内存.bat

请切记在关闭RO单机版后执行 [关闭MySQL清理内存.bat] 文件!

======================

#### 4. 故障排除 ####

RO单机版需要配合使用的客户端最佳选择为kRO客户端, 配套RoSF.us™ R&D Team.的客户端补丁.

##### 您可以从下述链接中下载到kRO客户端以及客户端补丁 #####

* 完整客户端 [2.59Gb] 下载解压后可直接进行游戏，主体为韩国客户端可独立更新已更新至2014.02.05
       * 下载点一:   http://kuai.xunlei.com/d/ODDDDwIXIAA2gfVS924  [迅雷快传]
       * 下载点二:   http://pan.baidu.com/s/1c0osYdi   [百度云盘]
       * 下载点三:   http://115.com/lb/5lbbzzov7axd    [115网盘]
       * 下载点四:   http://url.cn/PAruDu  [微云]
       * 下载点五:   https://www.dropbox.com/s/mzlovl6h7v5v7ax/FullCleanRO.rar [DropBox]
       * MD5: F1CB83363CDD85FBA618F274F03E642A
* 2014 版本最新韩服补丁 [279.2Mb] for韩国客户端.
       * 下载点一:   http://kuai.xunlei.com/d/ODDDDwKcHwAhd-VSd62    [迅雷快传]
       * 下载点二:   http://pan.baidu.com/s/1hqkNcCO  [百度云盘]
       * 下载点三:   http://115.com/lb/5lbe008um30p   [115网盘]
       * 下载点四:   http://url.cn/TTb0x3   [微云]
       * MD5: AFA67A60661384C32646893522254B73
* 2014版本自动更新器[副节点|包含测试服Sakray与单机版登陆器]
       * http://pan.baidu.com/s/1BxCIi
       * MD5: 5980FE4484D0AB4F9750F2D0E9C2CC10
* 更新客户端:
      * 由于长期使用可能会发生RO单机版与客户端资料不匹配的情况. 此时可能会导致游戏运行碰到各种问题, 这种事我们需要更新的不仅是SVN的服务端资料, 需要更新客户端和客户端补丁. 
      * 运行客户端目录中的[韩服Data更新.exe]与[韩服rData更新.exe], 以更新客户端至最终版本. 此时客户端会恢复成韩国kRO的登陆初始状态. 此时我们再运行[AutoUpdate.exe], 在一番更新后即可成为完美的单机版客户端了. 

本版本使用了Microsoft Visual Studio 2010开发, 部分功能会调用VS10的一些dll组件. 

##### 这些组件通常会跟随Microsoft的部分产品被安装到您的电脑 ##### 

如果您还是不幸被程序提醒缺少dll文件, 也请不用担心. 请按下面的提示操作. 
* 压缩包中的dll目录里存放这3个最常见的DLL文件. 我们将它们复制到 Windows系统的工作目录下即可. 无须注册.
       * 复制我们压缩包内trunk\plugins\msvcr100.dll( msvcr100d.dll msvcr110.dll )
       * 32位Windows的工作目录一般是 C:\Windows\System32\
       * 64位Windows的工作目录一般是 C:\Windows\SysWOW64\
       * 您无需重启计算机, 无需使用regsrv的注册指令, 仅需重启我们的单机服务端即可.

脚本故障排错时可以使用rTools程序, 打开[script-checker.bat]文件, 在cmd运行窗口内拖入你需要检测的脚本.
* 我们经过加密处理的[***.enx]文件无法被rTools检测.
* 源码类错误由另一个rTools在程序启动时进行自检.
       * 我们没有做任何的自动发送操作, 避免被认为是恶意程序. 
       * 因此希望玩家们能够及时反馈有事件ID类的Bug截图. 这将关系到该项目的开发速度.
	   
	  * 如果您还有其他问题:
      * 请将详细内容发送至: http://bbs.rosf.us/forum.php?mod=forumdisplay&fid=46

======================

#### 5. 我们需要帮助 ####

如果您也是一位仙境爱好者的话:

* 您可以立即参与到 RoSF.us™ Forum: http://bbs.rosf.us , 让爱好者群体更大, 让我们更有动力.
* 您也许可以参与到 RoSF.us™ Wiki: http://wiki.rosf.us , 协助我们收集转载一些仙境相关的资讯信息, 您可以方便的编辑或者汉化我们的Wiki内容.
* 您或许能够找出 RoSF.us™ rDB: http://db.rosf.us 数据库中存在的错误.
* 您同样也可以加入Github, 并观察我们的项目 SVN: https://github.com/rosfus/cRO/

上述这些都是我们需要的.

======================

#### 6. 可能有用的内容 ####

有用的链接
#### 下面的链接可能对您有所帮助 ####

* RoSF.us™ Forum: http://bbs.rosf.us
* RoSF.us™ Wiki: http://wiki.rosf.us
* RoSF.us™ rDB: http://db.rosf.us
* SVN: https://github.com/rosfus/cRO/

* 如果您还需要更多的文件资料, 请访问下述链接或者加入我们的QQ交流群:
      * 我们的开发论坛: http://bbs.rosf.us/forum.php?mod=forumdisplay&fid=47
      * 建议注册我们的论坛, 请在Github Watch和Fork我们.
      * IRC Channel: irc.rizon.net:6665 #RoSF.us
      * QQ交流群: 330155329

======================

#### 感谢使用我们的程序. ####

======================
