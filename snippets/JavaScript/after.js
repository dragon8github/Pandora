Function.prototype.after = function(fn) {
    var self = this;
    /**
	 * 认知1：这里的 function 会执行两次。为什么？（提示：两个after）
	 * 认知2：这里的两个 arguments 都是order函数的入参。为什么？（提示：return function(){}）
	 */
    return function() {
        var ret = self.apply(this, arguments);  
        if (ret === 'next') {
            return fn.apply(this.arguments);
        }
    }
}

var order500yuan = function(orderType, pay, stock) {
    if (orderType === 1 && pay === true) {
        console.log('500 元定金预购，得到 100 优惠券');
    } else {
        return 'next'; // 我不知道下一个节点是谁，反正把请求往后面传递
    }
};

var order200yuan = function(orderType, pay, stock) {
    if (orderType === 2 && pay === true) {
        console.log('200 元定金预购，得到 50 优惠券');
    } else {
        return 'next'; // 我不知道下一个节点是谁，反正把请求往后面传递
    }
};

var orderNormal = function(orderType, pay, stock) {
    if (stock > 0) {
        console.log('普通购买，无优惠券');
    } else {
        console.log('手机库存不足');
    }
};

var order = order500yuan.after( order200yuan ).after( orderNormal );
order( 1, true, 500 )
order( 2, true, 500 );
order( 1, false, 500 );