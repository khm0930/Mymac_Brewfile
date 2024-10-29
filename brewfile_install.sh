#!/bin/bash

# Homebrew 설치 여부 확인
if ! command -v brew &>/dev/null; then
  echo "Homebrew가 설치되어 있지 않습니다. 설치를 진행합니다..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew가 이미 설치되어 있습니다."
fi

# Homebrew 업데이트
echo "Homebrew 업데이트 중..."
brew update

# Brewfile이 현재 디렉토리에 있는지 확인
if [[ ! -f "Brewfile" ]]; then
  echo "Brewfile이 현재 디렉토리에 없습니다. 파일 위치를 확인하세요."
  exit 1
fi

# Brewfile에 정의된 패키지 설치
echo "Brewfile에 정의된 패키지 설치를 시작합니다..."
brew bundle install --file=Brewfile --verbose

echo "설치가 완료되었습니다!"

