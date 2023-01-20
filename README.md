# Vless for Daki.cc

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
* 针对本项目另辟蹊径处理 root 权限，可玩性大大增加
* 部署完成如发现不能上网，请检查域名是否被墙，可使用 Cloudflare CDN 或者 worker 解决。参照文章：https://www.hicairo.com/post/57.html

## 部署:
* 注册 [Daki.cc](https://daki.cc/)
* config.json 的 17 行修改 UUID
* server.js 的 4 行修改自己的 端口， 44 行修改哪吒参数
* 如果不需要哪吒，删除 server.js 的 113-129 行；如果需要，则 44 和 119 行修改哪吒参数
* 部署成功后 velss ws 的路径为: /api，如要修改，可以寻找并替换 server.js 的 90、96、97 行里的 api
* 需要应用的 js
  | 命令 | 是否必须 | 说明 |
  | ------------ | ------ | ------ |
  | <URL>/start | 否 | 部署好后自动运行的，启动 vless |
  | <URL>/nezha | 否 | 运行哪吒 |
  | <URL>/root | 否 | 获取 Root 权限，运行 `root` 进入 ，`exit` 退出 |
  | <URL>/api | 否 | 查看 vless 运行结果 Bad Request 即是 OK |
  | <URL>/status | 否 | 查看后台进程  |

<img width="1658" alt="image" src="https://user-images.githubusercontent.com/62703343/212581034-4f0d9855-f223-43a1-aebe-f03b53aa56c3.png">

<img width="1107" alt="image" src="https://user-images.githubusercontent.com/62703343/212581110-565f57af-17e8-4ff3-85d7-d59d807ae2a5.png">

<img width="1171" alt="image" src="https://user-images.githubusercontent.com/62703343/212581198-58a28b24-3f9a-49fd-81bd-2f298a64478a.png">

<img width="1048" alt="image" src="https://user-images.githubusercontent.com/62703343/212581243-fbcfbe97-b39e-4524-9aff-c963cadbdc30.png">
 
<img width="1674" alt="image" src="https://user-images.githubusercontent.com/62703343/212581474-f50a5c8a-7e4f-49e3-85bd-be37b28e0686.png">  
  
<img width="1672" alt="image" src="https://user-images.githubusercontent.com/62703343/212581572-854b0ca6-49b1-4882-b6c4-c1a3f817aa63.png">
  
<img width="1133" alt="image" src="https://user-images.githubusercontent.com/92626977/212896629-48bce0e1-2fe5-4529-834b-ee334ebd7912.png">
  
<img width="643" alt="image" src="https://user-images.githubusercontent.com/62703343/212582407-ad55c7dd-f9d3-4007-bed6-7cf3828af46a.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/62703343/212587403-00852033-bcb9-4d67-9a4b-4ec0eaa0e3a4.png">

<img width="1407" alt="image" src="https://user-images.githubusercontent.com/92626977/212900912-52d04d7c-7814-4f0a-a37c-f4b7ae9c295b.png">

<img width="1221" alt="image" src="https://user-images.githubusercontent.com/92626977/212903881-8df47fd6-a966-4039-bb30-43a490ed4180.png">

<img width="1272" alt="image" src="https://user-images.githubusercontent.com/92626977/212902007-4cbff075-eb3a-40ab-b654-136b75453f58.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/62703343/212587627-dadb466c-102f-496d-be15-7d34dc6e2ba6.png">
  
<img width="1198" alt="image" src="https://user-images.githubusercontent.com/62703343/212587534-a250a9ce-d1c8-4dca-b10d-5730f84ba26f.png">
  
<img width="1480" alt="image" src="https://user-images.githubusercontent.com/62703343/212587861-14fd3485-b3fa-42d8-9b13-d48c59451a2a.png">
  
<img width="1015" alt="image" src="https://user-images.githubusercontent.com/62703343/212587247-30eddcdc-c2ff-4d52-ab33-4c5636bee6af.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642015-e84e07de-9f07-466d-b446-8cd8431e7220.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642096-dfcce6d1-d6b2-4b55-9b94-995e5561ac44.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642206-6b12179d-b35a-4a1e-b4e1-963b537c7693.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/212642268-d72bdaf0-a9df-4727-b8d4-fc8b360ee507.png">

<img width="766" alt="image" src="https://user-images.githubusercontent.com/92626977/212643085-4a8b625c-e55e-405e-8d63-a9585f5940b1.png">

<img width="1198" alt="image" src="https://user-images.githubusercontent.com/92626977/213434139-252d8226-e29e-4c16-93d8-ec1ca8439a25.png">

## 鸣谢下列作者的文章和项目:
* 大佬 Nike Jeff 的项目文件
* HiFeng' Blog: https://www.hicairo.com/post/57.html  
* wiw' Blog: https://wolan.me/

## 免责声明:
* 本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。
* 使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责。