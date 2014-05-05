#!/bin/sh
# $Id$

EXAMPLE_FILES="main.tex main.pdf sdutils.sty Makefile"
TEMPLATE_FILES="sduthesis.ins sduthesis.dtx sdubib.bst README.md sduthesis.pdf sduthesis.cls sduthesis.cfg"
ALL_FILES="$EXAMPLE_FILES $TEMPLATE_FILES"
ALL_DIRS="data fig ref"

# $1 should be the version number
if [ $# -lt 1 ]; then
    echo "Forget the version number?"
    echo "Usage: ./makedist.sh <version#>"
    exit 2
fi

version=$1
templatedir="sduthesis-$version/"
templatetar="sduthesis-$version.tar.gz"

if [ -d $templatedir ]
then
  echo "clean old files"
  rm -rf $templatedir
fi
mkdir -p $templatedir

echo "Copy dirs...."
# have to cleanup tmp files in data/
find data -maxdepth 1 -type f -not -iname "*.tex" -exec rm {} \;
rm -rf data/auto
tar cp --exclude ".git" $ALL_DIRS | (cd $templatedir ; tar xp)

echo "Copy files...."
cp -f $ALL_FILES $templatedir

echo "Create tarball...."
rm -f $templatetar
tar zcvf $templatetar $templatedir
rm -rf $templatedir

echo "$templatetar is created."

# end of file.
