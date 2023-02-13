# Argo Xray for Daki.cc

* * *

# 目录

- [项目特点](README.md#项目特点)
- [部署](README.md#部署)
- [鸣谢下列作者的文章和项目](README.md#鸣谢下列作者的文章和项目)
- [免责声明](README.md#免责声明)

* * *

## 项目特点:
* 本项目用于在 [Daki.cc](https://daki.cc/) 免费服务上部署 VLESS
* 根据本平台自行修改的哪吒探针，以能使用其 VNC 达到 ssh 的效果，可以自由选择是否安装
* 使用 CloudFlare 的 Argo 隧道，既支持没有认证的临时隧道，又支持通过 token 申请的固定域名(需要信用卡认证，有免费套餐），直接优选 + 隧道，CDN 不用再做 workers
* 针对本项目另辟蹊径处理 root 权限，可玩性大大增加
* 部署完成如发现不能上网，请检查域名是否被墙，可使用 Cloudflare CDN 或者 worker 解决。参照文章：https://www.hicairo.com/post/57.html
* 前端 js 定时保活，会玩的用户可以根据具体情况修改间隔时间
* 节点信息以 V2rayN / Clash / 小火箭 链接方式输出

## 部署:
* 注册 [Daki.cc](https://daki.cc/)
* entrypoint.sh 的第 4-12 行设置各变量，如果不需要哪吒，删除或注释 6-8 行

* PaaS 平台用到的变量
  | 变量名        | 是否必须 | 默认值 | 备注 |
  | ------------ | ------ | ------ | ------ |
  | UUID         | 否 | de04add9-5c68-8bab-950c-08cd5320df18 | 可在线生成 https://www.zxgj.cn/g/uuid |
  | WSPATH       | 否 | argo | 勿以 / 开头，各协议路径为 `/WSPATH-协议`，如 `/argo-vless`,`/argo-vmess`,`/argo-trojan`,`/argo-shadowsocks` |
  | NEZHA_SERVER | 否 |        | 哪吒探针服务端的 IP 或域名 |
  | NEZHA_PORT   | 否 |        | 哪吒探针服务端的端口 |
  | NEZHA_KEY    | 否 |        | 哪吒探针客户端专用 Key |
  | ARGO_TOKEN   | 否 |        | Argo 的 Token，ARGO_TOKEN 与 ARGO_DOMAIN 必需一起填了才能生效 |
  | ARGO_DOMAIN  | 否 |        | Argo 的域名，ARGO_TOKEN 与 ARGO_DOMAIN 必需一起填了才能生效 |

* 需要应用的 js
  | 命令 | 说明 |
  | ---- |------ |
  | <URL>/list | 查看节点数据 |
  | <URL>/status | 查看后台进程 |
  | <URL>/listen | 查看后台监听端口 |
  | <URL>/root | 开启 root，需要手动，以后入系统输入`root`即可进入 root 模式 |

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


## 鸣谢下列作者的文章和项目:
* 大佬 Nike Jeff 的项目文件
* HiFeng' Blog: https://www.hicairo.com/post/57.html  
* wiw' Blog: https://wolan.me/

## 免责声明:
* 本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。
* 使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责。