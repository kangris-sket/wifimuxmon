
#!/system/bin/sh
echo Installing Driver...
mkdir -p /data/wmon/
cp -f pack/driver/* /data/wmon/
echo OK
echo Installing Utils...
mkdir -p /data/local/bin/
cp -f ./pack/utils/* /data/local/bin/
echo OK
echo Creating Symlink...
ln  '/data/local/bin/iwmulticall' '/data/local/bin/iwpriv'
ln  '/data/local/bin/iwmulticall' '/data/local/bin/iwconfig'
echo OK
echo Fixing Permissions...
chmod 711 /data/wmon/*
chmod 711 /data/local/bin/*
echo OK
echo Temporary Files Cleaning...
rm -rf pack
rm -f $0
echo OK
echo Installation Completed! To start WiFi monitor mode just type \"wmod monitor\".
 


