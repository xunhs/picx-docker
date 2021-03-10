> picx是一个蛮好用的基于GitHub API 搭建的图床管理，图片外链使用 jsDelivr 进行 CDN 加速。这里使用docker把picx页面部署到本地


### clone picx
1. clone: `git clone https://github.com/XPoet/picx`
2. `cd picx` 

### docker build
```bash
docker build -t picx https://github.com/xunhs/picx-docker.git
```

### docker run
```bash
docker run -d -p 10021:80 picx
```
