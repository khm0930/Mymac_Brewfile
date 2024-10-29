#!/bin/bash

# 현재 설치된 패키지로 임시 Brewfile 생성
brew bundle dump --file=TemporaryBrewfile --force

# 새 패키지만 기존 Brewfile에 추가
grep -vxFf Brewfile TemporaryBrewfile >> Brewfile

# 임시 파일 삭제
rm TemporaryBrewfile

echo "Brewfile이 업데이트되었습니다."

