echo "========================="
echo "running test for gcf.sh"

# sample
echo "========================="
echo "2と4を入力する && 2を出力したら成功 || 出力しなかったらエラー"
echo "[START]test ./gcf.sh 2 4"
res=$(./gcf.sh 2 4)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 1 ] || [ "$res" = "2" ]; then
    echo "ERROR!"
    echo "this should be exit status=0 and result=2"
    exit 1
fi

echo "[SUCCESS] test ./gcf.sh 2 4"

echo "========================="
echo "[START] test ./gcf.sh 3"
echo "3を入力する || エラーメッセージが出なかったらエラー"
res=$(./gcf.sh 3)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 0 ]; then
    echo "ERROR! exit status=${exit_status}"
    echo "this should be exit status=1"
    exit 1
fi

echo "[SUCCESS] test ./gcf.sh 3"

echo "========================="
echo "[START] test ./gcf.sh a a"
echo "文字を入力する || エラーメッセージが出なかったらエラー"
res=$(./gcf.sh a a)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 0 ]; then
    echo "ERROR! "
    echo "this should be exit status=1"
    exit 1
fi

echo "[SUCCESS] test ./gcf.sh a a"

# additional
echo "========================="
echo "[START] test ./gcf.sh 1071 1029"
echo "大きい数字でのテスト"
res=$(./gcf.sh 1071 1029)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 1 ] || [ "$res" = "21" ]; then
    echo "ERROR!"
    echo "this should be exit status=0 and result=21"
    exit 1
fi
echo "[SUCCESS] test  ./gcf.sh 1071 1029"

echo "========================="
echo "[START] test ./gcf.sh 1 2 3"
echo "引数の数が多い"
res=$(./gcf.sh 1 2 3)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 0 ]; then
    echo "ERROR! "
    echo "this should be exit status=1"
    exit 1
fi

echo "[SUCCESS] test ./gcf.sh 1 2 3"

echo "========================="
echo "[START] test ./gcf.sh -1 2"
echo "数値がマイナス"
res=$(./gcf.sh -1 2)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 0 ]; then
    echo "ERROR! "
    echo "this should be exit status=1"
    exit 1
fi

echo "[SUCCESS] test ./gcf.sh -1 2"

echo "========================="
echo "[START] test ./gcf.sh 4 2.2"
echo "数値が小数"
res=$(./gcf.sh 4 2.2)
exit_status=$?
echo "exit status=${exit_status} result=${res}"
if [ $exit_status -eq 0 ]; then
    echo "ERROR! "
    echo "this should be exit status=1"
    exit 1
fi

echo "[SUCCESS] test ./gcf.sh 4 2.2"
echo "[SUCCESS] TEST ALL OK!"

