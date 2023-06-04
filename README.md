# Flutter MVVM Template

## Overview

MVVM 아키텍처로 구성된 Flutter 템플릿입니다. 템플릿을 통해 프로젝트를 생성할시 [flutter-mvvm-boilerplate](https://github.com/hola726/flutter-mvvm-boilerplate) 바탕으로 개발된 boilerplate를 제공합니다.
## 🛠 Prerequisite

|             NAME             | VERSION |
|:----------------------------:|:-------:|
| [flutter-mvvm-boilerplate](https://github.com/hola726/flutter-mvvm-boilerplate) |  0.2.0  |


## 📟 Template Stack

- Flutter
- Fvm
- Provider
- Hive
- Freezed
- Go_router
- Dio
- Easy_localization
- mason

## 🚀 Getting started
해당 프로젝트는 템플릿을 사용하기 위해 [mason](https://github.com/felangel/mason/tree/master/packages/mason_cli#readme)을 사용하고 있으므로 설치가 필요합니다.

### 메이슨 CLI 설치
다트로 설치
``` shell
$ dart pub global activate mason_cli
```

Homebrew 설치
```shell
$ brew install mason
```
### 브릭 가져오기

브릭을 가져오는 방법
``` shell
$ mason add flutter_mvvm_template --git-url https://github.com/hola726/flutter-mvvm-template -g
```

### 브릭 리스트 보기
```shell
$ mason list -g
```

### 템플릿 생성
```shell
$ mason make flutter_mvvm_template
```

### 템플릿 생성 질문
```shell
> ? What is your project name? (new_project)
> ? What is your project description? (New Flutter Project Description)
```
### flutter 생성
``` shell
$ cd new_project
$ fvm use {FLUTTER_SDK_VERSION}    // flutter sdk version 설정
$ fvm flutter create --org {ORG_NAME} --project-name {PROJECT_NAME} --platforms=android,ios .    // flutter 생성
```
