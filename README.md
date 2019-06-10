# Google App Engine

## 1. SDKの導入

### 1-1. ダウンロード＆インストール

- [公式サイト](<https://cloud.google.com/sdk/?hl=ja#download>)のインストール方法を参考にインストールする。
- 以下はCentOSの例

```
# Update YUM with Cloud SDK repo information:
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

# The indentation for the 2nd line of gpgkey is important.

# Install the Cloud SDK
sudo yum install google-cloud-sdk
```



### 1-2. SDKの初期化

```
gcloud init
```



## 2. スケルトンプロジェクトの導入

### 2-1. githubからダウンロード

```
git clone https://github.com/sonoshou/gae-sinatra-skeleton.git
```



### 2-2. ライブラリインストール

```
bundle install --path vendor/bundle
```



## 3. Google App Engine にデプロイ

```
gcloud app deploy
```



## ローカルで起動

```
bundle exec rackup -o 0.0.0.0 -p 8080
```
