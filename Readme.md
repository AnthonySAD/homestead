# 介绍

本项目是laravel 开发环境。本环境是基于Virtual Box 和 Vagrant 环境搭建的。提供了开发Laravel 后端和基于Nodejs的项目开发所有基础软件和相关服务器。具体清单如下:
- php7
- composer
- node
- npm
- phpunit
- makefile

### 准备
- 下载安装 VirtualBox 
- 下载安装 Vagrant
以上两个软件下载安装完毕后会自动加入到系统环境变量内，可利用系统自带的CMD和其他你喜爱的命令行工具进行测试。
```bash
vagrant version
```
### 安装
 
```bash
git clone git@git.pengjisoft.com:pengjisoft/pengji-vagrant.git

```

### 初始化
命令运行一下命令
```bash

 cd laravel
 # 如果linux 
 ./init.sh
 # 如果windows
 ./init.bat

```

### 配置项目说明：

初始化完毕后会生成Homestead.yml 文件。这是整个开发环境的配置文件。
- box: 说明box文件的具体路径。如果未定义，系统会自动从	 `vagrantcloud.com` 中的公共仓库中查找对应的名字，从亚马逊服务器下载。
- folders: 配置虚拟机和你的本地系统共享的文件夹的映射关系。`map` 后填写你的本地代码路径， `to` 后写服务器的对应路径。
> 切记，一定要先配置完后再 运行 `vagrant up` 或者 `vagrant reload` 。 否则不生效。

- site: 显然是配置域名和代码路径。你可以在 	`folders` 映射多个文件夹，然后在这里对应映射多个域名，可以达到一个环境支撑多个项目的目的。

> 切记， 环境配置好了之后，一定要用域名访问，否则可能无法识别。域名你可以在本地的	`host` 文件中添加进去。


### 用法

#### 访问
这是通用开发环境，在接近正是环境的情况下进行开发。`laravel/code` 目录下拉入你正在开发的项目，再启动(`vagrant up`) ，就可以在虚拟机和本地同时能访问到在 `hometead.yml` 配置的目录地址， 默认是 `/home/vagrant/code` ,同时这个地址被解析到了 `homestead.test` 这个域名。在本地机器的 `host` 文件中映射了 `homestead.test` 这个域名之后，可以使用浏览器正常访问你的代码。

#### 命令行环境

```bash
ssh vagrant@homestead.test
```
在`gitbash` 或者其他 `ssh` 工具 (比如 `Xshell` 等)运行以上命令可以进入到虚拟环境 。虚拟环境是基于 `Ubuntu` 系统搭建的，可以使用基本的Linux 命令达到测试，目的。同时加强对linux 操作的熟悉程度。结合 `shell` 和 `Makefile` 等工具，达到开发，测试自动化等目的。

> 有了这个环境, 就不需要单独安装其他软件，服务器等，直接开始开发。

#### 多个项目

掌握了配置文件中字段的意义，就可以自如的进行自定义域名和文件夹的解析，可以在自行建立多个仓库，进行多个项目同时开发。