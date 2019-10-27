!p::

	Menu, PythonPandas, Add, csv.zip, PandasHandler
	Menu, PythonPandas, Add, pandas.init, PandasHandler
	Menu, PythonPandas, Add, pandas.read_csv, PandasHandler
	Menu, PythonPandas, Add, pandas数据结构：Series, PandasHandler
	Menu, PythonPandas, Add, pandas + Numpy, PandasHandler

    Menu, PythonPandas, Show
    Menu, PythonPandas, DeleteAll
return


PandasHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "csv.zip") {
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/csv.zip")
return
}

if (v == "pandas + Numpy") {
Var =
(
import pandas as pd
import numpy as np

if __name__ == "__main__":
	# 随机数
	# ary = np.random.rand(5)
	# s = pd.Series(ary)
	# print(s)

	''' 
	randint 整数随机数
	区间的数学概念
	闭区间： [0, 10]  小于等于0，大于等与10 
	开区间： (0, 10) 小于a ， 大于 10
	半开半闭： 上面两个组合。
	'''

	# 大于等于10，小于20
	# ary = np.random.randint(10, high = 20, size = 100)

	# 转化为 Series 数据结构并且倒序 
	# s = pd.Series(ary).sort_values(ascending=False)

	# pd 过滤
	# print(s[s < 15])

	# 对所有值进行 + 2操作
	# print(s + 2)


	''' 
	choice： 从数组中随机取一个数
	'''

	# ary = [1, 2, 3, 4, 5]
	# 随机取 size 次
	# 参数 p 是概率，加起来必须为1.
	# s = np.random.choice(ary, size = 1, p = [0.1, 0.1, 0.3, 0.4, 0.1])
	# print(s)

	''' 
	抽奖池实例
	'''
	list = ['一等奖', '谢谢你', '二等奖']
	gift_poll = pd.np.random.choice(list, size=10, p=[0.1, 0.7, 0.2])
	s = pd.Series(gift_poll)
	print(s.to_json())
)
}

if (v == "pandas数据结构：Series") {
Var =
(
import pandas as pd

if __name__ == "__main__":
	# 数组形式 - 初始化
	# ary = pd.Series(['abc', 'JOJO', 'DIO'])
	# print(ary)
	# print(ary[0])

	# 字典形式 - 初始化
	# dict = pd.Series({ 'age': 18, 'name': 'jojo', 'city': 'italy' })
	# print(dict)
	# print(dict['age'])
	# print(dict[['age', 'name']])

	# 循环初始化
	# s = pd.Series([x for x in range(0, 10, 1)])
	# print(s)
	# print(s[0:4])
	# print(s[0:9:2])

	# 设置索引, 打印 index 和 value
	# ary = pd.Series(['abc', 'JOJO', 'DIO'], index = ['user1', 'user2', 'user3'])
	# print(ary)
	# print(ary.index)
	# print(ary.values)
)
}

if (v == "pandas.init") {
_send("pandas.init", true, true)
return
}

if (v == "pandas.read_csv") {
Var =
(
import pandas

# dtype 是配置每一列的数据类型，防止强制转换。不写也行
pd = pandas.read_csv('./test.csv', dtype = { 'a': pandas.np.str_, 'b': pandas.np.str_, 'c': pandas.np.str_ })

# 获取N行
print(pd[0:5])

# 获取某一列内容
print(pd['a'])

# 获取多列的内容，需要使用二维数组
print(pd[['a', 'b']])

# 排序
sort_result = pd.sort_values(by = 'a', ascending = False)
print(sort_result)
---
import pandas

if __name__ == "__main__":
	# index_col 默认是 index 行号，当指定某个字段时，搜索数据的时候就会变成该字段为索引陪伴了。 
	# parse_dates 将指定的字段转化为 date 类型，好处是可以让pd支持时间搜索更加方便。
	pd = pandas.read_csv('./test.csv', dtype = { 'fcode': pandas.np.str_ }, index_col = 'fdate', parse_dates = ['fdate'])

	# 打印所有数据
	# print(pd)

	# 打印某一列
	# print(pd['fcode'])

	# 打印两列，需要用二维数组
	# print(pd[['fcode', 'NAV']])

	# 倒排序
	# print(pd.sort_index(ascending=False))

	''' 
	index_col + parse_dates 后的时间搜索 
	'''

	# 打印出全年
	# print(pd['2017'])

	# 打印出6月份
	# print(pd['2017-6'])

	# 打印出日期范围
	# print(pd['2017-2': '2017-6'])

	# 时间范围与day
	# print(pd['2017-2': '2017-6-26'])

	# 从2017年2月开始
	# print(pd['2017-2': ])

	# 直到2017年2月（倒序）
	print(pd[:'2017-2'].sort_index(ascending=False))
---
import pandas

if __name__ == "__main__":
	# index_col 默认是 index 行号，当指定某个字段时，搜索数据的时候就会变成该字段为索引陪伴了。 
	# parse_dates 将指定的字段转化为 date 类型，好处是可以让pd支持时间搜索更加方便。
	pd = pandas.read_csv('./test.csv', dtype = { 'fcode': pandas.np.str_ }, index_col = 'fdate', parse_dates = ['fdate'])

	# 常用过滤
	# where = pd['pstate'] == '封闭期'
	# print(pd[where])

	# 判断字段是否为空: isnull() / notnull() 
	# where = pd['DGR'].isnull()
	# print(pd[where])

	# 多重过滤条件
	# 找到字段不为空的数据
	result = pd[pd['DGR'].notnull()]

	# 字段先移除前后百分号，然后再转换为浮点型，并且判断小于0
	where = result['DGR'].str.strip('`%').astype(pandas.np.float) < 0

	# 打印出过滤结果
	# print(result[where])

	# 分组: 根据字段
	# group = result[where].groupby('fdate').size()

	# 根据表达式, 这里的d其实就是索引列 fdate
	group = result[where].groupby(lambda d: d.strftime('`%Y-`%m')).size()
	# print(group.sort_values(ascending=False))

	# 头三个
	print(group.sort_values(ascending=False).head(3))	
)
txtit(Var)
return
}

code(Var)
return