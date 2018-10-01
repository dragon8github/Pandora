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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/redux/4.0.0/redux.min.js"></script>
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



ReactMenuHandler:
if (A_ThisMenuItem == "this.porps") {
Var = 
(
this.porps.
)
code(Var)
}

if (A_ThisMenuItem == "新建create-react-app") {
	name :=  A_Desktop . "\" . A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
	FileCreateDir, %name%
	RunWaitOne("cd " . name . " && npm install -g create-react-app && create-react-app my-app && cd my-app && npm start")
}


if (A_ThisMenuItem == "新建react-redux.html") {
	run, https://github.com/dragon8github/Pandora/blob/master/template/layui_template.zip?raw=true
}


if (A_ThisMenuItem == "this.state") {
Var = 
(
this.state.
)
code(Var)
}

if (A_ThisMenuItem == "class App extends Component") {
Var = 
(
class App extends Component {}
)
code(Var)
Send, {left}{enter}
}

if (A_ThisMenuItem == "static defaultProps") {
Var =
(
static defaultProps = {
  list: [],
  handleItemChange: () => {
   
  }
 }
)
code(Var)
}

if (A_ThisMenuItem == "constructor") {
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
code(Var)
}

if (A_ThisMenuItem == "render () {}") {
Var =
(
render () {
  return (
   <div>
    
   </div>
  `)
 }
)
code(Var)
}

if (A_ThisMenuItem == "this.setState") {
Var =
(
this.setState({
	list: list.map(_ => {
		text: _.text,
		checked: _.text === entry.text ? !_.checked : _.checked
	})
})
)
code(Var)
}

if (A_ThisMenuItem == "this.state.list.map") {
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
code(Var)
}


if (A_ThisMenuItem == "箭头函数点击事件handleClick") {
Var =
(
handleClick: (e) => {
	this.setState({
		name: event.target.value
	})
}
)
code(Var)
}


if (A_ThisMenuItem == "style={{ display: this.state.expandForm ? 'block' : 'none' }}") {
Var =
(
style={{ display: this.state.expandForm ? 'block' : 'none' }}
)
code(Var)
}

if (A_ThisMenuItem == "WrappedComponent + @Decorator"){
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
code(Var)
}



if (A_ThisMenuItem == "react for") {
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
}


if (A_ThisMenuItem == "const { ... } = this.props") {
Var =
(
const { ... } = this.props;
)
code(Var)
Send, {left 16}+{left 3}
}

if (A_ThisMenuItem == "const { ... } = this.state") {
Var =
(
const { ... } = this.state;
)
code(Var)
Send, {left 16}+{left 3}
}

if (A_ThisMenuItem == "WrappedComponent") {
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
code(Var)
}


if (A_ThisMenuItem == "this.forceUpdate()") {
Var =
(
this.forceUpdate()
)
code(Var)
}

if (A_ThisMenuItem == "React runtime") {
	Run, https://stackblitz.com/fork/react
}

if (A_ThisMenuItem == "ReactDOM.render") {
Var =
(
ReactDOM.render(
　　 <h1> Hello, world! < /h1>,
    document.getElementById('app')
`);
)
code(Var)
}

Return  

!t::
	reactArray := ["新建create-react-app", "新建react-redux.html", "React runtime", "ReactDOM.render",  "constructor", "this.porps", "static defaultProps", "this.state",  "this.setState", "react for", "this.state.list.map" ,  "箭头函数点击事件handleClick", "style={{ display: this.state.expandForm ? 'block' : 'none' }}","const { ... } = this.props", "const { ... } = this.state", "class App extends Component",   "render () {}", "WrappedComponent", "WrappedComponent + @Decorator", "this.forceUpdate()"]
	Loop % reactArray.MaxIndex() {
		this_life := reactArray[a_index]
		Menu, reactArray, Add, %this_life%, ReactMenuHandler
	}
	Menu, reactArray, Show
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/react/16.4.0/umd/react.production.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/react-dom/16.4.0/umd/react-dom.production.min.js"></script>
	<!-- babel6.0以上已经不支持了浏览器了 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.38/browser.min.js"></script>
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