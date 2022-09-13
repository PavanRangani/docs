# Jenkins guides

## Provide JDK version
- Install desired JDK version using on Jenkins machine

```
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-18-jdk
cd /usr/lib/jvm
ls -al
```

- Open `Jenkins UI > Manage Jenkins > Global Tools Configuration`
- Click on `JDK Installations`
- Click on `Add JDK` button
- Uncheck `Install Automatically` checkbox as we want to manually specific JDK path.
- Add path and name
- Save

You can now use this version in your Job configurations.
