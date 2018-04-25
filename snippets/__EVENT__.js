// 1、发布 — 订阅的功能
window.__EVENT__ = {
     // 缓存列表
     clientList: [],
     listen: function(key, fn) {
         if (!this.clientList[key]) {
             this.clientList[key] = [];
         }
         // 订阅的消息添加进缓存列表
         this.clientList[key].push(fn); 
     },
     trigger: function() {
         var key = Array.prototype.shift.call(arguments),
             fns = this.clientList[key];
         // 如果没有绑定对应的消息
         if (!fns || fns.length === 0) { 
             return false;
         }
         for (var i = 0, fn; fn = fns[i++];) {
             // arguments 是 trigger 时带上的参数
             fn.apply(this, arguments);
         }
     }
};

// 2、取消订阅的事件
__EVENT__.remove = function(key, fn) {
     var fns = this.clientList[key];
     if (!fns) { // 如果 key 对应的消息没有被人订阅，则直接返回
         return false;
     }
     if (!fn) { // 如果没有传入具体的回调函数，表示需要取消 key 对应消息的所有订阅
         fns && (fns.length = 0);
     } else {
         for (var l = fns.length - 1; l >= 0; l--) { // 反向遍历订阅的回调函数列表
             var _fn = fns[l];
             if (_fn === fn) {
                 fns.splice(l, 1); // 删除订阅者的回调函数
             }
         }
     }
};