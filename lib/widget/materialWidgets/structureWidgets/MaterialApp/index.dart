import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String title = "MaterialApp Widget";

const String _Text0 = """   ### **描述**
> $title
- 一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget。
""";

const String _Text1 = """###  
> 属性:
```
navigatorKey（导航键）
home（主页）
routes（路由）
initialRoute（初始路由）
onGenerateRoute（生成路由）
onUnknownRoute（未知路由）
navigatorObservers（导航观察器）
builder（建造者）
title（标题）
onGenerateTitle（生成标题）
color（颜色）
theme（主题）
locale(地点)
localizationsDelegates（本地化委托）
localeResolutionCallback（区域分辨回调）
supportedLocales（支持区域）
debugShowMaterialGrid（调试显示材质网格）
showPerformanceOverlay（显示性能叠加）
checkerboardRasterCacheImages（棋盘格光栅缓存图像）
checkerboardOffscreenLayers（棋盘格层）
showSemanticsDebugger（显示语义调试器）
debugShowCheckedModeBanner（调试显示检查模式横幅）
```
""";

class MaterialAppWidget extends StatefulWidget {
  @override
  createState() => _BasefulWidgetState();
}

class _BasefulWidgetState extends State<MaterialAppWidget> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text(title),
        ),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MarkdownBody(data: _Text0),
              SizedBox(height: 20.0), // 间距
              MarkdownBody(data: _Text1),

              SizedBox(height: 40.0), // 间距
            ],
          ),
        ),
      ),
    );
  }
}
