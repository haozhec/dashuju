module.exports.index = (req, res)->
  dao = 
    title: "BigData"
    members: [
      { 
        name: "廖宇"
        alias: "liaoyu"
        about: "新能源调度管理@德国柏林电网。“能源”“南方能源观察”和新浪财经专栏作者。狂热的智能电网和大数据分析从业者。曾任职于苏州供电局、西门子智能电网。德国卡尔斯鲁厄大学硕士。"
      }
      { 
        name: "邱腾"
        alias: "qiuteng"
        about: "大数据架构师@Zalando，FX Live创始人，ChinaHadoop培训讲师。专注于BI大数据架构及解决方案，精通网络数据、市场及金融数据分析。曾任职于新浪，西门子，Fraunhofer，Zanox。"
      }
      { 
        name: "黄智轶"
        alias: "neo"
        about: "医疗软件工程师@Alcon GPS。C++牛人，擅长计算机视觉，互联网爱好者。上海交大柏林工大计算机双硕士。希望做语音控制的智能家居。"
      }
      { 
        name: "陈灏哲"
        alias: "haozhe"
        about: "软件架构师@Strato，从事云存储，云服务的互联网软件开发。擅长互联网项目的研发和管理，数据可视化。柏林自由大学计算机硕士。"
      }
    ]

  res.render "index", dao
