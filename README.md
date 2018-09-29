# 概要

* NW機器のconfigから特定のIPアドレスが設定済みかチェックする
* 多数のアドレスをチェックしたいのでファイルから読み込む
* configは2つまで指定可能

# 使い方

```sh
# ./confcheck.sh 
Usage: ./confcheck.sh {Search File} {Config1} ({Config2})
```

```sh
Search: 10.0.1
==============================
File: cisco_sample.conf
------------------------------
server 10.0.1.1 auth-port 1812 acct-port 1813
ip dhcp excluded-address 10.0.1.1 10.0.1.10
network 10.0.1.0 255.255.255.0
default-router 10.0.1.1
ip address 10.0.1.1 255.255.255.0
nas 10.0.1.1 key 0 cisco123
radius-server host 10.0.1.1 auth-port 1812 acct-port 1813 key cisco123


Search: 10.0.2
==============================
File: cisco_sample.conf
------------------------------
ip dhcp excluded-address 10.0.2.1 10.0.2.10
network 10.0.2.0 255.255.255.0
default-router 10.0.2.1
ip address 10.0.2.1 255.255.255.0

```
