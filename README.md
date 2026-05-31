<div align="center">

  <h1>✨「📱 Kali NetHunter Termux 一键安装脚本」✨</h1>

> 在Android Termux中快速部署Kali NetHunter渗透测试环境

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Android-brightgreen">
  <img src="https://img.shields.io/badge/Termux-Kali%20NetHunter-blue">
  <img src="https://img.shields.io/badge/License-GPL%203.0-red">
  <img src="https://img.shields.io/badge/Version-1.36-orange">
</p>

[免责声明](#-免责声明) ・
[特性](#-特性) ・
[安装](#-安装)・
[FAQ](#-faq)

</div>


## 📋 免责声明：

+ 本脚本仅用于合法、授权的安全测试和教育目的
+ 禁止用于任何非法攻击行为、仅在合法授权范围内使用
+ 使用者请严格遵守当地法律法规
+ 本脚本作者不承担因滥用导致的任何法律后果
+ 使用者需自行承担所有责任

## ✨ 特性：

- 🚀 **一键安装**：全自动部署，无需手动配置
- 📱 **多架构支持**：自动检测`arm64/armhf`架构
- 🇨🇳 **国内优化**：使用`aria2`多线程下载，下载速度快
- 🔧 **三版本可选**：

  - 完整版 (~2.1GB) - 全功能渗透套件
  - 精简版 (~131MB) - 常用工具集合
  - 纳米版 (~185MB) - 基础工具


## 📦 安装：

1. **安装Termux**
   - 从 [F-Droid](https://f-droid.org/packages/com.termux) 下载
   - 从 [Github](https://github.com/termux/termux-app) 下载

2. **获取脚本**
   ```bash
   curl -LO https://github.com/AliteIz/Kali_NetHunter_Termux/raw/master/install.sh
   ```
   赋予运行权限
   ```bash
   chmod +x ./install.sh
   ```
   运行脚本
   ```bash
   bash ./install.sh
   ```


## FAQ

<details>
  <summary>怎么解决signal 9错误？</summary>

> Android 12 中引入的“幽灵进程杀手”功能会限制子进程  
> 进入“设置” > “关于手机” >连续点击“版本号” 7次，启用“开发者选项” >“禁用子进程限制”开关并将其打开  
> 如果您的设备不支持直接从开发者选项中禁用 “禁用子进程限制” 则必须通过adb连接到设备并运行以下命令：  

```
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
```

</details>


## 🗒️ 错误日志：

脚本提供详细的日志输出

+ 蓝色：信息消息
+ 绿色：成功完成
+ 黄色：警告提示
+ 红色：错误信息

日志格式：[Lyz_ydz_] [时间戳] [级别] 消息内容


## 🤝 贡献指南：

欢迎提交问题和改进建议：

1. Fork 项目
2. 创建功能分支
3. 提交更改
4. 推送到分支
5. 创建 Pull Request


## 📄 许可证：

本项目采用 GPL-3.0 许可证。详见 LICENSE 文件。


## 🙏 致谢：

+ Kali Linux 团队提供优秀的渗透测试平台
+ Termux 开发者为 Android 提供强大的终端环境


## 📞 支持与联系：

如需技术支持或报告问题：  

+ 作者：Lyz_ydz_
+ 技术支持：Deepseek Grok Gemini
+ 项目地址：https://github.com/AliteIz/Kali_NetHunter_Termux
+ 问题反馈：https://github.com/AliteIz/Kali_NetHunter_Termux/issues


---

祝您使用愉快！

最后提醒：技术是一把双刃剑，请用它来保护网络，而不是破坏。遵守法律，尊重他人，做一个有道德的安全研究者。🔒

<p align="center">
  <strong>Happy Hacking! 🐉</strong>
</p>

<p align="center">
  <sub>Made with ❤️ for the security community</sub>
</p>
