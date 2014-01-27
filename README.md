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
* 5. 有用的链接 [5]
* 6. 更多文档 [6]

======================

#### 1. 什么是RO单机版? ####

RO单机版, 是模拟知名(MMO RPG)网络游戏 仙境传说(Ragnarok Online)的游戏模拟器, 基于Athena程序开发. 经过了一系列的整合与二次开发之后, 可以让中文游戏爱好者能够很快的上手使用. 整个系统包含编译后的应用程序, 免安装的MySQL程序, 数据库内容, 脚本Script等部分组成. 然而包含如此多的应用项目, 该程序的使用却非常简单, 仅仅需要启动一个文件.
在目前的V4版本中, 增加了大量的汉化脚本. 使玩家的游戏体验再次上升, 同时支持了2014年的客户端版本, 扩容了很多指令集和功能, 堪称目前最完美的华语单机版本.

======================

#### 2. 系统必备组件 ####

安装RO单机版, 您需要具备一些必要的系统组件. 首先该系统需要运行于Windows操作系统, 兼容的系统包含Windows98/2000/XP/7, 或者Server2003/2008. 另外为了获取SVN资料, 您还需要准备好 Subversion (SVN) 工具.

##### Windows System #####

* TortoiseGIT ( http://code.google.com/p/tortoisegit/ )
* 建议准备 :
      * WinRAR ( http://www.winrar.com.cn/ ) 
      * NotePad++ ( http://notepad-plus-plus.org/ ) 
      * MySQL ( http://dev.mysql.com/downloads/ )

======================

#### 3. 安装 ####

这里我们省略了上述几个系统必备组件的安装说明. 仅介绍通过 Subversion (SVN) 工具 Check Out 我们的最新版本RO单机版, 并且开始使用的步骤.

##### Windows System #####
* 首先请先安装完成 Subversion (SVN) 工具.
* 在系统硬盘下建立一个[Athena]的目录 (e.g. D:\Athena)
* 右键点击该目录, 在弹出菜单中选择 'SVN Checkout'.
* 然后粘贴 SVN URL 地址到输入框内, URL为: https://github.com/rosfus/cRO
* 当SVN数据全部同步到本地之后, 会建立 branches tags trunk 三个目录. 其中trunk为主要目录.
* 打开trunk目录, 双击批处理文件[一键启动单机服务端MySQL.bat], 此时会弹出4个窗口. 3个RO单机版程序, 1个MySQL管理器. 等待4个程序全部运行即可.
* 请注意由于是服务端程序, 而且使用了特殊的端口 6900 5121 6121, 因此可能会被一些程序判定需要拦截. 此时请选择放行.

##### MySQL #####
* 自行导入MySQL数据的时候, 请至少导入主数据库目录中的3个文件表.
      * sql-files\main.sql
      * sql-files\logs.sql
      * sql-files\item_db2.sql
* 并且导入5个更新文件. 方可完成MySQL数据库创建.
      * sql-files\upgrades\2013-11-15--00-06.sql
      * sql-files\upgrades\2013-11-18--08-23.sql 
      * sql-files\upgrades\2013-12-24--00-15.sql
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

* 完整客户端 [2.58Gb] 下载解压后可直接进行游戏，主体为韩国客户端可独立更新
       * 下载点一:   http://kuai.xunlei.com/d/ODDDDwKRUgC7Lt1S203 [迅雷快传]
       * 下载点二:   http://pan.baidu.com/s/13pRx8 [百度云盘]
       * 下载点三:   http://115.com/lb/5lba3r77cndq [115网盘]
       * 下载点四:   http://url.cn/QwcPy8 [微云]
       * 下载点五:   https://www.dropbox.com/s/mzlovl6h7v5v7ax/FullCleanRO.rar [DropBox]
       * MD5: F1CB83363CDD85FBA618F274F03E642A
* 韩服补丁 [207Mb] For韩国客户端。如果你有韩国客户端可以通过将补丁文件复制进原来RO的目录来运行“开启仙境之旅.exe“来登录游戏
       * 下载点一:   http://kuai.xunlei.com/d/ODDDDwKOUgCvLt1Sd3f [迅雷快传]
       * 下载点二:   http://pan.baidu.com/s/1o6uduOy [百度云盘]
       * 下载点三:   http://115.com/lb/5lbdau99spdl [115网盘]
       * 下载点四:   http://url.cn/TUe30o [微云]
       * 下载点五:   https://www.dropbox.com/s/so2xiyhhpf4wya7/Patch.rar [DropBox]
       * MD5: 12F7D398CAD871D21AFFCC9689F223FB
* 2014版本最新韩服补丁测试 [190Mb] For韩国客户端。“AutoUpdate.exe“登录游戏
       * 下载点一:   http://kuai.xunlei.com/d/ODDDDwK9IgAWE9NSe80 [迅雷快传]
       * 下载点二:   http://pan.baidu.com/s/1jGr4hKy  [百度云盘]
       * 下载点三:   http://115.com/lb/5lbcibcin1rr [115网盘]
       * 下载点四:   http://url.cn/MTPIcP [微云]
       * MD5: F1375EFA4ED35045950BF89EE2138FAE
* 更新客户端:
      * 由于长期使用可能会发生RO单机版与客户端资料不匹配的情况. 此时可能会导致游戏运行碰到各种问题, 这种事我们需要更新的不仅是SVN的服务端资料, 需要更新客户端和客户端补丁. 
      * 运行客户端目录中的[韩服DATA更新.exe]与[韩服RDATA更新.exe], 以更新客户端至最终版本. 此时客户端会恢复成韩国kRO的登陆初始状态. 此时我们再运行[开启仙境之旅.exe], 在一番更新后即可成为完美的单机版客户端了. 
* 如果您还有其他问题:
      * 请将详细内容发送至: http://bbs.rosf.us/forum.php?mod=forumdisplay&fid=46

======================

#### 5. 有用的链接 ####

下面的链接可能对您有所帮助:

* RoSF.us™ Forum: http://bbs.rosf.us
* RoSF.us™ Wiki: http://wiki.rosf.us
* RoSF.us™ rDB: http://db.rosf.us
* SVN: https://github.com/rosfus/cRO/

======================

#### 6. 更多文档 ####

* 如果您还需要更多的文件资料, 请访问下述链接或者加入我们的QQ交流群:
      * 我们的开发论坛: http://bbs.rosf.us/forum.php?mod=forumdisplay&fid=47
      * 建议注册我们的论坛, 请在Github Watch和Fork我们.
      * IRC Channel: irc.rizon.net:6665 #RoSF.us
      * QQ交流群: 330155329

======================

#### 感谢使用我们的程序. ####

======================
