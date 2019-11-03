!w::
    Menu, wxMenu, Add, canvas, wxHandler
    Menu, wxMenu, Add, choose, wxHandler
    Menu, wxMenu, Add, sheet, wxHandler
    Menu, wxMenu, Add, swiper, wxHandler

    Menu, wxMenu, Add
    Menu, wxMenu, Add
    
    Menu, wxMenu, Add, back, wxHandler
    Menu, wxMenu, Add, redirect, wxHandler
    Menu, wxMenu, Add, push, wxHandler
    
    Menu, wxMenu, Add
    Menu, wxMenu, Add
    
    Menu, wxMenu, Add, load, wxHandler
    Menu, wxMenu, Add, model, wxHandler
    Menu, wxMenu, Add, toast, wxHandler
    
    Menu, wxMenu, Add
    Menu, wxMenu, Add

    Menu, wxMenu, Add, getImageInfo, wxHandler
    Menu, wxMenu, Add, 摄像头ccamera, wxHandler
    Menu, wxMenu, Add, 获取用户信息, wxHandler
    Menu, wxMenu, Add, 页面调用组件方法, wxHandler
    Menu, wxMenu, Add, animate, wxHandler

    Menu, wxMenu, Add
    Menu, wxMenu, Add

    Menu, wxMenu, Add, 使用 westore 来进行状态管理, wxHandler

    Menu, wxMenu, Show
    Menu, wxMenu, DeleteAll
return

wxHandler2:
v := A_ThisMenuItem
_send(v)
return

wxHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "back") {
Var =
(
wx.navigateBack({ delta: 2 })
)
}

if (v == "redirect") {
Var =
(
wx.redirectTo({ url: 'test?id=1' })
)
}

if (v == "push") {
Var =
(
wx.navigateTo({url: '/pages/Login/Login'})
)
}

if (v == "load") {
Var =
(
wx.showLoading({ title: '加载中', })

setTimeout(function(){
  wx.hideLoading()
},2000)
)
}

if (v == "model") {
Var =
(
wx.showModal({
    title: '提示',
    content: '这是一个模态弹窗',
    success: function(res) {
        if (res.confirm) {
            console.log('用户点击确定')
        } else if (res.cancel) {
            console.log('用户点击取消')
        }
    }
})
)
}

if (v == "toast") {
Var =
(
wx.showToast({ title: '成功', icon: 'success', duration: 2000 })
)
}

if (v == "canvas") {
Var =
(
<canvas canvas-id='myCanvas' class='main__canvas'></canvas>
---
onLoad: function (options) {
    this.ctx = wx.createCanvasContext('myCanvas')
},

go() {
    this.ctx.setFillStyle('red')
    this.ctx.fillRect(10, 10, 150, 100)
    this.ctx.draw()
    this.ctx.fillRect(50, 50, 150, 100)
    this.ctx.draw(true)
},

)
}

if (v == "choose") {
Var =
(
wx.chooseImage({
  count: 1,
  sizeType: ['original', 'compressed'],
  sourceType: ['album', 'camera'],
  success(res) {
    // tempFilePath可以作为img标签的src属性显示图片
    const tempFilePaths = res.tempFilePaths
  }
})
)
}

if (v == "sheet") {
Var =
(
wx.showActionSheet({
  itemList: ['从手机相册选择', '拍照'],
  success: function (res) {
    console.log(res.tapIndex)
  },
  fail: function (res) {
    console.log(res.errMsg)
  }
})
)
}

if (v == "swiper") {
Var =
(
data: {
   background: ['demo-text-1', 'demo-text-2', 'demo-text-3'],
   indicatorDots: true,
   vertical: false,
   autoplay: false,
   interval: 2000,
   duration: 500
 },
---
 <view class="page-section page-section-spacing swiper">
       <swiper class='banner' indicator-dots="{{indicatorDots}}"
         autoplay="{{autoplay}}" interval="{{interval}}" duration="{{duration}}">
         <block wx:for="{{background}}" wx:key="*this">
           <swiper-item>
             <view class="swiper-item u-full {{item}}"></view>
           </swiper-item>
         </block>
       </swiper>
 </view>
)
}

if (v == "getImageInfo") {
Var =
(
wx.getImageInfo({
    src: this.data.path1,
    success: info => { 
      const { width, height } = info
    }
})
)
}

if (v == "摄像头ccamera") {
Var =
(
https://developers.weixin.qq.com/miniprogram/dev/api/media/camera/CameraContext.html

<view class="page-body-wrapper">
    <camera device-position="back" flash="off" binderror="error" style="width: 100`%; height: 300px;"></camera>
    <view class="btn-area">
      <button type="primary" bindtap="takePhoto">拍照</button>
    </view>
    <view class="btn-area">
      <button type="primary" bindtap="startRecord">开始录像</button>
    </view>
    <view class="btn-area">
      <button type="primary" bindtap="stopRecord">结束录像</button>
    </view>
    <view class="preview-tips">预览</view>
    <image wx:if="{{src}}" mode="widthFix" src="{{src}}"></image>
    <video wx:if="{{videoSrc}}" class="video" src="{{videoSrc}}"></video>
</view>
---
Page({
  onLoad() {
    this.ctx = wx.createCameraContext()
  },
  takePhoto() {
    this.ctx.takePhoto({
      quality: 'high',
      success: (res) => {
        this.setData({
          src: res.tempImagePath
        })
      }
    })
  },
  startRecord() {
    this.ctx.startRecord({
      success: (res) => {
        console.log('startRecord')
      }
    })
  },
  stopRecord() {
    this.ctx.stopRecord({
      success: (res) => {
        this.setData({
          src: res.tempThumbPath,
          videoSrc: res.tempVideoPath
        })
      }
    })
  },
  error(e) {
    console.log(e.detail)
  }
})
)
}

if (v == "获取用户信息") {
Var =
(
//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo')
  },
  onLoad: function () {
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    } else if (this.data.canIUse){
      // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
      // 所以此处加入 callback 以防止这种情况
      app.userInfoReadyCallback = res => {
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    } else {
      // 在没有 open-type=getUserInfo 版本的兼容处理
      wx.getUserInfo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          this.setData({
            userInfo: res.userInfo,
            hasUserInfo: true
          })
        }
      })
    }
  },
  getUserInfo: function(e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  }
})
)
}

if (v == "页面调用组件方法") {
Var =
(
// /page/user/index.wxml
<layer id='layer'></layer>
---
// /page/user/index.js
this.layer = this.selectComponent("#layer");
this.layer.show()
---
// components/layer/index.js
methods: {
show () {
  this.setData({
    show: true
  })
},
hide() {
  this.setData({
    show: false
  })
},
},
)
}

if (v == "animate") {
Var =
(
// app.js

//渐入，渐出实现 
show: function (that, param, duration, opacity) {
  var animation = wx.createAnimation({
    //持续时间800ms
    duration: duration,
    timingFunction: 'ease',
  });
  //var animation = this.animation
  animation.opacity(opacity).step()
  //将param转换为key
  var json = '{"' + param + '":""}'
  json = JSON.parse(json);
  json[param] = animation.export()
  // 原理是在 data 中设置一个 you_name: { actions: [{...}] }
  // console.log(20191103084351, json[param], json, param)
  //设置动画
  that.setData(json)
},

//滑动渐入渐出
slideupshow: function (that, param, px, opacity) {
  var animation = wx.createAnimation({
    duration: 800,
    timingFunction: 'ease',
  });
  animation.translateY(px).opacity(opacity).step()
  //将param转换为key
  var json = '{"' + param + '":""}'
  json = JSON.parse(json);
  json[param] = animation.export()
  //设置动画
  that.setData(json)
},

//向右滑动渐入渐出
sliderightshow: function (that, param, px, opacity) {
  var animation = wx.createAnimation({
    duration: 800,
    timingFunction: 'ease',
  });
  animation.translateX(px).opacity(opacity).step()
  //将param转换为key
  var json = '{"' + param + '":""}'
  json = JSON.parse(json);
  json[param] = animation.export()
  //设置动画
  that.setData(json)
},
---
// index.wxml
<view class='init' animation="{{slide_up1}}"></view>


// index.xmss
.init {
opacity: 0;
}

// index.js
this.app = getApp();
this.app.show(this, 'fuck', 800, 1)
)
}

if (v == "使用 westore 来进行状态管理") {
Var =
(
使用 Tencent/westore 来进行状态管理。

1、 来到 https://github.com/Tencent/westore/tree/master/packages/westore 下载项目并且打开预览一下。

2、 拿到 utils/crete.js 和 utils/diff.js 以及 /store.js，加入到自己的项目。
---
3、 修改 store.js 

export default {
  data: {
    test: 'Hello World',
  },
}
---
4、 使用 wxstore

index.js

import store from '../../store'
import create from '../../utils/create.js'

create(store, {
    // 就算使用全局状态，我们依然要定义局部状态。 
    // 这是微信小程序的限制，只有这样我们才能在 wxml 中使用
    // 这里定义的内容不重要，反正会被全局状态覆盖掉。
    data: {
       test: '',
    },

    async go() {
        // 查看状态中的数据
        console.log(20191103193103, this.store.data)

        // 更新状态
        await this.update({ 
          test: 'fuckyou'
        })

        // 查看更新状态
        console.log(20191103193329, this.store.data, this.data)
      },
})

index.wxml

由于定义在局部，所以可以直接使用即可。 

<text> {{ test }} </text>
)
}


txtit(Var)
return


::wfor::
Var =
(
wx:for="{{items}}" wx:key="*this"
)
code(Var)
return
