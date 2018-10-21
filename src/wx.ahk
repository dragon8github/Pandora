::wx.for::
Var =
(
<view class='fuck' wx:for="{{ items }}" wx:for-index="idx" wx:for-item="itemName" wx:key='{{ idx }}'>
	<input value='{{ itemName.v }}' bindblur='changehandle' data-index="{{ idx }}"></input>
</view>
)
code(Var)
return

::wx.back::
Var =
(
wx.navigateBack({
  delta: 2
})
)
code(Var)
return

::wx.redirect::
::wx.chongdingx::
::wx.chongdingxiange::
Var =
(
wx.redirectTo({
  url: 'test?id=1'
})
)
code(Var)
return

::wx.push::
::wx.router::
::wx.to::
Var =
(
wx.navigateTo({url: '/pages/Login/Login'})
)
code(Var)
return

::wx.load::
::wx.loading::
Var =
(
wx.showLoading({
  title: '加载中',
})

setTimeout(function(){
  wx.hideLoading()
},2000)
)
code(Var)
return

::wx.action::
Var =
(
wx.showActionSheet({
  itemList: ['A', 'B', 'C'],
  success: function(res) {
    console.log(res.tapIndex)
  },
  fail: function(res) {
    console.log(res.errMsg)
  }
})
)
code(Var)

return

::wx.model::
::wx.modal::
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
code(Var)
return

::wx.toast::
::wx.alert::
Var =
(
wx.showToast({
	title: '成功',
	icon: 'success',
	duration: 2000
})
)
code(Var)
return

::wx.if::
Var =
(
<view wx:if="{{view == 'WEBVIEW'}}"> WEBVIEW </view>
<view wx:elif="{{view == 'APP'}}"> APP </view>
<view wx:else="{{view == 'MINA'}}"> MINA </view>
)
code(Var)
return

::wx.setdata::
Var =
(
// this.data.items[event.currentTarget.dataset.index].v = event.detail.value
// this.setData({
//   items: this.data.items
// })

const item = `items[${event.currentTarget.dataset.index}].v`
this.setData({
[item]: event.detail.value
})
)
code(Var)
return

::wx.click::
::wx.onclick::
::wx.@click::
Var =
(
<button bindtap="tapName">tapName</button>
tapName: function (event) {
    console.log(event, this.data.items)
},
)
code(Var)
return