# android make file demo #

## 一些规则 ##

1. 在编译之前需要指定 "LOCAL_PATH"变量用于指定源文件的目录,通常放置在Android.mk的开头，我们会按照下面的方式设置"LOCAL_PATH" 

	LOCAL_PATH := $(call my-dir)

2. Android.mk 可以定义多个模块的编译，每个模块都是以 "include $(CLEAR_VARS)" 开始，以
include $(BUILD_XXX)结束。

## 示例列表 ##
1. helloapk : 生成一个 apk文件
2. helloapkjar : 生成 apk文件依赖第三方的java库
3. helloapkso : 生成 apk文件依赖第三方的.so 文件 


## 使用说明 ##

首先确认示例程序已经放置到android 源码编译环境中，当前使用的测试环境是 android4.1 示例文件放置在 android_src_4.1/package/android_make_demo中
	
	cd android_src
	. build/envsetup.sh
	cd android_src_4.1/package/androidmakedemo
	cd helloapk
	mm 

	
