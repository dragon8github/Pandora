::teninit::
::tenvis::
::ten.init::
::ten2::
::tenjs::
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
---

// 创建模型（连续型）
const model = tf.sequential()

// 创建层（全链接层）
const layer = tf.layers.dense({
    // 神经元个数（即输出的维度）。我们输出的是一个值，所以只要一个就够了。
    units: 1,
    // 输入特征格式：「一维」（在本案例中，输入值只会是 xData 一个）
    inputShape: [1]
})

// 添加层
model.add(layer)

// 编译模型
model.compile({ 
    // 设置损失函数（均方误差）
    loss: tf.losses.meanSquaredError, 
    // 设置优化器 - adam 自动化调整学习率（当你不知道要用什么优化器的时候就用这个吧）
    // 很多场景下可以用它来代替 SGD（随机梯度下降法）: tf.train.sgd(0.1)
    optimizer: tf.train.adam(0.1)
})

// 输入
const inputs = tf.tensor(xdata)
// 标签
const labels = tf.tensor(ydata)
// 可视化工具（第二个参数是一个数组，选择你想看的数据，这里我想看损失调整情况）
const vis = tfvis.show.fitCallbacks({ name: '可视化训练过程' }, ['loss'])

// 开始训练模型（返回一个 Promise）
model.fit(inputs, labels, {
    // 小批量的数量（通常是 10 ~ 1000），也就是说，每次喂给模型学习 batchSize 个数据
    batchSize: xdata.length,
    // 「次数、学习几轮」超参数（需要不停实验的参数）
    epochs: 100,
    /* 
        训练次数 = （输入（xdata） / batchSize ） * epochs
        譬如本案例中，xdata 有四个，并且「小批量 batchSize」设置是 1，所以进行 100 * 4 = 400（次）
        如果将 「小批量 batchSize」 设置为 4，就会是 100 次 
    */
    // 可视化工具
    callbacks: vis,
}).then(_ => {
    // 我想预测 x = 5 时，y 为多少
    const x = tf.tensor([5])

    // 完成任务
    const output = model.predict(x)

    // 转换为普通数据
    const _output = output.dataSync()[0]

    // 打印预测结果
    window.alert(['我想预测 x = 5 时，y ', _output].join('  '))
})
---
// 归一化（传入的是一个数组，返回的是一个 tensor 类型）
const GY = data => {
    // 减去（最小值）
    const min = Math.min(...xdata)

    // 除以（最大值 - 最小值）
    const distance = Math.max(...xdata) - min

    // 使用 Tensorflow.js 内置的工具对 xdata 各个成员进行操作。
    return tf.tensor(xdata).sub(min).div(distance)
}

// 归一化（单个数据）
const GY2 = (target, data) => {
    // 减去（最小值）
    const min = Math.min(...data)

    // 除以（最大值 - 最小值）
    const distance = Math.max(...data) - min

    // 注意，这里是一个二维数组。
    return tf.tensor([target]).sub(min).div(distance)
}

// 反归一化（传入的是一个 tensor 类型，返回的是一个普通类型）
const FGY = (target, data) => {
    // 加上（最小值）
    const min = Math.min(...data)

    // 乘以（最大值 - 最小值）
    const distance = Math.max(...data) - min

    // 反归一化
    const _target = target.mul(distance).add(min)

    // // 转换为普通数据
    return _target.dataSync()[0]
}
)
txtit(Var)
return