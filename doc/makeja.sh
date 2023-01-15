#!/usr/bin/bash
pushd ${HOME}/work/kivy/doc
make -e SPHINXOPTS="-D language='ja'" html
popd
