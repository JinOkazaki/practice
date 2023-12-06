#!/bin/bash

echo -e "作成したwsの情報を記載して下さい。\n(例)\nd-0123456789 01234567 ws-1a2b3c4d5 DESKTOP-YUBI5J\nd-0123456789 01234568 ws-dagege543 DESKTOP-IW7FE2\nd-0123456789 01234569 ws-a1d35egda DESKTOP-AW2GWW"

sleep 3

vi /home/okazaki-kensyou/script/txt-list/workspace.txt

echo "今回の依頼は新規作成or再構築？"
echo -e "[1]新規作成\n[2]再構築"

read request

if [ $request -eq 1 ]; then
    echo -e "==========日本語ver==========\n"
    echo -e "お世話になっております。\nworkspaceの新規作成が完了致しました。\n||user name||ws id||computer name||"
    awk 'NR>1 { for (i=2; i<=NF; i++) { printf "|%s", $i } printf "|\n" }' /home/okazaki-kensyou/script/txt-list/workspace.txt
    echo -e "以上、ご確認宜しくお願い致します。\n"
    echo -e "==========英語ver==========\n"
    echo -e "I have completed the creation of a new workspace.\n||user name||ws id||computer name||"
    awk 'NR>1 { for (i=2; i<=NF; i++) { printf "|%s", $i } printf "|\n" }' /home/okazaki-kensyou/script/txt-list/workspace.txt
    echo -e "Please confirm.\n"
elif [ $request -eq 2 ]; then
    echo -e "==========日本語ver==========\n"
    echo -e "お世話になっております。\nworkspaceの再構築が完了致しました。\n||user name||ws id||computer name||"
    awk 'NR>1 { for (i=2; i<=NF; i++) { printf "|%s", $i } printf "|\n" }' /home/okazaki-kensyou/script/txt-list/workspace.txt
    echo -e "以上、ご確認宜しくお願い致します。\n"
    echo -e "==========英語ver==========\n"
    echo -e "I have completed rebuilt the workspace.\n||user name||ws id||computer name||"
    awk 'NR>1 { for (i=2; i<=NF; i++) { printf "|%s", $i } printf "|\n" }' /home/okazaki-kensyou/script/txt-list/workspace.txt
    echo -e "Please confirm.\n"
fi