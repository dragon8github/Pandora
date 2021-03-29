::teninit::
::tenvis::
::ten.init::
Var =
(
// 身高
const xdata = [150, 160, 170]
// 体重
const ydata = [40, 50, 60]

const values = xdata.map((x, i) => ({ x, y: ydata[i] }))

// https://js.tensorflow.org/api_vis/1.5.0/#render.scatterplot
tfvis.render.scatterplot(
    // name （不重要）
    { name: '身高体重样本' },
    // 数据集（核心）
    { values: values },
    // 样式美化: 坐标系最大值设置，仅仅是为了提高坐标系可见度
    { xAxisDomain: [Math.min(...xdata) - 10, Math.max(...xdata) + 10], yAxisDomain: [Math.min(...ydata) - 10, Math.max(...ydata) + 10] },
`)
)
txtit(Var)
return