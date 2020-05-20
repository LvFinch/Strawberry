# Strawberry开发记录

**一款基于Flutter开发的效率APP.**

------

## 一 设计流程

### 1.需求分析

### 2.原型设计

### 3.UI设计

### 4.数据库设计

### 5.服务端开发

### 6.双端开发

### 7.应用测试

### 8.上传应用

### 9.维护与更新

## 二 创建项目

### (一) 准备阶段

#### 1.生成项目

#### 2.修改build.gradle文件

```dart
		maven { url 'https://maven.aliyun.com/repository/google' }
		maven { url 'https://maven.aliyun.com/repository/jcenter' }
		maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
```

#### 3.确定项目图标

#### 4.更改双端图标

#### 5.更改双端应用名称

### (二)

## 三

# Strawberry开发心得

## 一 Card

### 实现圆角

```dart
Card(
	shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(20)),//圆角值
    clipBehavior: Clip.antiAlias,
)
```

### 实现模糊

```dart
child: Container(
    height: 500,
    child: Stack(children: <Widget>[
        Image.network(
            "https://akringblog.com/wp-content/uploads/2019/02/1_d-800x500.jpg",
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
        ),
        ClipRect(
            child: BackdropFilter(
                //背景滤镜
                filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                ), //图片模糊过滤，横向竖向都设置5.0
                child: Opacity(
                    opacity: 0.3, //透明度
                    child: Container(
                        decoration: BoxDecoration(
                            color:
                            Colors.grey.shade200), //盒子装饰器，模糊的颜色
                                ))))
    ]),
),
```

