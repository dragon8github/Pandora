/**
 * 实现：原型继承
 * 解决：子类原型改变而影响父类的问题
 * 方案：桥梁实例
 */

function A(){
    // 特权成员 / 类成员 由于不在prototype上，所以b和桥梁并没有继承
    this.a = 'a' 
}
function B(){}

A.prototype = {
    foo: function () {
        console.log('foo');     
    }
}

/**
 * 认知1.0：为了实现继承，而不让子类影响父类，我们使用一个桥梁来作为中介
 */
function Bridge(){}

/**
 * 首先，先让桥梁的原型和父类的原型同步
 */
Bridge.prototype = A.prototype

/**
 * ！！！重要知识！！！！
 * 其次，让子类继承父类的实例。这样一来，子类就能通过桥梁，拿到所有父类的方法了。
 * 同时又能保持和父类的联系，也就是说，父类更新了原型，子类也会集成
 * 而此时，父类（a）和子类（b）他们并不是属于同个原型。但又可以拿到父类的方法，这实现继承的效果的同时，也打破了子类影响父类的尴尬。
 * 是一种原型继承的hack。
 */
B.prototype = new Bridge


/**
 * 认知2.0：注意，new 实例化必须在prototype定义、初始化之后，如果new 之后再初始化prototype，那就没法使用了。没有为什么
 */
var a = new A
var b = new B

/**
 * 认知:3.0：如上文所说，由于b实际上集成的是桥梁而不是a，所以a和b当然不是同一个原型咯
 * 返回false
 */
console.log(A.prototype == B.prototype)

/**
 * 认知4.0：如上文所说，由于桥梁集成了a，所以桥梁拥有a的方法，而又因为b继承了桥梁，所以b可以使用桥梁的方法。
 * 返回true
 */
console.log(a.foo === b.foo)

A.prototype.bar = function () {
    console.log('bar');
}
/**
 * 认知5.0：如上文所说，b通过桥梁和a保持着联系，当a的原型更新时，b也能立即同步
 * 返回true
 */
console.log(a.bar == b.bar);

B.prototype.baz = function () {
    console.log('baz');
}
/**
 * 认知6.0：请不要误以为桥梁是互通的，实际上，桥梁是单向的（a => b），也就是说，就算b更新了，a也不会因为桥梁而受到影响。
 * 返回false
 */
console.log(a.baz == b.baz);