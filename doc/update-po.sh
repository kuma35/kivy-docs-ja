#!/usr/bin/bash
PROJ=${HOME}/work/kivy-docs-ja
pushd ${PROJ}/doc
source ${PROJ}/venv/bin/activate
# update pot
make gettext
# pot to po
pushd ${PROJ}/doc/sources
sphinx-intl update -p ../build/gettext -l ja
popd
popd
