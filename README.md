<p>
    <a href="https://github.com/zhangmoumou1/TestApiFramework"><img src="http://cdn.zhangyanc.club/cdn/readme/platform_system.svg"></a>
    <a href="https://im.qq.com/index/"><img src="http://cdn.zhangyanc.club/cdn/readme/qq.svg"></a>
    <a href="http://www.zhangyanc.club"><img src="http://cdn.zhangyanc.club/cdn/readme/personblog.svg"></a>
</p>

## 一个静态响应式的导航网站
为什么要做这个网站？经常在公司、家里（有时候还有其他的临时场所）更换电脑，每次同步书签（或者登陆一些导航网站）需要各种登陆，麻烦。

![img.png](http://cdn.zhangyanc.club/cdn/readme/navs.jpg)


### 站点管理
编辑TestMysite/data/webstack.yml文件，来管理网址
```txt
......
......
- taxonomy: 测试平台工具
  icon: far fa-star
  links:
    - title: 测试工具平台
      logo: data_factory.png
      url: http://zhangyanc.club:8088/
      description: 基于Django Bootstrap的定制化测试辅助工具平台（造数工厂）
    - title: Sonic云真机平台
      logo: sonic.png
      url: https://sonic-cloud.cn/
      description: 免费开源的云真机测试平台，用心打造更好的使用体验
......
......
```

### windows部署
在项目根路径CMD下，执行以下命令`.\hugo.exe server`
```bash
PS E:\zyc_git\TestMysite> .\hugo.exe server
Start building sites … 
hugo v0.89.4-AB01BA6E windows/amd64 BuildDate=2021-11-17T08:24:09Z VendorInfo=gohugoio
WARN 2024/05/13 13:49:51 found no layout file for "HTML" for kind "taxonomy": You should create a template file which matches Hugo Layouts Lookup Rules for this combination.
WARN 2024/05/13 13:49:51 found no layout file for "HTML" for kind "taxonomy": You should create a template file which matches Hugo Layouts Lookup Rules for this combination.

                   |  EN
-------------------+-------
  Pages            |    6
  Paginator pages  |    0
  Non-page files   |    0
  Static files     | 1773
  Processed images |    0
  Aliases          |    0
  Sitemaps         |    1
  Cleaned          |    0

Built in 403 ms
Watching for changes in E:\zyc_git\TestMysite\{content,data,themes}
Watching for config changes in E:\zyc_git\TestMysite\config.toml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at //localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```
打开`http://localhost:1313`即可访问网站

### Linux部署
#### 部署服务
如果你知道你的公网Ip或者域名，可以使用下面的方式执行
```bash
# 公网IP
hugo server --baseURL=192.168.1.1 --bind=0.0.0.0 &
# 域名
hugo server --baseURL=zhangyanc.com --bind=0.0.0.0 &
```
打开域名或者公网IP:1313即可访问网站（服务器记得放通1313端口）

#### 停止服务
执行以下命令停止服务
```bash
./stop_server.sh
```