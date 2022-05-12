# Java Packages

### `Jenkins`

### [Wiki](https://wiki.jenkins.io)&nbsp;|&nbsp;[Book](https://www.jenkins.io/doc/book) Href

### **Got `java.awt.headless` problem ?**

#### `Solution`

#### On Ubuntu (or likely any Debian based Operating System)

```bash
sudo apt-get install ttf-dejavu
sudo apt-get install xvfb
sudo apt-get remove sun-java6*
```

#### On CentOS 6 (or likely any RHEL based Operating System)

```bash
sudo yum install dejavu-sans-fonts
sudo yum install fontconfig
sudo yum install xorg-x11-server-Xvfb
```

### Following this to run it

```bash
wget https://get.jenkins.io/war-stable/2.289.1/jenkins.war && \
bash -c "java -jar jenkins.war --httpPort=22891 -Djava.awt.headless=true > jenkins_2.289.1.log 2>&1 &"
```

**[Click me](https://get.jenkins.io/war-stable/2.289.1/jenkins.war)** to dowload
`jenkins.war`

---

### `YUI Compressor`

For download

```bash
curl -o yuicompressor.jar https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar
```

How to use with `IntelliJ IDEA`

```bash
java -jar yuicompressor.jar --type js --charset utf-8 $FilePath$ -o $FileNameWithoutExtension$.min.js $FileDir$
```
