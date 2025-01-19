---
share: true
date: 
tags:
  - note
  - nsk
project: 
s21-authors:
  - "[[mtasia]]"
branch: "[[C++]]"
source: https://held-stingray-d76.notion.site/CLion-CmakeLists-txt-8fc19a4bc446493c8198f6e41e4fb64d
title: Как дебажить в CLion с помощью CmakeLists.txt
---

## Как дебажить в CLion с помощью CmakeLists.txt

> [!info] 
> По вопросам: Александр Лобанов TG, INS, VK: @anklav24 Rocket-chat: @mtasia 

### Более подробная документация
[Quick CMake tutorial \| CLion Documentation](https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html#link-libs)
[CMakeLists.txt \| CLion Documentation](https://www.jetbrains.com/help/clion/cmakelists-txt-file.html#cmakelist-template)
[Code coverage \| CLion Documentation](https://www.jetbrains.com/help/clion/code-coverage-clion.html#troubleshoot-and-limits)

### Установка библиотеки для тестирования `check`
Не забудь проверить какая у тебя версия Check иначе все может падать.
==Ubuntu Server 20.04 LTS==
```shell
sudo apt purge check  # Remove old
cd /tmp
wget <https://github.com/libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz>
tar -zxvf check-0.15.2.tar.gz
cd check-0.15.2
sudo apt-get install libtool
sudo apt install pkg-config
autoreconf --install
./configure
make
make check
sudo make install
sudo ldconfig
```

### Содержимое файла CmakeLists.txt
```
cmake_minimum_required(VERSION 3.16)
project(C5_s21_decimal C)

set(CMAKE_C_STANDARD 11)

add_library(decimal_library STATIC src/s21_decimal.c)  # create libdecimal_library.a
target_link_libraries(decimal_library m) # m - math library

add_executable(run_tests src/test.c )
target_link_libraries(run_tests check decimal_library)
```

### Возможные проблемы с библиотекой `check`
Для библиотеки check надо добавить вот эту строку чтобы можно было дебажить кейсы
```c
int main() {
    Suite *add_m = add_suite();
    SRunner* sr = srunner_create(add_m);
    srunner_set_fork_status(sr, CK_NOFORK);  // <--------
		return 0;
}
```