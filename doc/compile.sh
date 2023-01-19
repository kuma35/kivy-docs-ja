#!/usr/bin/bash
# venv が動いていてかつ work/kivy なら実行
# veenv が動いてないか、あるいた work/kivy 以外なら
# work/kivy の venv に入る。
# 元々venvの時は(抜けたときは work/kivy の環境にぬける)
# ということは無条件に子shell起動してその中でやるのがよい？
# M-x compile だと必ず新規shell起動するのでこのままでOK
pushd ${HOME}/work/kivy/doc
source ${HOME}/work/kivy/venv/bin/activate
make -e SPHINXOPTS="-D language='ja'" html
deactivate
popd
