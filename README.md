# Argo Xray for Daki.cc

* * *

# 目录

- [项目特点](README.md#项目特点)
- [部署](README.md#部署)
- [Argo Json 的获取](README.md#argo-json-的获取)
- [Argo Token 的获取](README.md#argo-token-的获取)
- [鸣谢下列作者的文章和项目](README.md#鸣谢下列作者的文章和项目)
- [免责声明](README.md#免责声明)

* * *

## 项目特点:
* 本项目用于在 [Daki.cc](https://daki.cc/) 免费服务上部署 VLESS
* 解锁 ChatGPT
* 在浏览器查看系统各项信息，方便直观
* 使用 CloudFlare 的 Argo 隧道，使用TLS加密通信，可以将应用程序流量安全地传输到Cloudflare网络，提高了应用程序的安全性和可靠性。此外，Argo Tunnel也可以防止IP泄露和DDoS攻击等网络威胁。
* 集成哪吒探针，可以自由选择是否安装，支持 SSL/TLS 模式，适配 Nezha over Argo 项目: https://github.com/fscarmen2/Argo-Nezha-Service-Container
* 针对本项目另辟蹊径处理 root 权限，可玩性大大增加
* 部署完成如发现不能上网，请检查域名是否被墙，可使用 Cloudflare CDN 或者 worker 解决。参照文章：https://www.hicairo.com/post/57.html
* 前端 js 定时保活，会玩的用户可以根据具体情况修改间隔时间
* 节点信息以 V2rayN / Clash / 小火箭 链接方式输出

## 部署:
* 注册 [Daki.cc](https://daki.cc/)

### PaaS 平台用到的变量

* 在 `server.js` 文件的第1、2行修改查询网页的用户名和密码
  | 变量名        | 是否必须 | 默认值 | 备注 |
  | ------------ | ------ | ------ | ------ |
  | WEB_USERNAME | 是 | admin | 网页的用户名 |
  | WEB_PASSWORD | 是 | password | 网页的密码 |
​
<img width="939" alt="image" src="https://user-images.githubusercontent.com/92626977/221387298-4183a1d6-ae14-45f9-b498-1789a4f7117e.png">

* entrypoint.sh 的第 4-15 行设置各变量，如果不需要哪吒，删除或注释 8-11 行

  | 变量名        | 是否必须 | 默认值 | 备注 |
  | ------------ | ------ | ------ | ------ |
  | UUID         | 否 | de04add9-5c68-8bab-950c-08cd5320df18 | 可在线生成 https://www.zxgj.cn/g/uuid |
  | WSPATH       | 否 | argo | 勿以 / 开头，各协议路径为 `/WSPATH-协议`，如 `/argo-vless`,`/argo-vmess`,`/argo-trojan`,`/argo-shadowsocks` |

  | NEZHA_SERVER | 否 |        | 哪吒探针服务端的 IP 或域名 |
  | NEZHA_PORT   | 否 |        | 哪吒探针服务端的端口 |
  | NEZHA_KEY    | 否 |        | 哪吒探针客户端专用 Key |
  | NEZHA_TLS    | 否 |        | 哪吒探针是否启用 SSL/TLS 加密 ，如不启用请删除，如要启用填"1" |
  | ARGO_AUTH    | 否 |        | Argo 的 Token 或者 json 值，其中 json 可以通过以下网站，在不需绑卡的情况下轻松获取: https://fscarmen.cloudflare.now.cc/ |
  | ARGO_DOMAIN  | 否 |        | Argo 的域名，须与 ARGO_DOMAIN 必需一起填了才能生效 |
  
* 路径（path）
  | 命令 | 说明 |
  | ---- |------ |
  | < URL >/list | 查看节点数据 |
  | < URL >/status | 查看后台进程 |
  | < URL >/listen | 查看后台监听端口 |
  | < URL >/root | 开启 root，需要手动，以后入系统输入`root`即可进入 root 模式 |

<img width="1658" alt="image" src="https://user-images.githubusercontent.com/62703343/212581034-4f0d9855-f223-43a1-aebe-f03b53aa56c3.png">

<img width="1107" alt="image" src="https://user-images.githubusercontent.com/62703343/212581110-565f57af-17e8-4ff3-85d7-d59d807ae2a5.png">

<img width="1171" alt="image" src="https://user-images.githubusercontent.com/62703343/212581198-58a28b24-3f9a-49fd-81bd-2f298a64478a.png">

<img width="1048" alt="image" src="https://user-images.githubusercontent.com/62703343/212581243-fbcfbe97-b39e-4524-9aff-c963cadbdc30.png">
 
<img width="1674" alt="image" src="https://user-images.githubusercontent.com/62703343/212581474-f50a5c8a-7e4f-49e3-85bd-be37b28e0686.png">  
  
<img width="1672" alt="image" src="https://user-images.githubusercontent.com/62703343/212581572-854b0ca6-49b1-4882-b6c4-c1a3f817aa63.png">
  
<img width="1133" alt="image" src="https://user-images.githubusercontent.com/92626977/212896629-48bce0e1-2fe5-4529-834b-ee334ebd7912.png">
  
<img width="643" alt="image" src="https://user-images.githubusercontent.com/62703343/212582407-ad55c7dd-f9d3-4007-bed6-7cf3828af46a.png">

<img width="1362" alt="image" src="https://user-images.githubusercontent.com/92626977/216777815-d2ea6b17-40a9-406a-92f8-2d80973a4838.png">

<img width="1480" alt="image" src="https://user-images.githubusercontent.com/62703343/212587861-14fd3485-b3fa-42d8-9b13-d48c59451a2a.png">
  
<img width="1015" alt="image" src="https://user-images.githubusercontent.com/62703343/212587247-30eddcdc-c2ff-4d52-ab33-4c5636bee6af.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642015-e84e07de-9f07-466d-b446-8cd8431e7220.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642096-dfcce6d1-d6b2-4b55-9b94-995e5561ac44.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642206-6b12179d-b35a-4a1e-b4e1-963b537c7693.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642268-d72bdaf0-a9df-4727-b8d4-fc8b360ee507.png">

<img width="766" alt="image" src="https://user-images.githubusercontent.com/92626977/212643085-4a8b625c-e55e-405e-8d63-a9585f5940b1.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/213434139-252d8226-e29e-4c16-93d8-ec1ca8439a25.png">

<img width="812" alt="image" src="https://user-images.githubusercontent.com/92626977/216778002-a3361735-ccee-44fb-926d-1773dce62e00.png">


## Argo Json 的获取

用户可以通过 Cloudflare Json 生成网轻松获取: https://fscarmen.cloudflare.now.cc

![image](https://user-images.githubusercontent.com/62703343/224388718-6adf22d0-01d3-46a0-8063-bc0a2210795f.png)

如想手动，可以参考，以 Debian 为例，需要用到的命令，[Deron Cheng - CloudFlare Argo Tunnel 试用](https://zhengweidong.com/try-cloudflare-argo-tunnel)


## Argo Token 的获取

详细教程: [群晖套件：Cloudflare Tunnel 内网穿透中文教程 支持DSM6、7](https://imnks.com/5984.html)

<img width="1409" alt="image" src="https://user-images.githubusercontent.com/92626977/218253461-c079cddd-3f4c-4278-a109-95229f1eb299.png">

<img width="1619" alt="image" src="https://user-images.githubusercontent.com/92626977/218253838-aa73b63d-1e8a-430e-b601-0b88730d03b0.png">

<img width="1155" alt="image" src="https://user-images.githubusercontent.com/92626977/218253971-60f11bbf-9de9-4082-9e46-12cd2aad79a1.png">


## 鸣谢下列作者的文章和项目:
* 大佬 Nike Jeff 的项目文件
* HiFeng' Blog: https://www.hicairo.com/post/57.html  
* wiw' Blog: https://wolan.me/

## 免责声明:
* 本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。
* 使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责。