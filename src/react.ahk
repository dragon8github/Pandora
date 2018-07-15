Menu, ReactMenu, add

ReactMenuHandler:
    SendRaw, % A_ThisMenuItem
Return  

!t::
	lifeArray := ["this.porps.xxxx", "class List extends Components", "static defaultProps", "constructor ", "render ", "this.setState", "this.state.list.map"]
	Loop % lifeArray.MaxIndex() {
		this_life := lifeArray[a_index]
		Menu, LifeMenu, Add, %this_life%, ReactMenuHandler
	}
	Menu, LifeMenu, Show
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
        dispatch({ type: 'todo/save' }
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
Var = 
(
<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="UTF-8">
	<script src="https://cdn.bootcss.com/react/16.4.0/umd/react.production.min.js"></script>
	<script src="https://cdn.bootcss.com/react-dom/16.4.0/umd/react-dom.production.min.js"></script>
	<!-- babel6.0以上已经不支持了浏览器了 -->
	<script src="https://cdn.bootcss.com/babel-core/5.8.38/browser.min.js"></script>
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

class List extends Components {
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