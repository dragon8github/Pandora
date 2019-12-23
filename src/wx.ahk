!w::
    Menu, wxMenu, Add, this.setData, wxHandler
    Menu, wxMenu, Add, globalData, wxHandler
    Menu, wxMenu, Add, dom, wxHandler
    Menu, wxMenu, Add, event.currentTarget.dataset, wxHandler
    Menu, wxMenu, Add, wx:if / wx:elif / wx:else, wxHandler
    Menu, wxMenu, Add, setStorageSync, wxHandler
    Menu, wxMenu, Add, emit事件推送：this.triggerEvent, wxHandler
    Menu, wxMenu, Add, catchtap:click 防止冒泡, wxHandler
    Menu, wxMenu, Add, getSystemInfoSync, wxHandler

    Menu, wxMenu, Add
    Menu, wxMenu, Add

    Menu, wxMenu, Add, canvas, wxHandler
    Menu, wxMenu, Add, choose, wxHandler
    Menu, wxMenu, Add, sheet, wxHandler
    Menu, wxMenu, Add, swiper, wxHandler
    Menu, wxMenu, Add, 获取来路from, wxHandler
    Menu, wxMenu, Add, animate, wxHandler

    Menu, wxMenu, Add
    Menu, wxMenu, Add

    Menu, wxMenu, Add, 摄像头ccamera, wxHandler
    Menu, wxMenu, Add, previewImage预览图片, wxHandler
    Menu, wxMenu, Add, 获取图片信息：getImageInfo/getFileInfo, wxHandler
    Menu, wxMenu, Add, 上传图片, wxHandler
    Menu, wxMenu, Add, 压缩图片策略, wxHandler
    Menu, wxMenu, Add, 保存相册 + 授权相册, wxHandler
    Menu, wxMenu, Add, canvas: 实例化 + 清空画布 + 绘制图片 + 绘制文本 + 绘制圆 + 渲染, wxHandler
    Menu, wxMenu, Add, 合成图片 = 下载图片 + 拍照 + 获取图片信息 + canvas合成, wxHandler

    Menu, wxMenu, Add
    Menu, wxMenu, Add


    Menu, wxMenu, Add, 获取地理信息, wxHandler
    Menu, wxMenu, Add, 获取地理信息2, wxHandler
    Menu, wxMenu, Add, 腾讯地图解析地理位置, wxHandler
    Menu, wxMenu, Add, 百度地图解析地理位置, wxHandler
    Menu, wxMenu, Add, 二次授权地理位置, wxHandler

    Menu, wxMenu, Add
    Menu, wxMenu, Add

    Menu, wxMenu, Add, pm解决方案, wxHandler
    Menu, wxMenu, Add, 获取用户信息, wxHandler
    Menu, wxMenu, Add, request.js, wxHandler
    
    Menu, wxMenu, Add, rpx, wxHandler
    Menu, wxMenu, Add, 微信支付, wxHandler
    Menu, wxMenu, Add, 自定义一个组件, wxHandler
    Menu, wxMenu, Add, 页面调用组件方法, wxHandler

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

if (v == "压缩图片策略") {
Var =
(
async go() {
  wx.showLoading({ title: '正在上传...', })

  let file = this.data.previewPic
  const compressImage = app.pm(wx.compressImage)
  const getFileInfo = app.pm(wx.getFileInfo)

  const info = await getFileInfo({ filePath: file })
  const kb = info.size / 1024
  const distance = kb - 1024

  if (distance > 0) {
    const res = await compressImage({ src: this.data.previewPic, quality: (1 - distance / kb) * 100 })
    file = res.tempFilePath
  }

  const _UPLOAD_FILE = await UPLOAD_FILE(file)
  const _POST_ALBUM = await POST_ALBUM({ imageUrl: _UPLOAD_FILE.url })
  wx.showToast({ title: '图片已上传' })
},
)
}

if (v == "二次授权地理位置") {
Var =
(
async _getLocation() {
  const getLocation = app.pm(wx.getLocation)
  const getSetting = app.pm(wx.getSetting)
  const openSetting = app.pm(wx.openSetting)
  const showModal = app.pm(wx.showModal)

  const { authSetting } = await getSetting()

  // 如果为false，说明“拒绝”授权
  if (authSetting['scope.userLocation'] === false) {

    const { cancel, confirm } = await showModal({ title: '请求授权当前位置', content: '需要获取您的地理位置,确认授权?' })

    if (confirm) {
      // 打开设置面板，等待用户设置
      const { authSetting } = await openSetting()
      // 用户选择完毕，查看选择是否已选？
      if (authSetting['scope.userLocation']) {
        // 已选，发起API
        return getLocation()
      } else {
        wx.showToast({ title: '请授权地理信息才能使用此功能', icon: 'none' })
        throw new Error('getLocation:fail auth deny')
      }
    } else {
      wx.showToast({ title: '请授权地理信息才能使用此功能', icon: 'none' })
      throw new Error('getLocation:fail auth deny')
    }
  } else {
    return getLocation()
  }
},

const { latitude, longitude } = await this._getLocation()
)
}

if (v == "自定义一个组件") {
_send("wx::cmp", true, true)
return
}

if (v == "获取来路from") {
Var =
(
// 获取当前路由
this.router = getCurrentPages();

// 获取来路
const from = this.router.length >= 2 ? this.router[this.router.length - 2].route : ''

wx.redirectTo({ url: '/' + from, })
)
}

if (v == "百度地图解析地理位置") {
Var =
(
const getLocation = app.pm(wx.getLocation)
const { latitude, longitude } = await getLocation({ type: 'wgs84' })
console.log('获取经纬度：', latitude, longitude)
wx.showLoading({ title: '解析地理信息...' })

const { data } = await request({
    url: "https://api.map.baidu.com/reverse_geocoding/v3/",
    data: { ak: "7b3SurhIYH6m8C3l0aAM7NAFW0aHEbLT", output: "json", location: latitude + "," + longitude }
})
)
}

if (v == "腾讯地图解析地理位置") {
Var =
(
/*
1、 前往 https://lbs.qq.com/dev/console/key/manage 申请key，用QQ或微信登陆即可。
2、 只需要勾选 WebSericeAPI 和 微信小程序 AppId 
*/

const request = app.pm(wx.request)
const getLocation = app.pm(wx.getLocation)

const QQMapWX = require('../../libs/qqmap-wx-jssdk.min.js')
const qqmapsdk = new QQMapWX({ key: 'EXQBZ-LM4CP-MJ2DM-L7OPT-WN3LE-X5FUR' })
const reverseGeocoder = app.pm(qqmapsdk.reverseGeocoder.bind(qqmapsdk))


async onLoad() {
    const { latitude, longitude } = await getLocation({ type: 'wgs84' })
    console.log('获取经纬度：', latitude, longitude)

    const res = await reverseGeocoder({ location: { latitude: latitude, longitude: longitude } })
    console.log(20191216121435, res)
},
)
}

if (v == "catchtap:click 防止冒泡") {
Var =
(
// 原生是这样 catchtap=
catchtap:click
)
}

if (v == "pm解决方案") {
_send("pm", true, true)
return
}

if (v == "this.setData") {
_send("wx:set", true, true)
return
}

if (v == "emit事件推送：this.triggerEvent") {
_send("wx:emit", true, true)
return
}

if (v == "获取地理信息2") {
Var =
(
chooseAddress(latitude = '113.761868', longitude = '23.025179') {
  wx.chooseLocation({
    latitude: latitude,
    longitude: longitude,
    success: res => {
      // {errMsg: "chooseLocation:ok", name: "东莞市人民政府", address: "广东省东莞市鸿福路99号", latitude: 23.02067, longitude: 113.75179}
      console.log(20191120221540, res)
    },
    fail: err => {
      // {errMsg: "chooseLocation:fail cancel"}
      console.log(err);
    }
  });
},
---
async onLoad(e) {
  const chooseLocation = app.pm(wx.chooseLocation)
  const address = await chooseLocation()
  console.log(20191214092623, address)
}
)
}

if (v == "微信支付") {
Var =
(
wx.requestPayment({
  'timeStamp': payParam.timeStamp,
  'nonceStr': payParam.nonceStr,
  'package': payParam.packageValue,
  'signType': payParam.signType,
  'paySign': payParam.paySign,
  'success': res => {console.log("支付成功") },
  'fail': res => {console.log("支付失败") },
  'complete': res => {console.log("支付结束") }
});
---
// 获取支付参数
const _BUYVIP = await BUYVIP({ "amount": "99", "type": 1 })
// fixbug： package
_BUYVIP.package = _BUYVIP.packageValue

const requestPayment = app.pm(wx.requestPayment)
// 调用微信支付
const v = await requestPayment(_BUYVIP)
)
}

if (v == "canvas: 实例化 + 清空画布 + 绘制图片 + 绘制文本 + 绘制圆 + 渲染") {
Var =
(
<canvas canvas-id='myCanvas' class='gen-pyq' ></canvas>

this.canvas = wx.createCanvasContext('myCanvas')

// 清空画布
this.clearCanvas()


const downloadFile = app.pm(wx.downloadFile)
// 二维码：http://120.24.219.180:8085/wx/storage/fetch/f13pua74a1r3u164khw8.png
const { tempFilePath } = await downloadFile({ url: 'http://120.24.219.180:8085/wx/storage/fetch/f13pua74a1r3u164khw8.png' })
// 重新渲染图片
this.canvas2.drawImage(tempFilePath, 0, 0, screenWidth, rpx(1067))


// 一旦剪切(clip)了某个区域，则所有之后的绘图都会被限制在被剪切的区域内 这也是我们要save上下文的原因
this.canvas.save()
// 绘制二维码
const x = rpx(356), y = rpx(829), w = rpx(222), h = rpx(222)
// 切割圆固定公式
this.canvas.arc(w / 2 + x, h / 2 + y, w / 2, 0, Math.PI * 2, false)
// 切割
this.canvas.clip()
// 绘图
this.canvas.drawImage(tempFilePath, x, y, w, h)
// save + restore = 恢复上下文
this.canvas.restore()



// 书写文本
this.canvas.setFillStyle('#222222')
this.canvas.setFontSize(rpx(30))
this.canvas.fillText('来自小程序：微设计', rpx(38), rpx(986))


// 画布准备
this.canvas.draw(true, async _ => {
  wx.hideLoading()
})
)
}

if (v == "保存相册 + 授权相册") {
Var =
(
wx.saveImageToPhotosAlbum({
  filePath: this.data.previewPic,
  success(res) {
    wx.showToast({ title: '保存成功', icon: 'success', duration: 2000 })
  },
  fail(err) {
    authorizedAlbum(err)
  }
})
---

const authorizedAlbum = (err) => {
  if (err.errMsg === "saveImageToPhotosAlbum:fail:auth denied" || err.errMsg === "saveImageToPhotosAlbum:fail auth deny") {
    // 这边微信做过调整，必须要在按钮中触发，因此需要在弹框回调中进行调用
    wx.showModal({
      title: '提示',
      content: '需要您授权保存相册',
      showCancel: false,
      success: modalSuccess => {
        wx.openSetting({
          success(settingdata) {
            console.log("settingdata", settingdata)
            if (settingdata.authSetting['scope.writePhotosAlbum']) {
              wx.showModal({
                title: '提示',
                content: '获取权限成功,再次点击图片即可保存',
                showCancel: false,
              })
            } else {
              wx.showModal({
                title: '提示',
                content: '获取权限失败，将无法保存到相册哦~',
                showCancel: false,
              })
            }
          },
          fail(failData) {
            console.log("failData", failData)
          },
          complete(finishData) {
            console.log("finishData", finishData)
          }
        })
      }
    })
  }
}
)
}

if (v == "rpx") {
_send("rpx", true, true)
return
}

if (v == "setStorageSync") {
Var =
(
wx.setStorageSync('key', 'value')

var value = wx.getStorageSync('key')

wx.removeStorageSync('key')

wx.clearStorageSync()


const res = wx.getStorageInfoSync()
console.log(res.keys)
console.log(res.currentSize)
console.log(res.limitSize)
)
}

if (v == "上传图片") {
_send("wx.upload", true, true)
return
}

if (v == "wx:if / wx:elif / wx:else") {
Var =
(
wx:if / wx:elif / wx:else
)
}

if (v == "request.js") {
_send("wx.api", true, true)
return
}

if (v == "globalData") {
Var =
(
var app = getApp();
app.globalData.curTemplate = path
)
}

if (v == "dom") {
Var =
(
const query = wx.createSelectorQuery();

query.select('.main__bg').boundingClientRect(res => {
	 const { width, height } = res
	 this.canvas.drawImage(tmpImg, 0, 0, width, height)
}).exec();
)
}

if (v == "getSystemInfoSync") {
Var =
(
const sys = wx.getSystemInfoSync()

const width = sys.screenWidth
const height = sys.screenHeight
)
}

if (v == "previewImage预览图片") {
Var =
(
wx.previewImage({ urls: [tempFilePath], })
)
}

if (v == "event.currentTarget.dataset") {
_send("wx.event", true, true)
return
}

if (v == "合成图片 = 下载图片 + 拍照 + 获取图片信息 + canvas合成") {
Var =
(
onLoad: function (options) {
  this.app = getApp()
  this.canvas = wx.createCanvasContext('myCanvas')
  this.ctx = wx.createCameraContext()
},
canvas2img() {
    const canvasToTempFilePath = this.app.pm(wx.canvasToTempFilePath)

    this.canvas.draw(true, async _ => {
        wx.hideLoading()
        // 画布准备
        const { tempFilePath: pic } = await canvasToTempFilePath({ x: 0, y: 0, canvasId: 'myCanvas' })

        this.app.globalData.previewPic = pic
        this.setData({ pic: pic })
        wx.navigateTo({ url: '/pages/preview/index' })

        // 清空画布
        setTimeout(() => {
            this.canvas.clearRect(0, 0, sys.screenWidth, sys.screenHeight)
            this.canvas.draw()
            this.ctx = wx.createCameraContext()
        }, 1000);
    })
},
async go() {
    wx.showLoading({ title: '图片处理中...', })

    try {
        const query = wx.createSelectorQuery();
        const downloadFile = this.app.pm(wx.downloadFile)
        const getImageInfo = this.app.pm(wx.getImageInfo)
        const takePhoto = this.app.pm(this.ctx.takePhoto.bind(this.ctx))

        // 如果是照片模式：就是照相 + 模板的合成
        if (this.data.mode === 0) {
            // 开始拍照
            const { tempImagePath } = await takePhoto({ quality: 'high' })
          
            // 将拍照的加入到全局
            this.app.globalData.curPic = tempImagePath
            
            // 获取照片宽高
            // const { width, height } = await getImageInfo({ src: tempImagePath })

            // 将照片绘制到canvas
            this.canvas.drawImage(tempImagePath, 0, 0, sys.screenWidth, sys.screenHeight)

        // 如果是合成模式：就是模板 + 素材的合成
        } else {
            // 下载当前素材
            const { tempFilePath } = await downloadFile({ url: this.data.curImg })
            // 获取素材的宽高信息
            query.select('.main__bg').boundingClientRect(res => {
                const { width, height } = res
                this.canvas.drawImage(tempFilePath, 0, 0, width, height)
            }).exec();
        }

        // 下载当前模板
        const { tempFilePath: tmpImg } = await downloadFile({ url: this.data.tmpImg })

        // 获取画布的宽高信息
        query.select('.main__canvas').boundingClientRect(res => {
            const { width, height } = res

          console.log(20191221115017, width, height)
            
            // 绘制画布（直接全屏即可）
            this.canvas.drawImage(tmpImg, 0, 0, width, height)

            // 正式绘制
            this.canvas2img()
        }).exec();
    } catch (e) {
        wx.hideLoading()
        console.error(e)
        wx.showToast({ title: '合成异常：' + e.errMsg, icon: 'none', duration: 2000 })
    }
},
---
/* 
认知：
1、 我不管你的画布和场景是多大，但 『拍照组件 <camera></camera>』 必须保持屏幕比率，譬如宽度是750rpx，那么高度就是 1334rpx 超出的想办法 overflow:hidden即可，否则会出现bug。
 */
)
}

if (v == "将回调地狱转换为 Promise 形式") {
_send("pm", true, true)
return
}

if (v == "获取地理信息") {
Var =
(
// app.json
"permission":{
  "scope.userLocation": {
    "desc": "你的位置信息将用于小程序位置接口的效果展示" 
  }
},
---
onLoad: function (options) {
    this.getLocationDetail();
  },

  getLocationDetail () {
    wx.getLocation({
      type: 'wgs84',
      success: res => {
        const latitude = res.latitude
        const longitude = res.longitude
        console.log("lat:" + latitude + ",lon:" + longitude)
        this.getCity(latitude, longitude);
      },
      fail: function (res) { },
      complete: function (res) { },
    })
  },
  getCity (latitude, longitude) {
    wx.request({
        url: "http://api.map.baidu.com/reverse_geocoding/v3/",
        data: {
          ak: "7b3SurhIYH6m8C3l0aAM7NAFW0aHEbLT",
          output: "json",
          location: latitude + "," + longitude
        },
      success: res => {
        console.log(res)
      },
    })
  },
---
// app.pm封装版本 （推荐）
const request = app.pm(wx.request)
  const getLocation = app.pm(wx.getLocation)
  
  const { latitude, longitude } = await getLocation({ type: 'wgs84' })
  console.log('获取经纬度：', latitude, longitude)

  const { data } = await request({
    url: "http://api.map.baidu.com/reverse_geocoding/v3/",
    data: {
      ak: "7b3SurhIYH6m8C3l0aAM7NAFW0aHEbLT",
      output: "json",
      location: latitude + "," + longitude
    }
  })
  console.log('获取百度地图解析信息', data)
  const { formatted_address, business } = data.result
  console.log('获取详细地理位置：', formatted_address, business)
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

if (v == "获取图片信息：getImageInfo/getFileInfo") {
Var =
(
const getImageInfo = app.pm(wx.getImageInfo)
const info = await getImageInfo({ src: this.data.previewPic })

const getFileInfo = app.pm(wx.getFileInfo)
const info = await getFileInfo({ filePath: this.data.previewPic })
console.log(20191215182657, info.size / 1024 + 'kb')
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
    } else if (this.data.canIUse) {
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
  getUserInfo: function (e) {
    console.log(e)
    
    // 放入全局
    app.globalData.userInfo = e.detail.userInfo
    
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  }
})

---
<!-- 必须是这些属性才可以 -->
<button class='btn' open-type="getUserInfo" bindgetuserinfo="getUserInfo">
  微信用户一键登录
</button>

<block wx:if="{{hasUserInfo && canIUse}}">
    <image bindtap="bindViewTap" class="userinfo-avatar" src="{{userInfo.avatarUrl}}" mode="cover"></image>
    <text class="userinfo-nickname">{{userInfo.nickName}}</text>
</block>
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
::wxfor::
Var =
(
wx:for="{{items}}" wx:key="*this"
)
code(Var)
return


::wxd::
::wx.data::
::wx.event::
::wxe::
Var =
(
const index = event.currentTarget.dataset.index
const id = event.currentTarget.dataset.id
const item = this.data.items.find(_ => _.id === id)
this.setData({
  active: +index
})
)
code(Var)
return

::wx.go::
::wx.push::
Var =
(
wx.redirectTo({ url: '/pages/camera/index' })
)
code(Var)
return

::wxs::
::wx.s::
::wx.data::
Var =
(
this.setData({
  tmpImg: this.globalData.curTemplate,
  mode: 0
})
)
code(Var)
return


:?:wx.request::
:?:wx.req::
:?:wx.api::
:?:wx:api::
:?:wx.request.js::
Var =
(
const app = getApp()
const API_URL = 'http://120.24.219.180:8085/'

// 请求公共头部
const headers = () => ({
  'YJ-MALL-TOKEN': app.globalData.token
})

// 完成时触发的钩子
const completeHandler = function (res) {
  // 上下文注入的内容
  const { url, data, method } = this
  // 打印数据和请求参数
  console.log(res.data, { [method]: url, params: data })
  // 关闭 loading
  wx.hideLoading();
}

// 上传相册
export const POST_ALBUM = data => POST('wx/album', data)

// 上传图片
export const UPLOAD_FILE = path => UPLOAD('wx/storage/upload', path)

// 获取 token
export const LOGIN_BY_WEIXIN = data => POST('wx/auth/login_by_weixin', data)

// 解析手机号码
export const BIND_PHONE = data => POST('wx/auth/bindPhone', data)

// 获取相册列表
export const ALBUM = params => GET('wx/album/list', params)

// 获取素材类别
export const MATERIAL_CATEGORY = () => GET('wx/material/category')

// 获取素材列表
export const MATERIAL_LIST = categoryId => GET('wx/material/list', { categoryId })

// 获取模板类别
export const TEMPLATE_CATEGORY = () => GET('wx/template/category')

// 获取模板列表
export const TEMPLATE_LIST = categoryId => GET('wx/template/list', { categoryId })

// 获取价格列表
export const PRICE = () => GET('wx/user/vip/price')

// 购买
export const BUYVIP = data => POST('/wx/user/vip/buy', data)

// 获取用户信息
export const USER = () => GET('wx/user/index')

// 获取banner
export const BANNER = () => GET('wx/home/index')

export const GET = (url = '', data = {}) => new Promise((resolv, reject) => wx.request({
  method: "GET",
  url: API_URL + url,
  data: data,
  header: { 'Content-Type': 'application/x-www-form-urlencoded', ...headers() },
  success: res => resolv(res.data.data || res.data),
  fail: err => reject(err),
  complete: completeHandler.bind({ url, data, method: 'GET' }),
}))

export const POST = (url = '', data = {}) => new Promise((resolv, reject) => wx.request({
  method: "POST",
  url: API_URL + url,
  data: data,
  header: { 'Content-Type': 'application/json', ...headers() },
  success: res => resolv(res.data.data || res.data),
  fail: err => reject(err),
  complete: completeHandler.bind({ url, data, method: 'POST' }),
}))

export const UPLOAD = (url = '', filePath = '', formData = {}) => new Promise((resolv, reject) => wx.uploadFile({
  methods: 'POST',
  name: 'file',
  url: API_URL + url,
  filePath: filePath,
  formData: formData,
  header: { "Content-Type": "multipart/form-data", ...headers() },
  // 这里不知道为啥，第一个 data 是字符串，所以需要先序列化
  success: res => resolv(JSON.parse(res.data).data),
  fail: err => reject(err),
  complete: completeHandler.bind({ url, data, method: 'UPLOAD' }),
}))
)
txtit(Var)
return

::wx.upload::
Var =
(
wx.uploadFile({
  methods: 'POST',
  name: 'file',
  url:  API_URL + url,
  filePath: filePath,
  formData: formData,
  header: { "Content-Type": "multipart/form-data", ...headers() },
  success: res => resolv(res.data.data),
  fail: err => reject(err),
  complete: completeHandler,
})
)
code(Var)
return

::wx.rpx::
::rpx::
Var =
(
const sys = wx.getSystemInfoSync()

const screenWidth = sys.screenWidth
const screenHeight = sys.screenHeight

// 1rpx = 屏幕宽度 / 750（不知道是375还是750）
// 在样式中你的canvas宽度650rpx，那么在canvas中绘制使用的宽度就是：（屏幕宽度 / 750）* 650 ;
const rpx = n => (screenWidth / 750) * n
)
code(Var)
return


::wx:emit::
Var =
(
// <footer bind:go='goCamera' />
this.triggerEvent('go')
)
code(Var)
return

::set::
::wx:set::
Var =
(
this.setData({
    active: +index
})
)
code(Var)
return

::wx`:`:cmp::
Var =
(
// components/layer/index.json
{
  "component": true,
  "usingComponents": {}
}

// 其他照旧
---
// index.json
{
  "usingComponents": {
    "layerMaterial": "/components/layerMaterial/index"
  }
}

// index.wxml
<!-- 素材弹出层 -->
<layerMaterial id='layerMaterial' types='{{[1,2,3]}}' items='{{[1,2,3]}}' bind:choose='chooseMaterial'></layerMaterial>
)
txtit(Var)
return