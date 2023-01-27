#!/usr/bin/bash
# venv が動いていてかつ work/kivy なら実行
# veenv が動いてないか、あるいた work/kivy 以外なら
# work/kivy の venv に入る。
# 元々venvの時は(抜けたときは work/kivy の環境にぬける)
# ということは無条件に子shell起動してその中でやるのがよい？
# M-x compile だと必ず新規shell起動するのでこのままでOK
# チャイルドプロセスとして動かす前提で pushd popd 廃止
PROJ=${HOME}/work/kivy-docs-ja
cd ${PROJ}/doc
source ${PROJ}/venv/bin/activate
make -e SPHINXOPTS="-D language='ja'" html
exitcode=$?
echo "exitcoe=$?"
deactivate
if [ ${exitcode} -ne 0 ]; then
    notify-send -u critical kivy-docs-ja "doc/Makefile エラー"
    exit ${exitcode}
fi
echo "build/html copy to docs/html..."
cp -rp ${PROJ}/doc/build/html/* ${PROJ}/docs/html
echo "restore htmls..."
${PROJ}/doc/restore-htmls.sh
notify-send -u normal kivy-docs-ja "compile完了。"
