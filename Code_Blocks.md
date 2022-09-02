---
Author: Mu.Geng
Date: 2022-07-07 17:32:10
LastEditTime: 2022-07-08 12:24:39
FilePath: /Code_Blocks.md
message: 
---

# Code_Blocks



CUDA_VISIBLE_DEVICES=2 python main.py

## Linux
https://linux265.com/course/linux-commands.html
df -hl 容量查询
ps -aux 进程查询
nvidia-smi 显卡查询
cat /proc/cpuinfo  cpu 信息
free -m 内存
top 内存 cpu
du -sh ./  容量
echo $[$(cat /sys/class/thermal/thermal_zone0/temp)/1000]°
cat /proc/acpi/thermal_zone/TZS0/temperature
tmux
## Conda

colab python 版本
%%bash
MINICONDA_INSTALLER_SCRIPT=Miniconda3-4.5.4-Linux-x86_64.sh
MINICONDA_PREFIX=/usr/local
wget <https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER_SCRIPT>
chmod +x $MINICONDA_INSTALLER_SCRIPT
./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX

conda install --channel defaults conda python=3.6 --yes
conda update --channel defaults --all --yes
conda init
1. 获取版本号/帮助

获取版本号 `conda -V`

获取帮助 `conda -h`

获取环境相关命令的帮助 `conda env -h`

1. 环境相关

创建环境`conda create -n environment_name`
创建指定python版本下包含某些包的环境 `conda create -n environment_name python=3.7 numpy scipy`
进入环境 `conda activate environment_name`
退出环境 `conda deactivate`
删除环境 `conda remove -n yourname --all`
列出环境 `conda env list / conda info -e`
复制环境 `conda create --name new_env_name --clone old_env_name`
指定目录下生成环境yml文件 `conda env export > 目录/environment.yml`
从yml文件创建环境 `conda env create -n env_name -f environment.yml`
4. 管理包

对包的管理是在某个环境下进行的，先进入特定环境再进行包的操作比较好，不会出现把本该安装在A环境中的包安装在了B环境中这种情况。
安装包 `conda instal package_name`
查看当前环境包列表 `conda list`
查看指定环境包列表 `conda list -n environment_name`
查看conda源中包的信息 `conda search package_name`
更新包 `conda update package_name`
删除包 `conda remove package_name`
清理无用的安装包 `conda clean -p`
清理tar包 `conda clean -t`
清理所有安装包及`cache conda clean -y --all`
更新`anaconda conda update annaconda`

## Doker

- `docker ps -a`  
  コンテナの状況確認

- `docker images`  
  image の確認

- `docker stop <container_name>`  
  コンテナの停止

- `docker rm <container_name> / docker rmi <image_name>`  
  コンテナ/イメージの削除

- `docker exec -it <container_name> bash`  
  コンテナ内に入る(bashは使用するシェルスクリプト)

- `docker-compose up -d (--build)`  
  `docker-compose.yml` で定義したコンテナの起動（イメージビルドあり）  
  `docker build` -> `docker run` と大体同じ

- `docker-compose down`  
  `docker-compose.yml` で定義したコンテナの削除  
  `docker stop` -> `docker rm` と大体同じ
