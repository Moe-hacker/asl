PASSWORD=""
PORT=""
rm -rf /etc/resolv.conf && touch /etc/resolv.conf
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
echo "nameserver 114.114.114.114" >> /etc/resolv.conf
groupadd -g 1000 aid_system 2>/dev/null || groupadd -g 1074 aid_system 2>/dev/null
groupadd -g 1001 aid_radio
groupadd -g 1002 aid_bluetooth
groupadd -g 1003 aid_graphics
groupadd -g 1004 aid_input
groupadd -g 1005 aid_audio
groupadd -g 1006 aid_camera
groupadd -g 1007 aid_log
groupadd -g 1008 aid_compass
groupadd -g 1009 aid_mount
groupadd -g 1010 aid_wifi
groupadd -g 1011 aid_adb
groupadd -g 1012 aid_install
groupadd -g 1013 aid_media
groupadd -g 1014 aid_dhcp
groupadd -g 1015 aid_sdcard_rw
groupadd -g 1016 aid_vpn
groupadd -g 1017 aid_keystore
groupadd -g 1018 aid_usb
groupadd -g 1019 aid_drm
groupadd -g 1020 aid_mdnsr
groupadd -g 1021 aid_gps
groupadd -g 1023 aid_media_rw
groupadd -g 1024 aid_mtp
groupadd -g 1026 aid_drmrpc
groupadd -g 1027 aid_nfc
groupadd -g 1028 aid_sdcard_r
groupadd -g 1029 aid_clat
groupadd -g 1030 aid_loop_radio
groupadd -g 1031 aid_media_drm
groupadd -g 1032 aid_package_info
groupadd -g 1033 aid_sdcard_pics
groupadd -g 1034 aid_sdcard_av
groupadd -g 1035 aid_sdcard_all
groupadd -g 1036 aid_logd
groupadd -g 1037 aid_shared_relro
groupadd -g 1038 aid_dbus
groupadd -g 1039 aid_tlsdate
groupadd -g 1040 aid_media_ex
groupadd -g 1041 aid_audioserver
groupadd -g 1042 aid_metrics_coll
groupadd -g 1043 aid_metricsd
groupadd -g 1044 aid_webserv
groupadd -g 1045 aid_debuggerd
groupadd -g 1046 aid_media_codec
groupadd -g 1047 aid_cameraserver
groupadd -g 1048 aid_firewall
groupadd -g 1049 aid_trunks
groupadd -g 1050 aid_nvram
groupadd -g 1051 aid_dns
groupadd -g 1052 aid_dns_tether
groupadd -g 1053 aid_webview_zygote
groupadd -g 1054 aid_vehicle_network
groupadd -g 1055 aid_media_audio
groupadd -g 1056 aid_media_video
groupadd -g 1057 aid_media_image
groupadd -g 1058 aid_tombstoned
groupadd -g 1059 aid_media_obb
groupadd -g 1060 aid_ese
groupadd -g 1061 aid_ota_update
groupadd -g 1062 aid_automotive_evs
groupadd -g 1063 aid_lowpan
groupadd -g 1064 aid_hsm
groupadd -g 1065 aid_reserved_disk
groupadd -g 1066 aid_statsd
groupadd -g 1067 aid_incidentd
groupadd -g 1068 aid_secure_element
groupadd -g 1069 aid_lmkd
groupadd -g 1070 aid_llkd
groupadd -g 1071 aid_iorapd
groupadd -g 1072 aid_gpu_service
groupadd -g 1073 aid_network_stack
groupadd -g 2000 aid_shell
groupadd -g 2001 aid_cache
groupadd -g 2002 aid_diag
groupadd -g 2900 aid_oem_reserved_start
groupadd -g 2999 aid_oem_reserved_end
groupadd -g 3001 aid_net_bt_admin
groupadd -g 3002 aid_net_bt
groupadd -g 3003 aid_inet
groupadd -g 3004 aid_net_raw
groupadd -g 3005 aid_net_admin
groupadd -g 3006 aid_net_bw_stats
groupadd -g 3007 aid_net_bw_acct
groupadd -g 3009 aid_readproc
groupadd -g 3010 aid_wakelock
groupadd -g 3011 aid_uhid
groupadd -g 9997 aid_everybody
groupadd -g 9998 aid_misc
groupadd -g 9999 aid_nobody
groupadd -g 10000 aid_app_start
groupadd -g 19999 aid_app_end
groupadd -g 20000 aid_cache_gid_start
groupadd -g 29999 aid_cache_gid_end
groupadd -g 30000 aid_ext_gid_start
groupadd -g 39999 aid_ext_gid_end
groupadd -g 40000 aid_ext_cache_gid_start
groupadd -g 49999 aid_ext_cache_gid_end
groupadd -g 50000 aid_shared_gid_start
groupadd -g 59999 aid_shared_gid_end
groupadd -g 99000 aid_isolated_start
groupadd -g 99999 aid_isolated_end
groupadd -g 100000 aid_user_offset
usermod -a -G aid_system,aid_radio,aid_bluetooth,aid_graphics,aid_input,aid_audio,aid_camera,aid_log,aid_compass,aid_mount,aid_wifi,aid_adb,aid_install,aid_media,aid_dhcp,aid_sdcard_rw,aid_vpn,aid_keystore,aid_usb,aid_drm,aid_mdnsr,aid_gps,aid_media_rw,aid_mtp,aid_drmrpc,aid_nfc,aid_sdcard_r,aid_clat,aid_loop_radio,aid_media_drm,aid_package_info,aid_sdcard_pics,aid_sdcard_av,aid_sdcard_all,aid_logd,aid_shared_relro,aid_dbus,aid_tlsdate,aid_media_ex,aid_audioserver,aid_metrics_coll,aid_metricsd,aid_webserv,aid_debuggerd,aid_media_codec,aid_cameraserver,aid_firewall,aid_trunks,aid_nvram,aid_dns,aid_dns_tether,aid_webview_zygote,aid_vehicle_network,aid_media_audio,aid_media_video,aid_media_image,aid_tombstoned,aid_media_obb,aid_ese,aid_ota_update,aid_automotive_evs,aid_lowpan,aid_hsm,aid_reserved_disk,aid_statsd,aid_incidentd,aid_secure_element,aid_lmkd,aid_llkd,aid_iorapd,aid_gpu_service,aid_network_stack,aid_shell,aid_cache,aid_diag,aid_oem_reserved_start,aid_oem_reserved_end,aid_net_bt_admin,aid_net_bt,aid_inet,aid_net_raw,aid_net_admin,aid_net_bw_stats,aid_net_bw_acct,aid_readproc,aid_wakelock,aid_uhid,aid_everybody,aid_misc,aid_nobody,aid_app_start,aid_app_end,aid_cache_gid_start,aid_cache_gid_end,aid_ext_gid_start,aid_ext_gid_end,aid_ext_cache_gid_start,aid_ext_cache_gid_end,aid_shared_gid_start,aid_shared_gid_end,aid_isolated_start,aid_isolated_end,aid_user_offset root 2>/dev/null
usermod -g aid_inet _apt 2>/dev/null
usermod -a -G aid_inet,aid_net_raw portage 2>/dev/null
echo "root:${PASSWORD}" | chpasswd
export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y openssh-server
apt autoclean
sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication/PasswordAuthentication/' /etc/ssh/sshd_config
sed -i 's/^UsePAM yes/UsePAM no/' /etc/ssh/sshd_config
sed -i "s/^#Port 22/Port ${PORT}/" /etc/ssh/sshd_config
sed -i "s/\$PORT/${PORT}/g" /etc/ssh/sshd_config
# sed -i '/^#.*%wheel ALL=(ALL) ALL/ s/^#//' /etc/sudoers
