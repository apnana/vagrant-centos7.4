Python開発環境の構築
====

VirtualBoxとvagrantを用いてPythonのローカル開発環境を構築する

## 概要
vagrantのboxはchefのbentoを使用しています
  <https://github.com/chef/bento>

chefのCentOS7.4のboxがCUI環境のため
プロビジョンニングでGUI環境をインストールしています

プロビジョニングでsetting.shで実施しており
GUI環境は以下コマンドでインストールしているので
不要な方は削除するなりコメントアウトするなりしてください

    ```
        # for GNOME
        sudo LANG=C yum groupinstall -y "GNOME Desktop"
        sudo systemctl set-default graphical.target
    ```

#バージョン
|:-----------------:|:---------:|
|      CentOS       |   7.4     |  
|      Python       |  3.6.4    |
|       pyenv       |  3.6.4    |
|    virtualbox     |  15.1.0   |

CentOSのログイン画面が表示されるのを確認したら完了 

## 要件
ホストOSにvirtualbox、vagrantがインストール済みであること

## 使用方法
1. 環境との共有フォルタ作成
    ```
        $ cd <リポジトリのクローン先>
        $ mkdir data
    ```
    
2. vagrantの実行
    ```
        $ vagrant up
    ```
