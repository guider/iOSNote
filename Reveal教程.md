### Reveal 教程

* Reveal -->Help --> Open Reveal Library in Finder  拷贝 Reveal.framework 到项目

* 进入BuildSetting -->> Linking --->> RunPath Search Paths --->> Any iOS Simulator SDK 填入 -ObjC

* 进入 Build Phases ----->> Link Binary With Libraries 添加libz.xxx ;

  * 控制台输出Log ：INFO: Reveal Server started 说明集成成功
