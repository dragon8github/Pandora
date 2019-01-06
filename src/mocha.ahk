!m::
	Menu, mochaMenu, Add, 1、expect, mochaHandler
	Menu, mochaMenu, Add, 2、.all.keys('bar'，'baz'), mochaHandler
	Menu, mochaMenu, Add, 3、.any.keys('bar'，'baz'), mochaHandler
	Menu, mochaMenu, Add, 4、.not 对之后的断言取反, mochaHandler
	Menu, mochaMenu, Add, 5、.a(String) / .an(String) 被测试的值的类型, mochaHandler
	Menu, mochaMenu, Add, 6、.include / .contains(Object | String | Number)：为判断数组、字符串是否包含某值的断言使用, mochaHandler
	Menu, mochaMenu, Add, 7、.ok / .true / .false / .null / .undefined： 断言目标为真值。, mochaHandler
	Menu, mochaMenu, Add, 8、.exist ：即非null也非undefined, mochaHandler
	Menu, mochaMenu, Add, 9、.empty： 断言目标的长度为0。对于数组和字符串，它检查length属性，对于对象，它检查可枚举属性的数量, mochaHandler
	Menu, mochaMenu, Add, 10、.equal（value）： 断言目标严格等于(===)value, mochaHandler
	Menu, mochaMenu, Add, 11、.eql(value) ： 深度等于，相当于deep.equal(value)的简写。可用于对象和数组的比较。, mochaHandler
	Menu, mochaMenu, Add, 12、.above(Number)： 大于（超过）value。可用于比较数字，也可用于判断数组和字符串的长度：, mochaHandler
	Menu, mochaMenu, Add, 13、.least(Number)：大于或等于value, mochaHandler
	Menu, mochaMenu, Add, 14、.below(Number)： 小于value, mochaHandler
	Menu, mochaMenu, Add, 15、.most(Number)：小于或等于value, mochaHandler
	Menu, mochaMenu, Add, 16、.within(start，finish)：区间, mochaHandler
	Menu, mochaMenu, Add, 17、.property(name，[value])： 是否拥有某个名为name的属性，如果填写了value则该还需要严格等于（===）value。如果Value是对象和数组还需要使用deep标记。, mochaHandler
	Menu, mochaMenu, Add, 18、.ownProperty(name)： 断言目标拥有名为name的自有属性。, mochaHandler
	Menu, mochaMenu, Add, 19、.length：设置.have.length标记作为比较length属性值的前缀, mochaHandler
	Menu, mochaMenu, Add, 20、.lengthOf(value)：断言目标的length属性为期望的值, mochaHandler
	Menu, mochaMenu, Add, 21、.match(regexp)： 匹配到一个正则表达式, mochaHandler
	Menu, mochaMenu, Add, 22、.string(string)：字符串包含另一个字符串, mochaHandler
	Menu, mochaMenu, Add, 23、.keys(key1，[key2]，[...])： 是否包含属性名，可以同any/all/container结合使用。, mochaHandler
	Menu, mochaMenu, Add, 24、.Throw(Error), mochaHandler


	Menu, mochaMenu, Show
	Menu, mochaMenu, DeleteAll
return

mochaHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(

)
}

if (v == "1、expect") {
Var =
(
expect(value)
)
}
if (v == "2、.all.keys('bar'，'baz')") {
Var =
(
.all.keys('bar', 'baz')
)
}
if (v == "3、.any.keys('bar'，'baz')") {
Var =
(
.any.keys('bar', 'baz')
)
}
if (v == "4、.not 对之后的断言取反") {
Var =
(
to.not.be.true
to.not.be.ok
to.not.equal('bar')
to.not.throw(Error)
)
}
if (v == "5、.a(String) / .an(String) 被测试的值的类型") {
Var =
(
to.be.a('string')
to.be.an('object')
to.be.a('null')
to.be.an('undefined')
to.be.an('error')
to.be.a('promise')
)
}
if (v == "6、.include / .contains(Object | String | Number)：为判断数组、字符串是否包含某值的断言使用") {
Var =
(
.to.include(2)
.to.include.keys('foo')
)
}
if (v == "7、.ok / .true / .false / .null / .undefined： 断言目标为真值。") {
Var =
(
to.be.ok
to.not.be.ok

.to.be.true
.to.not.be.true

.to.be.false
.to.not.be.false

.to.be.null
.to.not.be.null

.to.be.undefined
.to.not.be.undefined
)
}
if (v == "8、.exist ：即非null也非undefined") {
Var =
(
.to.exist
.to.not.exist
)
}
if (v == "9、.empty： 断言目标的长度为0。对于数组和字符串，它检查length属性，对于对象，它检查可枚举属性的数量") {
Var =
(
.to.be.empty
)
}
if (v == "10、.equal（value）： 断言目标严格等于(===)value") {
Var =
(
.to.equal('hello')
.to.not.equal(true)
.to.deep.equal({foo: 'bar'})
)
}
if (v == "11、.eql(value) ： 深度等于，相当于deep.equal(value)的简写。可用于对象和数组的比较。") {
Var =
(
expect({ foo: 'bar' }).to.eql({ foo: 'bar' })
expect([1, 2, 3]).to.eql([1, 2, 3])
)
}
if (v == "12、.above(Number)： 大于（超过）value。可用于比较数字，也可用于判断数组和字符串的长度：") {
Var =
(
.to.be.above(5)
.to.have.length.above(2)
)
}
if (v == "13、.least(Number)：大于或等于value") {
Var =
(
.to.be.at.least(10)
)
}
if (v == "14、.below(Number)： 小于value") {
Var =
(
.to.be.below(10)
)
}
if (v == "15、.most(Number)：小于或等于value") {
Var =
(
.to.be.at.most(5)
)
}
if (v == "16、.within(start，finish)：区间") {
Var =
(
.to.be.within(5, 10)
)
}
if (v == "17、.property(name，[value])： 是否拥有某个名为name的属性，如果填写了value则该还需要严格等于（===）value。如果Value是对象和数组还需要使用deep标记。") {
Var =
(
.to.have.property('foo')
.to.have.property('foo', 'bar')
.to.have.deep.property('green.tea', 'matcha')
.to.have.deep.property('teas[1]', 'matcha')
.to.have.deep.property('teas[2].tea', 'konacha')
.to.have.deep.property('[0][1]', 'matcha')
.to.have.deep.property('[1][2].tea', 'konacha')
)
}
if (v == "18、.ownProperty(name)： 断言目标拥有名为name的自有属性。") {
Var =
(
.to.have.ownProperty('length')
)
}
if (v == "19、.length：设置.have.length标记作为比较length属性值的前缀") {
Var =
(
.to.have.length.above(2)
.to.have.length.within(2, 4)
)
}
if (v == "20、.lengthOf(value)：断言目标的length属性为期望的值") {
Var =
(
.to.have.lengthOf(3)
)
}
if (v == "21、.match(regexp)： 匹配到一个正则表达式") {
Var =
(
.to.match(/^foo/)
)
}
if (v == "22、.string(string)：字符串包含另一个字符串") {
Var =
(
.to.have.string('bar')
)
}
if (v == "23、.keys(key1，[key2]，[...])： 是否包含属性名，可以同any/all/container结合使用。") {
Var =
(
.to.have.all.keys('foo', 'bar', 'baz')
.to.have.all.keys(['foo', 'bar', 'baz'])

.to.have.any.keys('foo', 'bar')
.to.have.any.keys({ bar: 2, foo: 1 })

.to.contains.any.keys('foo', 'bar')
.to.contains.all.keys('foo', 'bar')
)
}
if (v == "24、.Throw(Error)") {
Var =
(
.to.throw(ReferenceError)
.and.not.throw(/good function/)
)
}

code(Var)
return