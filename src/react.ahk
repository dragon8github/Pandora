!t::
	Menu, reactMenu, Add, 新建create-react-app, ReactMenuHandler
	Menu, reactMenu, Add, 新建官方create-react-app-Typescript（超级严格）, ReactMenuHandler
	Menu, reactMenu, Add, 新建codesandbox-react-ts（十分宽松）, ReactMenuHandler
	Menu, reactMenu, Add, 新建 react-template, ReactMenuHandler
	Menu, reactMenu, Add, 在线编辑器：React runtime for codesandbox, ReactMenuHandler
	
	Menu, reactMenu, Add
	Menu, reactMenu, Add
	
	Menu, reactMenu, Add, import , ReactMenuHandler
	Menu, reactMenu, Add, react-init, ReactMenuHandler
	Menu, reactMenu, Add, class App extends Component, ReactMenuHandler
	Menu, reactMenu, Add, constructor, ReactMenuHandler
	Menu, reactMenu, Add, static defaultProps, ReactMenuHandler
	Menu, reactMenu, Add, render () {}, ReactMenuHandler
	Menu, reactMenu, Add, ReactDOM.render, ReactMenuHandler
		
	Menu, reactMenu, Add
	Menu, reactMenu, Add
	
	Menu, reactMenu, Add, CSS module :global全局样式 , ReactMenuHandler
	Menu, reactMenu, Add, CSS module cssname, ReactMenuHandler
	Menu, reactMenu, Add, ref, ReactMenuHandler
	Menu, reactMenu, Add, this.state, ReactMenuHandler
	Menu, reactMenu, Add, this.porps, ReactMenuHandler
	Menu, reactMenu, Add, this.setState, ReactMenuHandler	
	Menu, reactMenu, Add, react for, ReactMenuHandler
	Menu, reactMenu, Add, this.state.list.map, ReactMenuHandler
	Menu, reactMenu, Add, style={{ display: this.state.expandForm ? 'block' : 'none' }}, ReactMenuHandler
	Menu, reactMenu, Add, const { ... } = this.props, ReactMenuHandler
	Menu, reactMenu, Add, const { ... } = this.state, ReactMenuHandler
	
	Menu, reactMenu, Add
	Menu, reactMenu, Add
	
	Menu, reactMenu, Add, 箭头函数点击事件handleClick, ReactMenuHandler
		
	Menu, reactMenu, Add
	Menu, reactMenu, Add
	
	
	Menu, reactMenu, Add, WrappedComponent, ReactMenuHandler
	Menu, reactMenu, Add, WrappedComponent + @Decorator, ReactMenuHandler
	Menu, reactMenu, Add, this.forceUpdate()强制启动更新, ReactMenuHandler
	Menu, reactMenu, Add, React.Fragment 代替div作为外层, ReactMenuHandler
	Menu, reactMenu, Add, 父组件调用子组件示例, ReactMenuHandler
	
	Menu, reactMenu, Add
	Menu, reactMenu, Add
	
	Menu, reactMenu, Add, React clickOutside, ReactMenuHandler
 
	Menu, reactMenu, Show
	Menu, reactMenu, DeleteAll
return


ReactMenuHandler:

v := A_ThisMenuItem
Var := 


if (v == "") {
Var = 
(
)
}


if (v == "新建codesandbox-react-ts（十分宽松）") {
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/codesandbox-react-ts.zip", "yarn `; npm start")
return
}

if (v == "新建 react-template") {
psdit("https://raw.githubusercontent.com/dragon8github/Pandora/master/template/react-template.zip", "yarn `; npm start")
return
}

if (v == "CSS module cssname") {
Var = 
(
// CgAuth.less
.CardName{
	height: 55px;
	line-height: 55px;
	background-color: #fff;
	border-bottom: 1px solid #e9e9e9;
	font-family: PingFangSC-Medium;
	font-size: 16px;
	color: rgba(0,0,0,0.85);
	text-align: center;
	font-weight: 500;
}

import styles from './CgAuth.less';

<div className={styles.CardName}>认证流程</div>
)
}

if (v == "CSS module :global全局样式") {
Var = 
(
// http://www.ruanyifeng.com/blog/2016/06/css_modules.html
// css 样式
(:global)(.test1) {
    color: blue;
}

// 或者如下(定义多个全局样式)
:global {
    .test1 {
        color: blue;
    }
    .test2 {
        color: red;
    }
}
)
}


if (v == "父组件调用子组件示例") {
Var = 
(
// 其实直接在父子间用 ref 就可以了，不需要特意借助用 fuckyou 拿到child……
// 但这不失为一种好的方案。
import React, { Component } from "react";
import ReactDOM from "react-dom";

export default class Parent extends Component {
  render() {
    return (
      <div>
        {/* <Child ref={this.fuckyou} /> 这种其实更方便，而且不需要在子组件写多余的代码  */}
        <Child fuckyou={this.fuckyou} />
        <button onClick={this.click}>click</button>
      </div>
    `);
  }

  fuckyou = ref => {
    this.child = ref;
  };

  click = e => {
    this.child.myName();
  };
}

class Child extends Component {
  componentDidMount() {
      this.props.fuckyou && this.props.fuckyou(this);
  }

  myName = () => alert("123");

  render() {
    return <div />;
  }
}

ReactDOM.render(<Parent />, document.getElementById("root"));

)
}


if (v == "在线编辑器：React runtime for codesandbox") {
Run, https://codesandbox.io/s/new
}

if (v == "react-init") {
SendLevel 1
Send, react-init{tab}
return
}

if (v == "import") {
Var = 
(
import React, { Component } from "react";
import ReactDOM from "react-dom";
)
}

if (v == "React.Fragment 代替div作为外层") {
Var = 
(
import React, { Fragment } from 'react';

<Fragment>
       Copyright <Icon type="copyright" /> 2018 蚂蚁金服体验技术部出品
</Fragment>
)
}

if (v == "ref") {
Var = 
(
constructor(props) {
  super(props)
  this.getContainer = this.getContainer.bind(this)
}

getContainer(ref) {
  this.container = ref
}

render() {
  const { children, onClickOutside, ...props } = this.props
  return <div {...props} ref={this.getContainer}>{children}</div>
}

handle = e => {
  const el = this.container
  if (el && !el.contains(e.target)) onClickOutside(e)
}
)
}

if (v == "新建create-react-app") {
name := "my-app" . "-" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
command := []
command.push("cd " . A_Desktop)
command.push("npx create-react-app " . name)
command.push("cd " . name)
command.push("echo SKIP_PREFLIGHT_CHECK=true > .env")
command.push("npm run start")
command := join(command)
pshell(command)
return 
}


if (v == "新建官方create-react-app-Typescript（超级严格）") {
name := "my-app" . "-" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
command := []
command.push("cd " . A_Desktop)
command.push("yarn create react-app " . name . " --typescript")
command.push("cd " . name)
command.push("echo SKIP_PREFLIGHT_CHECK=true > .env")
command.push("yarn start")
command := join(command)
pshell(command)
return 
}

if (v == "this.state") {
Var = 
(
this.state.
)
}

if (v == "class App extends Component") {
Var = 
(
class App extends Component {}
)
Send, {left}{enter}
}

if (v == "static defaultProps") {
Var =
(
static defaultProps = {
  list: [],
  handleItemChange: () => {
   
  }
 }
)
}

if (v == "constructor") {
Var =
(
constructor (props) {
	super(props);
	this.state = {
		list: this.props.list.map(entry => {
			text: entry.text,
			checked: entry.checked,
		})
	}
 }
)
}

if (v == "render () {}") {
Var =
(
render () {
  return (
   <div>
    
   </div>
  `)
 }
)
}

if (v == "this.setState") {
Var =
(
this.setState({
	list: list.map(_ => {
		text: _.text,
		checked: _.text === entry.text ? !_.checked : _.checked
	})
})
)
}

if (v == "this.state.list.map") {
Var =
(
{this.state.list.map((entry, index) => {
	return <ListItem>
		key = {index}
		value = {entry.text}
		checked = {entry.checked}
		onChange = {() => { this.onItemChange(entry) }}
	</ListItem>
 })}
)
}


if (v == "箭头函数点击事件handleClick") {
Var =
(
handleClick: (e) => {
	this.setState({
		name: event.target.value
	})
}
)
}


if (v == "style={{ display: this.state.expandForm ? 'block' : 'none' }}") {
Var =
(
style={{ display: this.state.expandForm ? 'block' : 'none' }}
)
}

if (v == "WrappedComponent + @Decorator"){
Var =
(
const fuckDecorator = (WrappedComponent) => {
	class extends Component {
		constructor (props) {
			super(props);

			this.state = {
				name: ''
			}
		}
		
		handleChange (e) {
			this.setState({
				name: event.target.value
			})
		}

		render () {
			const newProps = {
				fuck: {
					value: this.state.name,
					onChange: () => this.handleChange
				}
			}
			return <WrappedComponent {...this.props} {...newProps} />;
		}
	}
}

@fuckDecorator
class App extends Component {
	render () {
		return <input type="text" {...this.props.fuck}/>
	}
}
)
}



if (v == "react for") {
Var =
(
render () {
	const { getCount, addInput } = this.props
	let listInput = () => {
		let result = []
		for (let i = 1; i <= 10; i++) {
		   result.push(<div key = { i }>输入框: <input type='text'/></div>)
		}
		return result
	}

	return <div>
		{ listInput() }
		<input type = 'button' onClick = { addInput }  value = '添加'/>
	</div>
}
)
}


if (v == "const { ... } = this.props") {
Var =
(
const { ... } = this.props;
)
Send, {left 16}+{left 3}
}

if (v == "const { ... } = this.state") {
Var =
(
const { ... } = this.state;
)
Send, {left 16}+{left 3}
}

if (v == "WrappedComponent") {
Var =
(
const Decorator = WrappedComponent => {
	class extends Component {
		render () {
			return <WrappedComponent {...this.props} />;
		}
	}
}
)
}


if (v == "this.forceUpdate()强制启动更新") {
Var =
(
this.forceUpdate()
)
}

if (v == "在线编辑器：React runtime for stackblitz") {
	Run, https://stackblitz.com/fork/react
}

if (v == "ReactDOM.render") {
Var =
(
import ReactDOM from "react-dom";

ReactDOM.render(
　　 <h1> Hello, world! < /h1>,
    document.getElementById('app')
`);
)
}


if (v == "React clickOutside") {
Var =
(
import React, { Component } from 'react'
import PropTypes from 'prop-types'

export default class ClickOutside extends Component {
  static propTypes = {
    onClickOutside: PropTypes.func.isRequired
  }

  constructor(props) {
    super(props)
    this.getContainer = this.getContainer.bind(this)
    this.isTouch = false
  }

  getContainer(ref) {
    this.container = ref
  }

  render() {
    const { children, onClickOutside, ...props } = this.props
    return <div {...props} ref={this.getContainer}>{children}</div>
  }

  componentDidMount() {
    document.addEventListener('touchend', this.handle, true)
    document.addEventListener('click', this.handle, true)
  }

  componentWillUnmount() {
    document.removeEventListener('touchend', this.handle, true)
    document.removeEventListener('click', this.handle, true)
  }

  handle = e => {
    if (e.type === 'touchend') this.isTouch = true
    if (e.type === 'click' && this.isTouch) return
    const { onClickOutside } = this.props
    const el = this.container
    // 这一句代码就是核心: el.contains，这种思路是通用的
    if (el && !el.contains(e.target)) onClickOutside(e)
  }
}

)
}

code(Var)
Return  

::ant.time::
::ant.pickdate::
Var =
(
import { DatePicker } from 'antd';

const RangePicker = DatePicker.RangePicker;

<FormItem {...formItemLayout} label="生效时间">
  {form.getFieldDecorator('createTime', {
    rules: [{ required: false }],
    initialValue: createTime,
  })(
    <RangePicker placeholder={['开始日期', '结束日期']} style={{ width: '100`%' }} />
  `)}
</FormItem>

if (fieldsValue.le_endTime && fieldsValue.le_endTime.length >= 2) {
	values.ge_startTime = fieldsValue.le_endTime[0].format('YYYY-MM-DD HH:mm:ss')
	values.le_endTime = fieldsValue.le_endTime[1].format('YYYY-MM-DD HH:mm:ss')
}
	  
)
code(Var)
return

::js.redux::
::redux.html::
::redux-html::
::react.redux::
::redux.demo::
::redux-demo::
Var =
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.staticfile.org/redux/4.0.0/redux.min.js"></script>
    <style>
    html, body{
        margin: 0;
        padding: 0;
    }

    #app {

    }
    </style>
</head>

<body>
    <div id="app">
        <label class='num'></label>
        <button class='like'>like</button>
        <button class='unlike'>unlike</button>
    </div>
</body>
<script>
    
    const render = () => {
        document.querySelector('.num').innerText = store.getState()
    }

    document.querySelector('.like').addEventListener('click', function (event) {
        store.dispatch({ type: 'LIKE' })
    })

    document.querySelector('.unlike').addEventListener('click', function (event) {
        store.dispatch({ type: 'UNLIKE' })
    })

    // redux的核心方法： reducer
    const reducer = (previousState = 0, action) => {
        switch (action.type) {
            case 'LIKE':
                return previousState + 1;
            case 'UNLIKE':
                return previousState - 1;
            default:
                return previousState
        }
    }

    // 创建redux的核心：store
    const store = Redux.createStore(reducer);

    // 订阅更新渲染
    store.subscribe(render);

    // 首次渲染
    render()

</script>
</html>
)
code(Var)
return

::rfor::
::reactfor::
Var =
(
render () {
	const { getCount, addInput } = this.props
	let listInput = () => {
		let result = []
		for (let i = 1; i <= 10; i++) {
		   result.push(<div key = { i }>输入框: <input type='text'/></div>)
		}
		return result
	}

	return <div>
		{ listInput() }
		<input type = 'button' onClick = { addInput }  value = '添加'/>
	</div>
}
)
code(Var)
return

::ant.model::
::ant-modal::
Var =
(
const CreateForm = Form.create()(props => {
  const { modalVisible, form, handleAdd, handleModalVisible } = props;
  const okHandle = () => {
    form.validateFields((err, fieldsValue) => {
      if (err) return;
      form.resetFields();
      handleAdd(fieldsValue);
    });
  };
  return (
    <Modal
      title="新建规则"
      visible={modalVisible}
      onOk={okHandle}
      onCancel={() => handleModalVisible(false)}
    >
      <FormItem labelCol={{ span: 5 }} wrapperCol={{ span: 19 }} label="描述">
        {form.getFieldDecorator('desc', {
          rules: [{ required: true, message: 'Please input some description...' }],
        })(<Input placeholder="请输入" />)}
      </FormItem>
    </Modal>
  `);
});


handleModalVisible = flag => {
	this.setState({
	  modalVisible: !!flag,
	});
};

handleAdd = fields => {
	const { dispatch } = this.props;
	dispatch({
	  type: 'rule/add',
	  payload: {
		description: fields.desc,
	  },
});

message.success('添加成功');
	this.setState({
	  modalVisible: false,
	});
};

const parentMethods = {
  handleAdd: this.handleAdd,
  handleModalVisible: this.handleModalVisible,
};


const { modalVisible } = this.state;

<CreateForm {...parentMethods} modalVisible={modalVisible} />
)
code(Var)
return




::rinit::
::reactinit::
::react.init::
::react-init::
InputBox, OutputVar, title, enter a name?,,,,,,,,Test
Var =
(
import React, { Component } from "react";

class %OutputVar% extends Component {
    render() {
        return (
            <div>

            </div>
        `)
    }
}

export default %OutputVar%
)
code(Var)
return



::rclass::
Var = 
(
import React, { Component } from 'react';

export default class test extends Component {
	constructor (props) {
		super(props);
	}

	state = {
		color: 'blue'
	}

	componentDidMount () {
		console.log(this.state.color);
	}
	
	handleSubmit = e => {
		e.preventDefault();
	}

	render () {
		const { text } = this.props
		return (
			<div style={{width: 500, height: 500}} onClick={this.handleSubmit}>test {this.state.color}</div>
		`)
	}
}
)
code(Var)
return

::rcomponents::
::rcomponent::
::rcmp::
::rmp::
Var = 
(
import React, { Component } from 'react';
// array, bool, func, number, object, string, symbol, node, element
import PropTypes from 'prop-types';

export default class test extends Component {

	static propTypes = {
		className: PropTypes.string,
		defaultActiveKey: PropTypes.string,
		onTabChange: PropTypes.func,
		onSubmit: PropTypes.func,
	};

	static defaultProps = {
		className: '',
		defaultActiveKey: '',
		onTabChange: () => {},
		onSubmit: () => {},
	};

	constructor (props) {
		super(props);
	}

	state = {
		color: 'blue'
	}

	componentDidMount () {
		console.log(this.state.color);
	}
	
	handleSubmit = e => {
		e.preventDefault();
	}

	render () {
		const { text } = this.props
		return (
			<div  style={{width: 500, height: 500}} onClick={this.handleSubmit}>test {this.state.color}</div>
		`)
	}
}
)
code(Var)
return

::rmodel::
::rmodels::
::dva-model::
::dva-models::
::dva.model::
::dva.models::
Var = 
(
/**
 * 一、index.js 调用示例
    handleClick () {
        const { dispatch } = this.props
        dispatch({ type: 'todo/save' })
    }

    二、async func 示例
    export async function saveTodoToServer(codetype) {
        return request(`/api/framework/sys/code/list?codetype=` + codetype);
    }
 */

export default {
	namespace: 'todo',

	state: {}, // 也可以是数组： []

	effects: {
		*save({ payload, callback }, { put, call }) {
	      // 调用 async func saveTodoToServer
	      yield call(saveTodoToServer, todo);
          // 调用 reducers 更新 state 可以自由传递任何参数，必须保留type
	      yield put({ type: 'add', title: payload.title, text: payload: text, time: payload: time });
	    },
	},

	reducers: {
		// 比较推荐es6的这样写：add(state, { title, text, time })
	    add(state, action) {
	      const title = action.title
          const text = action.text
          const todo = { 
              title: action.title, 
              text: action.text, 
              time: action.time 
          }
	      // 保存数据到 state
	      return {...state, todo};
	    },
  	},
}
)
code(Var)
return

::rhtml::
::reacthtml::
::react.html::
 Run, https://stackblitz.com/fork/react
/*
Var = 
(
<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="UTF-8">
	<script src="https://cdn.staticfile.org/react/16.4.0/umd/react.production.min.js"></script>
	<script src="https://cdn.staticfile.org/react-dom/16.4.0/umd/react-dom.production.min.js"></script>
	<!-- babel6.0以上已经不支持了浏览器了 -->
	<script src="https://cdn.staticfile.org/babel-core/5.8.38/browser.min.js"></script>
	<title>Document</title>
</head>
<style>
</style>
<body>
	<div id="app"></div>

	<div id="navbar"></div>

	<div id="Welcome"></div>
</body>

<!-- 必须标识为 type="text/babel" -->
<script type="text/babel">
    ReactDOM.render(
      <h1>Hello, world!</h1>,
      document.getElementById('app')
	`);

	var nav_li=['最新电影', '最新评论'];
    ReactDOM.render(
	     <ul>
	     {
	         nav_li.map(function(item){
	             return <li><a href='#'>{item}</a></li>;
	         })
	     }
	     </ul>,
	     document.getElementById('navbar')
    `)


    class Welcome extends React.Component {
      render() {
        return <h1>Hello, {this.props.name}</h1>;
      }
    }
    ReactDOM.render(
      <Welcome name="Sara"/>,
      document.getElementById('Welcome')
    `);
</script>
</html>
)
code(Var)
*/
return

::rconnect::
::dva.connect::
::dva-connect::
::react-connect::
::react.connect::
Var = 
(
// 将 model 和 component 串联起来
export default connect(({ user, login, global = {}, loading }) => ({
	currentUser: user.currentUser,
	menuData: login.menuData,
	notices: global.notices,
	fetchingNotices: loading.effects['global/fetchNotices'],
}))(BasicLayout);
)
code(Var)
return


::@connect::
Var = 
(
@connect(({ user, login, global = {}, loading }) => ({
  currentUser: user.currentUser,
  menuData: login.menuData,
  notices: global.notices,
  fetchingNotices: loading.effects['global/fetchNotices'],
}))

export default class BasicLayout extends React.PureComponent { 
   // ...
}
)
code(Var)
return

::rfa::
::rfater::
Var = 
(
import React, { Component } from 'react';

// 无状态函数/组件 
function ListItem({ value }) {
	return (
		<li>
			<span>{value}</span>
		</li>
	`)
}

function List({ list, title }) {
	return (
		<div>
			<ul>
				{this.props.list.map((entry, index) => {
					<ListItem key={index} value={entry.text}></ListItem>
				})}
			</ul>
		</div>
	`)
}
)
code(Var)
return

::rchild::
::rch::
::rchildren::
Var = 
(
import React, { Component } from 'react';

// 无状态函数/组件
function ListItem({ value }) {
	static defaultProps = {
		text: '',
		checked: false
	}
	return (
		<li>
			<input type="checkbox" checked = {this.props.checked} onChange = {this.props.onChange}/>
			<span>{this.props.value}</span>
		</li>
	`)
}

class List extends Component {
	static defaultProps = {
		list: [],
		handleItemChange: () => {

		}
	}

	constructor (props) {
		super(props);

		this.state = {
			list: this.props.list.map(entry => {
				text: entry.text,
				checked: entry.checked,
			})
		}
	}

	onItemChange (entry) {
		const { list } = this.state;

		this.setState({
			list: list.map(_ => {
				text: _.text,
				checked: _.text === entry.text ? !_.checked : _.checked
			})
		})
	}

	render () {
		return (
			<div>
				<ul>
					{this.state.list.map((entry, index) => {
						<ListItem>
							key = {index}
							value = {entry.text}
							checked = {entry.checked}
							onChange = {() => { this.onItemChange(entry) }}
						</ListItem>
					})}
				</ul>
			</div>
		`)
	}
}
)
code(Var)
return

::rtext::
::rinput::
::rtextarea::
Var = 
(
class App extends Component {
	constructor(props) {
	    super(props);

	    this.state = {
	    	inputValue : '',
	    	textareaValue: ''
	    }
	}

	handleInputChange(e) {
		this.setState({
			inputValue: e.target.value
		})
	}

	handleTextareaChange(e) {
		this.setState({
			textareaValue: e.target.value
		})
	}

	render () {
		const { inputValue, textareaValue } = this.state;
		return (
			<div>
				<input type="text" value = { inputValue } onChange = {() => this.handleInputChange} />
				<textarea value = { textareaValue } onChange = {() => this.handleTextareaChange} />
			</div>
		`)
	}
}
)
code(Var)
return

::rradio::
Var = 
(
class App extends Component {
	constructor(props) {
	    super(props);

	    this.state = {
	    	radioValue: ''
	    }
	}

	handleChange(e) {
		this.setState({
			radioValue: e.target.value
		})
	}


	render () {
		const { radioValue } = this.state;
		return (
			<div>
				<p>gender:</p>
				<label>
					male: <input type="radio" value='male' checked={radioValue === 'male'} onChange={() => this.handleChange} />
					female: <input type="radio" value='male' checked={radioValue === 'female'} onChange={() => this.handleChange} />
				</label>
			</div>
		`)
	}
}
)
code(Var)
return

::rcheckbox::
Var = 
(
class App extends Component {
	constructor(props) {
	    super(props);

	    this.state = {
	    	coffee: []
	    }
	}

	handleChange(e) {
		const { checked, value } = e.target;
		let { coffee } = this.state;

		if (checked && coffee.indexOf(value) === -1) {
			coffee.push(value);
		} else {
			coffee = coffee.filter(i => i !== value);
		}

		this.setState = ({
			coffee,
		});
	}


	render () {
		const { coffee } = this.state;
		return (
			<div>
				<p>请选择你最喜欢的咖啡:</p>
				<label> <input type="checkbox" value="Cappuccino" checked={~coffee.indexOf('Cappuccino')} onChange={() => this.handleChange} /> </label>
				<label> <input type="checkbox" value="CafeMocha" checked={~coffee.indexOf('CafeMocha')} onChange={() => this.handleChange} /> </label>
				<label> <input type="checkbox" value="CaffeLatte" checked={~coffee.indexOf('CaffeLatte')} onChange={() => this.handleChange} /> </label>
				<label> <input type="checkbox" value="Machiatto" checked={~coffee.indexOf('Machiatto')} onChange={() => this.handleChange} /> </label>
			</div>
		`)
	}
}
)
code(Var)
return

::rselect::
Var = 
(
class App extends Component {
	constructor(props) {
	    super(props);

	    this.state = {
	    	area: ''
	    }
	}

	handleChange(e) {
		this.setState = ({
			area: e.target.value,
		});
	}


	render () {
		const { area } = this.state;
		return (
			<div>
				<select value={area} onChange={() => {this.handleChange}}>
					<option value="beijing">北京</option>
					<option value="shanghai">上海</option>
					<option value="hangzhou">杭州</option>
				</select>
			</div>
		`)
	}
}
)
code(Var)
return

::ri::
::rimport::
Var = 
(
import React, { Component } from 'react';
)
code(Var)
return

::rref::
::rrefs::
Var =
(
import React, { Component } from 'react';

class App extends Component {
	constructor (props) {
		super(props);
	}

	handleClick (e) {
		if (this.myTextInput ！= null) {
			this.myTextInput.focus();
		}
	}

	render () {
		return (
			<div>
				<input type="text" ref={(ref) => this.myTextInput = ref}/>
				<input type="button" value="Focus the text input" onClick={() => this.handleClick}/>
			</div>
		`)
	}
}
)
code(Var)
return

::rr::
Var =
(
ref = { (ref) => this.myTextInput = ref }
)
code(Var)
return
