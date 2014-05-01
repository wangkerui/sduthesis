==========
What's it?
==========
SduThesis is a LaTeX thesis template class for Shandong University in order to
make it easy to write thesises for either master or doctor.  

SduThesis ��ɽ����ѧѧλ���� LaTeX ģ�壬ȫ��֧��˶ʿ���е�֧�ֲ�ʿ����֧�ֱ��ơ�


========
ʹ�÷���
========
0. ��ȷ�������ļ��ı��붼��UTF-8

1. ����ʾ���ĵ�
   latex main
   bibtex main
   latex main
   latex main
   dvips main.dvi
   ps2pdf main.ps

   ˵����Ҳ����ʹ�� pdflatex/dvipdfm(x)/xelatex �����ĵ���

2. ��д�Լ�������
   �ο�ʾ���ĵ���
     main.tex   �����ĵ�
     data/      ���ľ�������
     ref/       �ο�����Ŀ¼
     fig/       ͼƬĿ¼
   

========
�������
========
1. ������ģ�岢��ѹ��
2. ��sduthesis.cls, sduthesis.cfg, sdubib.bst����Ӧ�滻���ɡ�


======================================
Makefile Howto (by edyfox & littleleo)
======================================
1. ��ȡ�����ĵ�

   make doc   �õ� sduthesis.pdf�������ĵ�����������ϸ��˵����

2. ����ʾ���ĵ�

   make thesis

��¼�� Makefile ������⣺

Makefile��

    ʹ�÷�����

        make [{all|ins|thesis|doc|clean|distclean}] \
            [METHOD={dvips|dvipdfm|xetex|pdftex}] \
            [TEXI2DVI=<tex2dvi>]

    ����˵����

        make all       ���� make ins && make doc && make thesis��
        make ins       ����ģ���ļ�
        make doc       ����ʹ��˵����
        make thesis    ��������
        make clean     ��ʾ������� pdf ��������м��ļ���Ŀ���ļ���
        make distclean ��ʾ������� pdf ���ڵ������м��ļ���Ŀ���ļ���

        METHOD ��������ָ������ pdf �ķ�ʽ��

        METHOD=dvips  ��ʾʹ�� texi2dvi -> dvips ->ps2pdf �ķ�ʽ���� pdf��Ĭ�Ϸ�ʽ����
        METHOD=dvipdfm ��ʾʹ�� texi2dvi -> dvipdfmx �ķ�ʽ���� pdf��
        METHOD=xetex ��ʾʹ�� xelatex ���� pdf��
        METHOD=pdftex ��ʾʹ�� pdflatex ���� pdf

        ���ȱʡ������� dvips ��ʽ��

        TEXI2DVI ��ʾ texi2dvi ʵ�ù��ߵ��ļ������ù��ߵ��������Զ��ظ�����
        latex ���ɱ飬ֱ�����н������ö���ȷΪֹ�����еķ��а��иù��ߵ��ļ���
        ���� texi2dvi��Ʃ�� CTeX �µ�������߾ͽ� texify��CTeX���°汾�������������
        ������������������������ͨ�� TEXI2DVI=texify ����ָ��ʹ�������� texi2dvi ���ߡ�


=============
Release Notes
=============
1. 2014/05/05 v0.1.0 ȫ��֧��˶ʿ���ģ���ʿ�ĸ�ʽδ���ȶ�


========
��ҳԤ��
========
![](http://wangkerui.com/sducover.jpg)

# $Id: 2014-05-05 13:19:21 Wang Kerui (wkr@wangkerui.com) stole from littleleo $
