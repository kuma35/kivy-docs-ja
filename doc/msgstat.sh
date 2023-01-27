#!/bin/bash
PROJ=${HOME}/work/kivy-docs-ja
DOC_DIR=${PROJ}/doc
PO_DIR=${DOC_DIR}/sources/locale/ja/LC_MESSAGES
pushd ${PO_DIR}
ls -1 *.po examples/*.po gettingstarted/*.po guide/*.po installation/*.po tutorials/*.po | gawk -f ${DOC_DIR}/po_stat.awk $1
date
popd
