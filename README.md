# Currently supports:
- ubuntu
  - focal
  - jammy
  - noble
  - oracular
- debian
  - bookworm
  - bullseye
  - buster
  - trixie
# Note:
This module is only for armv8+       
# About binary:
Use [ruri](https://github.com/Moe-hacker/ruri) for container runtime, [rurima](https://github.com/Moe-hacker/rurima) for getting container rootfs.        
file and curl command are fake, they actually calls file-static and curl-static with corrected args.        
Thanks: https://github.com/stunnel/static-curl for curl static binary.      
# Note:
Only tested ubuntu oracular, if there's any bugs, please report.         
# WARNING：
Please change ssh password, exposing the ssh port is always a high-risk action!!!!!!!!         
请修改默认密码，暴露非密钥认证而是密码认证的ssh端口无论何时都是高危行为！       
# Powered by ruri      
# Thanks:    
Github@Lin1328 Coolapk@望月古川 for module framework.      
Github@stunnel for curl static binary.      
# Contributing:
Welcome to contribute a setup.sh for other OS.           
# License:
希腊奶...... 