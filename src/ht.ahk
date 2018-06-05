Menu, StatusMenu, add

ColorArrayMenuHandler:
    SendRaw, % A_ThisMenuItem
return

!s:: 
    ColorArray := ["default", "primary", "success", "info", "warning", "danger"]
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, StatusMenu, Add, %this_color%, ColorArrayMenuHandler
    }
    Menu, StatusMenu, Show
return

::ht.btn::
::ht.button::
Var = 
(
<el-button>默认按钮</el-button>
<el-button type="primary">主要按钮</el-button>
<el-button type="success">成功按钮</el-button>
<el-button type="info">信息按钮</el-button>
<el-button type="warning">警告按钮</el-button>
<el-button type="danger">危险按钮</el-button>
)
code(Var)
return

::ht.buttongroup::
::ht.btngroup::
Var = 
(
<el-button-group >
    <el-button type="primary" icon="el-icon-edit"></el-button>
    <el-button type="primary" icon="el-icon-share"></el-button>
    <el-button type="primary" icon="el-icon-delete"></el-button>
</el-button-group>
)
code(Var)
return

::ht.tree::
Var = 
(
<el-tree :data="treeData" :default-expanded-keys="[1, 2, 3, 4]" node-key="id"></el-tree>
treeData: [{id: 1, label: '一级 1', children: [{id: 4, label: '二级 1-1', children: [{id: 9, label: '三级 1-1-1'}, {id: 10, label: '三级 1-1-2'}] }] }, {id: 2, label: '一级 2', children: [{id: 5, label: '二级 2-1'}, {id: 6, label: '二级 2-2'}] }, {id: 3, label: '一级 3', children: [{id: 7, label: '二级 3-1'}, {id: 8, label: '二级 3-2'}] }],
)
code(Var)
return

::ht.loading::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/loading -->
const loading = this.$loading({lock: true, text: 'Loading', spinner: 'el-icon-loading', background: 'rgba(0, 0, 0, 0.7)'});
setTimeout(() => {
  loading.close();
}, 2000);
)
code(Var)
return

::ht.post::
Var = 
(
// https://github.com/axios/axios#example   
this.$http.post('/uaa/auth/login', {
    "userName": "admin-salary",
    "password": "123456"
}).then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('接口异常：' + err.message);
})
)
code(Var)
return

::ht.get::
Var = 
(
// https://github.com/axios/axios#example
this.$http.get('/uc/auth/loadMenu').then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('接口异常：' + err.message);
})
)
code(Var)
return

::ht.get2::
Var = 
(
this.loading = true
// https://github.com/axios/axios#example
this.$http.get('/alms/core/car/carList', {
    params: Object.assign({}, {
      'page': page,
      'limit': 10
    }, this.where)
}).then(result => {
    this.loading = false
    if (result.code == 0) {
      this.total = result.count
      this.myData = result.data
    } else {
      this.$message.error(result.msg);
    }
}).catch(err => {
    this.$message.error(err.message);
})
)
code(Var)
return

::ht.card::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/card -->
<el-card class="hongte-query-card">
    <div slot='header' class='hongte-card-header'>
          <span><i class='fa fa-search'></i> 搜索条件 </span>
          <el-button-group>
              <el-button type='primary' icon='el-icon-search' @click='getData(1)'>查询</el-button>
              <el-button type='primary' icon='el-icon-refresh' @click='resetWhere'>重置</el-button>
              <el-button type='primary' icon='el-icon-download'>导出</el-button>
          </el-button-group>
    </div>
    <div v-for="o in 4" :key="o" class="text item">
      {{'列表内容 ' + o }}
    </div>
</el-card>
)
code(Var)
return

::ht.input::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/input -->
姓名： <el-input placeholder="请输入你的姓名" suffix-icon="el-icon-date" v-model="input"> </el-input>
)
code(Var)
return

::ht.table::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/table -->
<el-table border :data='myData' :row-key="rowKey" class='hongte-table' ref="myTable" @sort-change="sortChange" v-loading='loading' highlight-current-row @current-change="handleCurrentRowChange">
      <el-table-column fixed sortable prop='businessId' label='业务编号' width='220'></el-table-column>
      <el-table-column sortable prop='districtName' label='地区' width='120'> </el-table-column>
      <el-table-column sortable prop='companyName' label='分公司' width='120'> </el-table-column>
      <el-table-column sortable prop='customerName' label='客户名称' width='150'> </el-table-column>
      <el-table-column sortable prop='borrowMoney' label='借款金额' width='120'  :formatter="borrowMoneyFormatter"> </el-table-column>
      <el-table-column sortable prop='evaluationAmount' label='评估价' width='120' :formatter="evaluationAmountFormatter"> </el-table-column>
      <el-table-column sortable prop='repaidAmount' label='已还金额' width='150' :formatter="repaidAmountFormatter"> </el-table-column>
      <el-table-column sortable prop='model' label='车辆型号' width='250'> </el-table-column>
      <el-table-column sortable prop='evaluationDate' label='评估日期' width='120'> </el-table-column>
      <el-table-column sortable prop='trailerDate' label='拖车日期' width='120'> </el-table-column>
      <el-table-column sortable prop='status' label='状态' width='120'> </el-table-column>
      <el-table-column fixed='right' label='操作' width='250' class-name="hongte-table-align">
           <template slot-scope='scope'>
               <el-dropdown trigger='click' @command='handleCommand(arguments[0], scope.$index, scope.row)'>
                    <el-button size='mini'type='success'><i class="fa fa-navicon fa-lg"></i> 详情</el-button>
                    <el-dropdown-menu slot='dropdown'>
                       <el-dropdown-item command='发起拍卖'> 发起拍卖 </el-dropdown-item>
                       <el-dropdown-item command='转公车申请'> 转公车申请 </el-dropdown-item>
                       <el-dropdown-item command='拍卖记录查看'> 拍卖记录查看 </el-dropdown-item>
                       <el-dropdown-item command='车辆归还登记'> 车辆归还登记 </el-dropdown-item>
                       <el-dropdown-item command='重新评估'> 重新评估 </el-dropdown-item>
                       <el-dropdown-item command='附件上传及查看'> 附件上传及查看 </el-dropdown-item>
                       <el-dropdown-item command='查看信贷附件'> 查看信贷附件 </el-dropdown-item>
                       <el-dropdown-item command='拍卖延时'> 拍卖延时 </el-dropdown-item>
                    </el-dropdown-menu>
               </el-dropdown> 
              <el-button size='mini' @click='handleEdit(scope.$index, scope.row)'><i class="fa fa-pencil fa-lg"></i>编辑</el-button>
              <el-button size='mini' type='danger' @click='handleDelete(scope.$index, scope.row)'><i class="fa fa-trash-o fa-lg"></i> 删除</el-button>
           </template>
      </el-table-column>
 </el-table>

 <div class='hongte-Pagination'>
      <el-pagination
             background
            @current-change='handleCurrentChange'
            @size-change="handleSizeChange"
            :current-page='currentPage'
            :page-sizes="[10, 20, 30, 40]"
            :page-size="pageSize"
            :total='total'
            layout='total, prev, pager, next, jumper, sizes'>
      </el-pagination>
 </div>

 <el-dialog class="hongte-dialog" :visible.sync='dialogFormVisible' title='发起拍卖' >
     <auctionApplication></auctionApplication>
 </el-dialog>


 import { moneyFormatter } from '@utils'
 import auctionApplication from '@htComponents/carLoanManagement/auctionApplication.vue'

 // 数据列表
 myData: [],
 // loading
 loading: true,
 // 当前分页
 currentPage: 1,
 // 每页显示条数
 pageSize: 10,        
 // 分页总数
 total: 0,
 // dialog
 dialogFormVisible: false,

 // 获取数据
 getData () {
     this.loading = true
     // axios
     this.$http.get('/alms/core/car/carList', {
         params: Object.assign({}, {
           'page': this.currentPage,
           'limit': this.pageSize
         }, this.where)
     }).then(result => {
         this.loading = false
         if (result.code == 0) {
           this.total = result.count
           this.myData = result.data
         } else {
           this.$message.error(result.msg);
         }
     }).catch(err => {
         this.$message.error(err.message);
     })
 },
 rowKey (row) {
    return row.businessId
 },
 // 选中 table 当前行时触发的事件，可以获取当前行所有数据，美滋滋~
 handleCurrentRowChange (currentRow, oldCurrentRow) {
   if (currentRow == null) {
     console.log("当前没有选中任何行");
   }
 },
 // 每页显示的页数发生变化的时候
 handleSizeChange (size) {
     this.pageSize = size;
     this.getData()
 },
 // 翻页
 handleCurrentChange (page) {
     this.currentPage = page;
     this.getData()
 },
 // 编辑行
 handleEdit () {

 },
 // 删除行
 handleDelete () {
     this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
       confirmButtonText: '确定',
       cancelButtonText: '取消',
       type: 'warning'
     }).then(() => {
         this.myData.splice(index, 1)
     }).catch(() => {

     });
 },
 // 借款金额  
 borrowMoneyFormatter (row, column, content, index) {
     return moneyFormatter(content)
 },
 // 评估价
 evaluationAmountFormatter (row, column, content, index) {
     return moneyFormatter(content)
 },
 // 已还金额
 repaidAmountFormatter (row, column, content, index) {
     return moneyFormatter(content)
 },
 // dropdown
 handleCommand () {
     this.dialogFormVisible = true
 },


 beforeMount () {
     this.getData()
 }
)
code(Var)
return

::ht.dialog::
Var = 
(
<el-dialog class="hongte-dialog" :visible.sync='dialogFormVisible' title='发起拍卖' >
    <auctionApplication></auctionApplication>
</el-dialog>

import auctionApplication from '@htComponents/carLoanManagement/auctionApplication.vue'

 // dialog
dialogFormVisible: false,
)
code(Var)
return

::ht.form::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/form -->
<el-form :inline='true' label-position="right" label-width="120px" :model='where' class='hongte-query-form'>
    <el-form-item label='业务编号：'><el-input v-model='where.businessId' placeholder='业务编号'></el-input></el-form-item>
    <el-form-item label='客户姓名：'><el-input v-model='where.customerName' placeholder='客户姓名'></el-input></el-form-item>
    <el-form-item label='车牌号：'><el-input v-model='where.licensePlateNumber' placeholder='车牌号'></el-input></el-form-item>
    <el-form-item label='车辆型号：'><el-input v-model='where.model' placeholder='车辆型号'></el-input></el-form-item>

    <el-form-item label='区域：'>
        <el-select v-model='where.areaId' placeholder='区域'>
            <el-option label='区域一' value='shanghai'></el-option>
            <el-option label='区域二' value='beijing'></el-option>
        </el-select>
    </el-form-item>

    <el-form-item label='分公司：'>
        <el-select v-model='where.companyId' placeholder='分公司'>
            <el-option label='上海' value='shanghai'></el-option>
            <el-option label='北京' value='beijing'></el-option>
            <el-option label='深圳' value='shenzhen'></el-option>
        </el-select>
    </el-form-item>

    <el-form-item label='拖车日期：'>
        <el-date-picker
            v-model='where.trailerStartDate'
            :picker-options='pickerOptions'
            type='daterange'
            align='right'
            unlink-panels
            range-separator='至'
            start-placeholder='开始日期'
            end-placeholder='结束日期'>
        </el-date-picker>
    </el-form-item>

    <el-form-item label='状态：'>
        <el-select v-model='where.status' placeholder='状态'>
            <el-option label='逾期' value='shanghai'></el-option>
            <el-option label='已还款' value='beijing'></el-option>
        </el-select>
    </el-form-item>
</el-form>
import { shortcuts } from '@utils'  
 // 时间选择器
pickerOptions: {
    shortcuts
},
// 查询条件
where: {
    businessId: '',
    customerName: '',
    licensePlateNumber: '',
    model: '',
    trailerStartDate: '',
    status: '',
},

// 重置搜索条件
resetWhere () {
    this.where = {
      businessId: '',
      customerName: '',
      licensePlateNumber: '',
      model: '',
      trailerStartDate: '',
      status: '',
    }
},
)
code(Var)
return

::ht.msg::
    SendRaw, this.$message.error('接口异常：' + err.message);
return

::ht.page::
Var = 
(
<div class='hongte-Pagination'>
     <el-pagination
            background
           @current-change='handleCurrentChange'
           @size-change="handleSizeChange"
           :current-page='currentPage'
           :page-sizes="[10, 20, 30, 40]"
           :page-size="pageSize"
           :total='total'
           layout='total, prev, pager, next, jumper, sizes'>
     </el-pagination>
</div>

// 当前分页
currentPage: 1,
// 每页显示条数
pageSize: 10,
// 分页总数
total: 0,

// 每页显示的页数发生变化的时候
handleSizeChange (size) {
   this.pageSize = size;
   this.getData()
},
// 翻页
handleCurrentChange (page) {
   this.currentPage = page;
   this.getData()
},
)
code(Var)
return

::ht.form2::
Var = 
(
<el-form ref="form" :model="form" label-width="80px">
  <el-form-item label="活动名称">
    <el-input v-model="form.name"></el-input>
  </el-form-item>
  <el-form-item label="活动区域">
    <el-select v-model="form.region" placeholder="请选择活动区域">
      <el-option label="区域一" value="shanghai"></el-option>
      <el-option label="区域二" value="beijing"></el-option>
    </el-select>
  </el-form-item>
  <el-form-item label="活动时间">
    <el-col :span="11">
      <el-date-picker type="date" placeholder="选择日期" v-model="form.date1" style="width: 100`%;"></el-date-picker>
    </el-col>
    <el-col class="line" :span="2">-</el-col>
    <el-col :span="11">
      <el-time-picker type="fixed-time" placeholder="选择时间" v-model="form.date2" style="width: 100`%;"></el-time-picker>
    </el-col>
  </el-form-item>
  <el-form-item label="即时配送">
    <el-switch v-model="form.delivery"></el-switch>
  </el-form-item>
  <el-form-item label="活动性质">
    <el-checkbox-group v-model="form.type">
      <el-checkbox label="美食/餐厅线上活动" name="type"></el-checkbox>
      <el-checkbox label="地推活动" name="type"></el-checkbox>
      <el-checkbox label="线下主题活动" name="type"></el-checkbox>
      <el-checkbox label="单纯品牌曝光" name="type"></el-checkbox>
    </el-checkbox-group>
  </el-form-item>
  <el-form-item label="特殊资源">
    <el-radio-group v-model="form.resource">
      <el-radio label="线上品牌商赞助"></el-radio>
      <el-radio label="线下场地免费"></el-radio>
    </el-radio-group>
  </el-form-item>
  <el-form-item label="活动形式">
    <el-input type="textarea" v-model="form.desc"></el-input>
  </el-form-item>
  <el-form-item>
    <el-button type="primary" @click="onSubmit">立即创建</el-button>
    <el-button>取消</el-button>
  </el-form-item>
</el-form>

form: {
    name: '',
    region: '',
    date1: '',
    date2: '',
    delivery: false,
    type: [],
    resource: '',
    desc: ''
}

    onSubmit() {
        console.log('submit!');
    }
)
code(Var)
return

::ht.confirm::
Var = 
(
this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
  confirmButtonText: '确定',
  cancelButtonText: '取消',
  type: 'warning'
}).then(() => {
    this.myData.splice(index, 1)
}).catch(() => {
           
});
)
code(Var)
return

::ht.dropdown::
Var = 
(
<el-dropdown trigger='click' @command='handleCommand(arguments[0], scope.$index, scope.row)'>
     <el-button size='mini'type='success'><i class="fa fa-navicon fa-lg"></i> 详情</el-button>
     <el-dropdown-menu slot='dropdown'>
        <el-dropdown-item command='发起拍卖'> 发起拍卖 </el-dropdown-item>
        <el-dropdown-item command='转公车申请'> 转公车申请 </el-dropdown-item>
        <el-dropdown-item command='拍卖记录查看'> 拍卖记录查看 </el-dropdown-item>
        <el-dropdown-item command='车辆归还登记'> 车辆归还登记 </el-dropdown-item>
        <el-dropdown-item command='重新评估'> 重新评估 </el-dropdown-item>
        <el-dropdown-item command='附件上传及查看'> 附件上传及查看 </el-dropdown-item>
        <el-dropdown-item command='查看信贷附件'> 查看信贷附件 </el-dropdown-item>
        <el-dropdown-item command='拍卖延时'> 拍卖延时 </el-dropdown-item>
     </el-dropdown-menu>
</el-dropdown>

// dropdown
handleCommand () {
  console.log(arguments);
  this.dialogFormVisible = true
},
)
code(Var)
return