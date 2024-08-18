#!/bin/bash
read -p "키워드를 입력하세요 (공백으로 키워드 구분): " user_input

read -p "수집을 위한 이미지 수: " img_cnt

IFS=' ' read -r -a keywords <<< "$user_input"

file_path="AutoCrawler/keywords.txt"

> "$file_path"  

for keyword in "${keywords[@]}"; do
    echo "$keyword" >> "$file_path"
done

echo "키워드가 $file_path에 새롭게 저장되었습니다."

cd AutoCrawler

python main.py --limit $img_cnt