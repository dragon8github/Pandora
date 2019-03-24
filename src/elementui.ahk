::el.table::
::el-table::
Var =
(
<div class='table'>
    <el-table :data="tableData" border>
            <el-table-column prop="jobName"label="作业名称"></el-table-column> 
            <el-table-column prop="businessHours"label="业务时间"></el-table-column> 
            <el-table-column prop="runningState"label="运行状态"></el-table-column> 
            <el-table-column prop="startTime"label="开始时间"></el-table-column> 
            <el-table-column prop="acquisitionTime"label="采集时间"></el-table-column> 
            <el-table-column prop="duration"label="持续时间"></el-table-column> 
            <el-table-column fixed="right" label="操作" width="100">
              <template slot-scope="scope">
                <el-button @click="go(scope.row)" type="text" size="small">【详情】</el-button>
              </template>
            </el-table-column> 
    </el-table> 
</div>

export default {
  data() {
    return {
      tableData: [{
        jobName: '业务服务热点实时对接口',
        businessHours: '2019/01/02',
        runningState: '未开始',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '11秒',
      },{
        jobName: '业务服务热点实时接口',
        businessHours: '2019/01/02',
        runningState: '完成',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '24秒',
      },{
        jobName: '测试子流程作业',
        businessHours: '2019/01/02',
        runningState: '失败',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '12秒',
      },{
        jobName: '业务服务热点实时接口',
        businessHours: '2019/01/02',
        runningState: '等待重试',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '暂无',
      }]
    }
  },
  methods: {
    go(row) {
      console.log(row)
    },
  },
}

<style lang="scss">
.table {
  font-size: 14px;


  .el-table thead {
    color: #222;
    text-align: center;

    th {
      background: #e8f5fd;
    }
  }

  .cell {
    text-align: center;
  }
}
</style>
)
code(Var)
return


::elbtn::
::el-btn::
::el-button::
Var =
(
<!-- <el-button @click="go(scope.row)" type="text" size="small">【详情】</el-button> -->
<el-button @click='go' type='primary'>返回</el-button>
)
code(Var)
return


::elinput::
::el-input::
Var =
(
<el-input class='l-field__value' placeholder="请输入作业名称"></el-input>
)
code(Var)
return

::el-select::
Var =
(
<el-select v-model="value" placeholder="请选择" class='u-mt-3'>
   <el-option
     v-for="item in options"
     :key="item.value"
     :label="item.label"
     :value="item.value">
   </el-option>
 </el-select>
 
 export default {
  data () {
    return {
        options: [{
          value: '选项1',
          label: '黄金糕'
        }, {
          value: '选项2',
          label: '双皮奶'
        }, {
          value: '选项3',
          label: '蚵仔煎'
        }, {
          value: '选项4',
          label: '龙须面'
        }, {
          value: '选项5',
          label: '北京烤鸭'
        }],
    }
  },
}
</script>
)
code(Var)
return

::el-tab::
::el-tabls::
Var =
(
<el-tabs type="border-card">
   <el-tab-pane label="用户管理">用户管理</el-tab-pane>
   <el-tab-pane label="配置管理">配置管理</el-tab-pane>
 </el-tabs>
)
code(Var)
return