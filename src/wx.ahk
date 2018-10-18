::wx.for::
Var =
(
<view class='fuck' wx:for="{{ items }}" wx:for-index="idx" wx:for-item="itemName" wx:key='{{ idx }}'>
	<input value='{{ itemName.v }}' bindblur='changehandle' data-index="{{ idx }}"></input>
</view>
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