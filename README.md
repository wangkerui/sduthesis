==========
What's it?
==========
SduThesis is a LaTeX thesis template class for Shandong University in order to
make it easy to write thesises for either master or doctor.  

SduThesis 是山东大学学位论文 LaTeX 模板，全面支持硕士、有点支持博士，不支持本科。


========
使用方法
========
0. 请确保所有文件的编码都是UTF-8

1. 编译示例文档
   latex main
   bibtex main
   latex main
   latex main
   dvips main.dvi
   ps2pdf main.ps

   说明：也可以使用 pdflatex/dvipdfm(x)/xelatex 生成文档。

2. 编写自己的论文
   参考示例文档：
     main.tex   主控文档
     data/      论文具体内容
     ref/       参考文献目录
     fig/       图片目录
   

========
如何升级
========
1. 下载新模板并解压缩
2. 将sduthesis.cls, sduthesis.cfg, sdubib.bst作相应替换即可。


======================================
Makefile Howto (by edyfox & littleleo)
======================================
1. 获取帮助文档

   make doc   得到 sduthesis.pdf，帮助文档，里面有详细的说明。

2. 生成示例文档

   make thesis

附录： Makefile 命令详解：

Makefile：

    使用方法：

        make [{all|ins|thesis|doc|clean|distclean}] \
            [METHOD={dvips|dvipdfm|xetex|pdftex}] \
            [TEXI2DVI=<tex2dvi>]

    参数说明：

        make all       等于 make ins && make doc && make thesis；
        make ins       生成模板文件
        make doc       生成使用说明书
        make thesis    生成论文
        make clean     表示清除除了 pdf 外的所有中间文件和目标文件；
        make distclean 表示清除包括 pdf 在内的所有中间文件和目标文件。

        METHOD 参数用来指定生成 pdf 的方式，

        METHOD=dvips  表示使用 texi2dvi -> dvips ->ps2pdf 的方式生成 pdf（默认方式）；
        METHOD=dvipdfm 表示使用 texi2dvi -> dvipdfmx 的方式生成 pdf；
        METHOD=xetex 表示使用 xelatex 生成 pdf；
        METHOD=pdftex 表示使用 pdflatex 生成 pdf

        如果缺省，则采用 dvips 方式。

        TEXI2DVI 表示 texi2dvi 实用工具的文件名，该工具的作用是自动重复运行
        latex 若干遍，直至所有交叉引用都正确为止。在有的发行版中该工具的文件名
        不叫 texi2dvi，譬如 CTeX 下的这个工具就叫 texify（CTeX较新版本兼容两种命令）。
        遇到这种情况你可以在命令行通过 TEXI2DVI=texify 命令指定使用其它的 texi2dvi 工具。


=============
Release Notes
=============
1. 2014/05/05 v0.1.0 全面支持硕士论文，博士的格式未做比对


========
扉页预览
========
![](http://wangkerui.com/sducover.jpg)

# $Id: 2014-05-05 13:19:21 Wang Kerui (wkr@wangkerui.com) stole from littleleo $
