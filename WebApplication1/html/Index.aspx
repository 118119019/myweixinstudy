﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.html.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>龙岩就业</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="1_files/jquery.min.js"></script>
    <script src="js/swiper.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">       
        <div class="main">
            <div class="content">
                <div class="search">
                    <select id="ddlIndustry" class="slt">
                        <option value="00">所属行业--不限</option>
                        <option value="01">农、林、牧、渔业</option>
                        <option value="011">农、林、牧、渔服务业</option>
                        <option value="02">采矿业</option>
                        <option value="021">开采辅助活动</option>
                        <option value="03">制造业</option>
                        <option value="031">金属制品、机械和设备修理业</option>
                        <option value="04">电力、热力、燃气及水生产和供应业</option>
                        <option value="05">建筑业</option>
                        <option value="06">批发和零售业</option>
                        <option value="07">交通运输、仓储和邮政业</option>
                        <option value="08">住宿和餐饮业</option>
                        <option value="09">信息传输、软件和信息技术服务业</option>
                        <option value="10">金融业</option>
                        <option value="11">房地产业</option>
                        <option value="12">租赁和商务服务业</option>
                        <option value="13">科学研究和技术服务业</option>
                        <option value="14">水利、环境和公共设施管理业</option>
                        <option value="15">居民服务、修理和其他服务业</option>
                        <option value="16">教育</option>
                        <option value="17">卫生和社会工作</option>
                        <option value="18">文化、体育和娱乐业</option>
                        <option value="19">公共管理、社会保障和社会组织</option>
                        <option value="20">国际组织</option>
                    </select>
                    <select id="ddlDegree" class="slt">
                        <option value="00">学历--不限</option>
                        <option value="01">博士</option>
                        <option value="02">硕士</option>
                        <option value="03">本科</option>
                        <option value="04">大专</option>
                        <option value="05">中专</option>
                        <option value="06">中技</option>
                        <option value="07">技工</option>
                        <option value="08">高中</option>
                        <option value="09">初中</option>
                        <option value="10">小学</option>
                    </select>
                    <select name="ddlWork" id="ddlWork" class="slt">
                        <option value="0000000" selected="">工作岗位--不限</option>
                        <option value="1000000">单位负责人</option>
                        <option value="1050000">企业管理人员</option>
                        <option value="1050100">部门经理</option>
                        <option value="1050104">生产或经营经理</option>
                        <option value="1050105">财务经理</option>
                        <option value="1050106">行政经理</option>
                        <option value="1050107">人事经理</option>
                        <option value="1050108">销售和营销经理</option>
                        <option value="1050109">广告和公关经理</option>
                        <option value="1050110">采购经理</option>
                        <option value="1050111">计算机服务经理</option>
                        <option value="1050112">研究和开发经理</option>
                        <option value="1050113">餐厅经理</option>
                        <option value="1050114">客房经理</option>
                        <option value="1050115">采购部经理</option>
                        <option value="1050116">项目经理</option>
                        <option value="1059900">其他企业管理人员</option>
                        <option value="2000000">专业、技术人员</option>
                        <option value="2010000">科研人员</option>
                        <option value="2020000">工程技术人员</option>
                        <option value="2020100">地质勘探工程技术人员</option>
                        <option value="2020200">测绘工程技术人员</option>
                        <option value="2020201">测绘技术员</option>
                        <option value="2020300">矿山工程技术人员</option>
                        <option value="2020400">石油工程技术人员</option>
                        <option value="2020500">冶金工程技术人员</option>
                        <option value="2020600">化工工程技术人员</option>
                        <option value="2020605">医药工程师</option>
                        <option value="2020700">机械工程技术人员</option>
                        <option value="2020703">仪器仪表工程师</option>
                        <option value="2020800">兵器航空航天工程技术人员</option>
                        <option value="2021100">电子工程技术人员</option>
                        <option value="2021101">电子安装工</option>
                        <option value="2021200">通信工程技术人员</option>
                        <option value="2021201">通信器材维修工</option>
                        <option value="2021300">计算机工程技术人员</option>
                        <option value="2021301">计算机硬件工程师</option>
                        <option value="2021302">计算机软件工程师</option>
                        <option value="2021303">计算机网络工程师</option>
                        <option value="2021304">系统分析员</option>
                        <option value="2021305">计算机维护人员</option>
                        <option value="2021306">计算机操作员</option>
                        <option value="2021307">软件开发人员</option>
                        <option value="2021308">网络管理员</option>
                        <option value="2021309">网页制作人员</option>
                        <option value="2021400">电气工程技术人员</option>
                        <option value="2021401">机电一体化人员</option>
                        <option value="2021402">电气维护人员</option>
                        <option value="2021500">电力工程技术人员</option>
                        <option value="2021501">电力技术员</option>
                        <option value="2021600">邮政工程技术人员</option>
                        <option value="2021700">广播影视工程技术人员</option>
                        <option value="2021800">交通工程技术人员</option>
                        <option value="2021900">民用航空工程技术人员</option>
                        <option value="2022000">铁路工程技术人员</option>
                        <option value="2022100">建筑工程技术人员</option>
                        <option value="2022102">建筑设计师</option>
                        <option value="2022103">土木建筑工程师</option>
                        <option value="2022104">工程预算员</option>
                        <option value="2022105">施工管理员</option>
                        <option value="2022200">建材工程技术人员</option>
                        <option value="2022300">林业、家具设计工程技术人员</option>
                        <option value="2022311">家具设计师</option>
                        <option value="2022400">水利工程技术人员</option>
                        <option value="2022500">海洋工程技术人员</option>
                        <option value="2022600">水产工程技术人员</option>
                        <option value="2022700">纺织工程技术人员</option>
                        <option value="2022800">食品工程技术人员</option>
                        <option value="2022801">食品检验员</option>
                        <option value="2022802">食品业务员</option>
                        <option value="2022900">气象工程技术人员</option>
                        <option value="2023000">地震工程技术人员</option>
                        <option value="2023100">环境保护工程技术人员</option>
                        <option value="2023200">安全工程技术人员</option>
                        <option value="2023300">标准化、计量、质量工程技术人员</option>
                        <option value="2023400">工业管理工程技术人员</option>
                        <option value="2023500">生物工程技术人员</option>
                        <option value="2029900">其他工程技术人员</option>
                        <option value="2030000">农业技术人员</option>
                        <option value="2030100">土壤肥料技术人员</option>
                        <option value="2030200">植物保护技术人员</option>
                        <option value="2030300">园艺技术人员</option>
                        <option value="2030400">作物遗传育种栽培技术人员</option>
                        <option value="2030500">兽医兽药技术人员</option>
                        <option value="2030600">畜牧与草业技术人员</option>
                        <option value="2040000">飞机船舶技术人员</option>
                        <option value="2040200">船舶指挥引航人员</option>
                        <option value="2049900">其他飞机船舶技术人员</option>
                        <option value="2050000">卫生专业技术人员</option>
                        <option value="2050100">西医</option>
                        <option value="2050200">中医</option>
                        <option value="2050500">公共卫生医师</option>
                        <option value="2050600">药剂师</option>
                        <option value="2050700">医疗技术人员</option>
                        <option value="2050704">临床检验技师</option>
                        <option value="2050800">护士</option>
                        <option value="2059900">其他卫生专业技术人员</option>
                        <option value="2060000">经济业务人员</option>
                        <option value="2060100">经济计划人员</option>
                        <option value="2060200">统计师</option>
                        <option value="2060300">财会人员</option>
                        <option value="2060304">出纳</option>
                        <option value="2060310">资产评估人员</option>
                        <option value="2060400">审计师</option>
                        <option value="2060500">国际商务人员</option>
                        <option value="2060502">对外经贸业务员</option>
                        <option value="2060503">报关员</option>
                        <option value="2060600">房地产业务人员</option>
                        <option value="2060601">房地产开发业务人员</option>
                        <option value="2060602">不动产销售员</option>
                        <option value="2069900">其他经济业务人员</option>
                        <option value="2070000">金融业务人员</option>
                        <option value="2070100">银行业务人员</option>
                        <option value="2070105">信贷业务员</option>
                        <option value="2070107">信托业务员</option>
                        <option value="2070110">国际金融业务员</option>
                        <option value="2070200">保险业务人员</option>
                        <option value="2070203">保险理赔员</option>
                        <option value="2070300">证券业务人员</option>
                        <option value="2070304">期货业务员</option>
                        <option value="2079900">其他金融业务人员</option>
                        <option value="2080000">法律专业人员</option>
                        <option value="2080300">律师</option>
                        <option value="2080301">法律工作人员</option>
                        <option value="2089900">其他法律专业人员</option>
                        <option value="2090000">教学人员</option>
                        <option value="2090100">高等教育教师</option>
                        <option value="2090200">中等职业教育教师</option>
                        <option value="2090300">中学教师</option>
                        <option value="2090400">小学教师</option>
                        <option value="2090500">幼儿教师</option>
                        <option value="2090600">特殊教育教师</option>
                        <option value="2099900">其他教学人员</option>
                        <option value="2100000">文学艺术工作者</option>
                        <option value="2100100">文艺创作和评论人员</option>
                        <option value="2100200">编导和音乐指挥人员</option>
                        <option value="2100300">演员</option>
                        <option value="2100400">乐器演奏员</option>
                        <option value="2100500">影视制作及舞台专业人员</option>
                        <option value="2100501">歌手</option>
                        <option value="2100502">舞蹈演员</option>
                        <option value="2100508">化妆师</option>
                        <option value="2100600">美术专业人员</option>
                        <option value="2100601">平面设计人员</option>
                        <option value="2100700">工美装饰服装广告设计人员</option>
                        <option value="2100704">装潢美术设计人员</option>
                        <option value="2100705">服装设计师</option>
                        <option value="2100706">室内装饰设计人员</option>
                        <option value="2100708">广告设计人员</option>
                        <option value="2100709">制版人员</option>
                        <option value="2109900">其他文学艺术工作者</option>
                        <option value="2110000">体育工作者</option>
                        <option value="2120000">新闻出版文化工作者</option>
                        <option value="2120100">记者</option>
                        <option value="2120200">编辑</option>
                        <option value="2120300">校对员</option>
                        <option value="2120400">播音员及节目主持人</option>
                        <option value="2120500">翻译</option>
                        <option value="2120501">英语翻译</option>
                        <option value="2120502">日语翻译</option>
                        <option value="2120503">俄语翻译</option>
                        <option value="2120504">法语翻译</option>
                        <option value="2120505">德语翻译</option>
                        <option value="2120506">西班牙语翻译</option>
                        <option value="2120507">意大利语翻译</option>
                        <option value="2120508">阿拉伯语翻译</option>
                        <option value="2120509">朝鲜语翻译</option>
                        <option value="2120600">图书资料档案业务人员</option>
                        <option value="2120700">考古文物保护专业人员</option>
                        <option value="2129900">其他新闻出版、文化工作者</option>
                        <option value="3000000">办事人员</option>
                        <option value="3010000">行政办公人员</option>
                        <option value="3010100">行政业务人员</option>
                        <option value="3010103">人事劳资业务人员</option>
                        <option value="3010200">秘书、打字员</option>
                        <option value="3010201">秘书</option>
                        <option value="3010202">公关员</option>
                        <option value="3010204">打字员</option>
                        <option value="3010205">内勤</option>
                        <option value="3010206">外勤</option>
                        <option value="3019900">其他行政办公人员</option>
                        <option value="3020000">安全保卫和消防人员</option>
                        <option value="3020200">治安保卫人员</option>
                        <option value="3020201">门卫</option>
                        <option value="3020202">保安</option>
                        <option value="3020300">消防人员</option>
                        <option value="3029900">其他安全保卫消防人员</option>
                        <option value="3030000">邮政电信业务人员</option>
                        <option value="3030100">邮政业务人员</option>
                        <option value="3030103">传递员</option>
                        <option value="3030200">电信业务人员、话务员</option>
                        <option value="3030202">话务员</option>
                        <option value="3030300">电信通信传输业务人员</option>
                        <option value="3039900">其他邮政电信业务人员</option>
                        <option value="4000000">商业、服务业人员</option>
                        <option value="4010000">购销人员</option>
                        <option value="4010100">营业人员、收银员</option>
                        <option value="4010101">营业员</option>
                        <option value="4010102">收银员</option>
                        <option value="4010200">推销展销人员</option>
                        <option value="4010201">推销员</option>
                        <option value="4010202">出版物发行员</option>
                        <option value="4010203">模特</option>
                        <option value="4010204">促销员</option>
                        <option value="4010205">业务员</option>
                        <option value="4010300">采购人员</option>
                        <option value="4010400">拍卖典当租赁业务人员</option>
                        <option value="4010500">废旧物资回收利用人员</option>
                        <option value="4010700">商品监督和市场管理员</option>
                        <option value="4010702">市场管理员</option>
                        <option value="4013000">医药商品购销员</option>
                        <option value="4019900">其他购销人员</option>
                        <option value="4020000">仓储人员</option>
                        <option value="4020100">保管人员</option>
                        <option value="4020200">储运人员</option>
                        <option value="4029900">其他仓储人员</option>
                        <option value="4030000">餐饮服务人员</option>
                        <option value="4030100">中餐烹饪人员</option>
                        <option value="4030101">中式烹调师</option>
                        <option value="4030102">中式面点师</option>
                        <option value="4030200">西餐烹饪人员</option>
                        <option value="4030201">西式烹调师</option>
                        <option value="4030202">西式面点师</option>
                        <option value="4030300">调酒和茶艺人员</option>
                        <option value="4030500">餐厅服务员、厨工</option>
                        <option value="4039900">其他餐饮服务人员</option>
                        <option value="4040000">饭店、旅游娱乐服务员</option>
                        <option value="4040100">饭店服务人员</option>
                        <option value="4040101">前厅服务员</option>
                        <option value="4040102">客房服务员</option>
                        <option value="4040200">旅游游览场所服务员</option>
                        <option value="4040201">导游</option>
                        <option value="4040202">公共游览场服务员</option>
                        <option value="4040207">园林植物保护工</option>
                        <option value="4040300">健身娱乐场所服务员</option>
                        <option value="4040303">康乐服务员</option>
                        <option value="4040304">保健按摩师</option>
                        <option value="4049900">其他旅游健身娱乐服务人员</option>
                        <option value="4050000">运输服务人员</option>
                        <option value="4050100">公路运输服务人员</option>
                        <option value="4050101">汽车客运服务员</option>
                        <option value="4050200">铁路运输服务人员</option>
                        <option value="4050201">旅客列车乘务员</option>
                        <option value="4050300">航空运输服务人员</option>
                        <option value="4050301">民航乘务员</option>
                        <option value="4050400">水上运输服务人员</option>
                        <option value="4059900">其他运输服务人员</option>
                        <option value="4060000">医疗卫生辅助服务人员</option>
                        <option value="4060100">护理人员</option>
                        <option value="4060104">护理员</option>
                        <option value="4069900">其他医疗卫生辅助服务人员</option>
                        <option value="4070000">社会服务人员</option>
                        <option value="4070100">社会中介服务人员</option>
                        <option value="4070103">信息咨询人员</option>
                        <option value="4070200">物业管理人员</option>
                        <option value="4070300">供水供热人员、锅炉工</option>
                        <option value="4070304">锅炉操作工</option>
                        <option value="4070400">美发美容人员</option>
                        <option value="4070401">美容师</option>
                        <option value="4070402">美发师</option>
                        <option value="4070500">摄影服务人员</option>
                        <option value="4070501">摄影师</option>
                        <option value="4070600">验光配镜人员</option>
                        <option value="4070700">洗染、织补人员</option>
                        <option value="4070800">浴池服务人员</option>
                        <option value="4070802">修脚师</option>
                        <option value="4071000">家用机电产品维修人员</option>
                        <option value="4071001">家电维修人员</option>
                        <option value="4071002">电梯维修工</option>
                        <option value="4071003">空调维修工</option>
                        <option value="4071004">电视维修工</option>
                        <option value="4071005">冰箱维修工</option>
                        <option value="4071006">手机维修工</option>
                        <option value="4071100">办公设备维修人员</option>
                        <option value="4071101">复印机维修人员</option>
                        <option value="4071200">保育、家庭服务员</option>
                        <option value="4071201">保育员</option>
                        <option value="4071202">家庭服务员</option>
                        <option value="4071300">清洁工</option>
                        <option value="4071301">保洁工</option>
                        <option value="4073000">家庭教师</option>
                        <option value="4073100">电梯工</option>
                        <option value="4079900">其他社会服务人员</option>
                        <option value="5000000">农林牧渔水利生产人员</option>
                        <option value="5010000">种植业生产人员</option>
                        <option value="5010100">大田作物生产人员</option>
                        <option value="5010200">农业实验人员</option>
                        <option value="5010300">园艺作物生产人员</option>
                        <option value="5010302">花卉园艺工</option>
                        <option value="5010500">中药材生产人员</option>
                        <option value="5010600">农副林特产品加工工</option>
                        <option value="5010602">果类产品加工工</option>
                        <option value="5010603">茶叶加工工</option>
                        <option value="5010604">蔬菜加工工</option>
                        <option value="5010605">竹藤麻棕草制品加工工</option>
                        <option value="5019900">其他种植业生产人员</option>
                        <option value="5020000">林业及动植物保护人员</option>
                        <option value="5020400">木材采运人员</option>
                        <option value="5029900">其他林业及野生动植物保护人员</option>
                        <option value="5030000">畜牧业生产人员</option>
                        <option value="5040000">渔业生产人员</option>
                        <option value="5040100">水产养殖人员</option>
                        <option value="5040200">水产捕捞及有关人员</option>
                        <option value="5040300">水产品加工工</option>
                        <option value="5049900">其他渔业生产人员</option>
                        <option value="5050000">水利设施管理养护人员</option>
                        <option value="5090000">农林机械操作和能源开发人员</option>
                        <option value="6000000">生产运输工人</option>
                        <option value="6010000">勘测及矿物开采工</option>
                        <option value="6010100">地质勘查人员</option>
                        <option value="6010200">测绘人员</option>
                        <option value="6010300">矿物开采工</option>
                        <option value="6010400">矿物处理工</option>
                        <option value="6010500">钻井人员</option>
                        <option value="6010600">石油、天然气开采人员</option>
                        <option value="6010700">盐业生产人员</option>
                        <option value="6019900">其他勘测及矿物开采工</option>
                        <option value="6020000">金属冶炼轧制工</option>
                        <option value="6020100">金属冶炼工</option>
                        <option value="6020800">金属轧制工</option>
                        <option value="6029900">其他金属冶炼、轧制工</option>
                        <option value="6030000">化工产品生产工</option>
                        <option value="6040000">机械制造加工工</option>
                        <option value="6040100">机械冷加工工</option>
                        <option value="6040101">车工</option>
                        <option value="6040102">铣工</option>
                        <option value="6040103">刨插工</option>
                        <option value="6040104">磨工</option>
                        <option value="6040105">镗工</option>
                        <option value="6040106">钻床工</option>
                        <option value="6040108">加工中心操作工</option>
                        <option value="6040109">制齿工</option>
                        <option value="6040200">机械热加工工</option>
                        <option value="6040201">铸造工</option>
                        <option value="6040202">锻造工</option>
                        <option value="6040203">冲压工</option>
                        <option value="6040205">焊工</option>
                        <option value="6040206">金属热处理工</option>
                        <option value="6040300">特种加工设备操作工</option>
                        <option value="6040301">电切削工</option>
                        <option value="6040400">冷作钣金加工工</option>
                        <option value="6040500">工件表面处理加工工</option>
                        <option value="6040502">涂装工</option>
                        <option value="6040600">磨料磨具制造加工人员</option>
                        <option value="6049900">其他机械制造加工工</option>
                        <option value="6050000">机电产品装配工</option>
                        <option value="6050200">机械设备装配工</option>
                        <option value="6050201">装配钳工</option>
                        <option value="6050202">工具钳工</option>
                        <option value="6050400">电气电子设备装配工</option>
                        <option value="6050600">仪器仪表装配工</option>
                        <option value="6050700">运输车辆装配工</option>
                        <option value="6059900">其他机电产品装配工</option>
                        <option value="6060000">机械设备修理工</option>
                        <option value="6060100">机械设备维修工</option>
                        <option value="6060101">机修钳工</option>
                        <option value="6060102">汽车修理工</option>
                        <option value="6060200">仪器仪表修理工</option>
                        <option value="6069900">其他机械设备修理工</option>
                        <option value="6070000">电力设备装运检修工</option>
                        <option value="6070100">电力设备安装工</option>
                        <option value="6070109">电力工程内线安装工</option>
                        <option value="6070400">专业电力设备检修工</option>
                        <option value="6070600">普通电力设备检修工、电工</option>
                        <option value="6070603">常用电机检修工</option>
                        <option value="6070605">维修电工</option>
                        <option value="6079900">其他电力设备装运、检修及供电工</option>
                        <option value="6080000">电子元器件制造装调工</option>
                        <option value="6080100">电子元件、器件制造工</option>
                        <option value="6080200">电子元件制造工</option>
                        <option value="6080400">电子设备装配调试工</option>
                        <option value="6080408">有线通信传输设备调试工</option>
                        <option value="6080409">通讯交换设备调试工</option>
                        <option value="6080500">电子产品维修工</option>
                        <option value="6080501">计算机维修工</option>
                        <option value="6089900">其他电子元器件与电子设备制造、装调</option>
                        <option value="6090000">橡胶塑料制品生产工</option>
                        <option value="6090100">橡胶制品生产工</option>
                        <option value="6090200">塑料制品加工工</option>
                        <option value="6099900">其他橡胶和塑料制品生产工</option>
                        <option value="6100000">纺织针织印染工</option>
                        <option value="6100100">纤维预处理人员</option>
                        <option value="6100200">纺纱人员</option>
                        <option value="6100300">织造人员</option>
                        <option value="6100400">针织人员</option>
                        <option value="6100500">印染人员</option>
                        <option value="6109900">纺织、针织、印染工</option>
                        <option value="6110000">裁剪缝纫毛皮革制作工</option>
                        <option value="6110100">裁剪缝纫工</option>
                        <option value="6110200">鞋帽制作工</option>
                        <option value="6110300">皮革、毛皮加工工</option>
                        <option value="6110400">缝纫制品再加工人员</option>
                        <option value="6119900">其他裁剪缝纫和毛皮革制作工</option>
                        <option value="6120000">粮油食品饮料生产工</option>
                        <option value="6129900">粮油食品饮料生产加工及饲料加工工</option>
                        <option value="6130000">烟草制品加工工</option>
                        <option value="6140000">药品生产制造工</option>
                        <option value="6150000">木材人造板生产制作工</option>
                        <option value="6150100">木材加工制作工</option>
                        <option value="6150101">木工</option>
                        <option value="6150102">手工木工</option>
                        <option value="6150103">机械木工</option>
                        <option value="6150104">精细木工</option>
                        <option value="6159900">其他木材加工、人造板生产及木制品制</option>
                        <option value="6160000">制浆造纸纸制品生产工</option>
                        <option value="6160300">纸制品制作工</option>
                        <option value="6169900">其他制浆、造纸和纸制品生产加工工</option>
                        <option value="6170000">建筑材料生产加工工</option>
                        <option value="6180000">玻璃陶瓷搪瓷生产工</option>
                        <option value="6189900">玻璃陶瓷搪瓷生产加工工</option>
                        <option value="6190000">广播影视品制作播放人员</option>
                        <option value="6190300">广播影视设备操作人员</option>
                        <option value="6190305">音响调音员</option>
                        <option value="6199900">其他广播影视品制作播放及文物保护人</option>
                        <option value="6200000">制版印刷人员</option>
                        <option value="6210000">工艺、美术品制作人员</option>
                        <option value="6220000">文体用品乐器制作人员</option>
                        <option value="6230000">建筑和工程施工人员</option>
                        <option value="6230100">土石方施工人员</option>
                        <option value="6230200">砌筑工</option>
                        <option value="6230300">混凝土工</option>
                        <option value="6230400">钢筋工</option>
                        <option value="6230500">架子工</option>
                        <option value="6230600">工程防水工</option>
                        <option value="6230700">装饰、装修、油漆工</option>
                        <option value="6230701">装饰装修工</option>
                        <option value="6230703">建筑油漆工</option>
                        <option value="6230900">筑路、养护、维修人员</option>
                        <option value="6231000">机械电气工程设备安装工、管工</option>
                        <option value="6231001">机械设备安装工</option>
                        <option value="6231002">电气设备安装工</option>
                        <option value="6231003">管工</option>
                        <option value="6231004">水工</option>
                        <option value="6231005">中央空调维修工</option>
                        <option value="6231006">空调安装工</option>
                        <option value="6231007">安装水工</option>
                        <option value="6231008">安装电工</option>
                        <option value="6231009">安装焊工</option>
                        <option value="6231100">电工</option>
                        <option value="6239900">其他工程施工人员</option>
                        <option value="6240000">驾驶员和运输工人</option>
                        <option value="6240100">机动车驾驶员</option>
                        <option value="6240101">A照司机</option>
                        <option value="6240102">B照司机</option>
                        <option value="6240103">C照司机</option>
                        <option value="6240200">铁路、地铁运输设备操作及有关人员</option>
                        <option value="6240400">船舶水手</option>
                        <option value="6240500">起重装卸机械操作工</option>
                        <option value="6249900">其他运输设备操作人员</option>
                        <option value="6250000">环境监测废物处理人员</option>
                        <option value="6260000">检验、计量人员</option>
                        <option value="6260100">检验员</option>
                        <option value="6260400">计量员</option>
                        <option value="6270000">体力工人</option>
                        <option value="6270100">包装工</option>
                        <option value="6270300">力工</option>
                        <option value="6280000">普通工人</option>
                        <option value="7000000">其它</option>
                    </select>
                    <div style="text-align: left; background: #fff; padding: 10px 0; border: 2px solid #fff; box-shadow: 0 0 10px rgba(0,0,0,.5); width: 100%; margin-bottom: 10px; font-size: 1.4rem;">
                        <label>登记日期>=</label>
                        <asp:TextBox ID="txtRegDate" type="date" runat="server"></asp:TextBox>
                    </div>
                    <div style="text-align: left; background: #fff; padding: 10px 0; border: 2px solid #fff; box-shadow: 0 0 10px rgba(0,0,0,.5); width: 100%; margin-bottom: 10px; font-size: 1.4rem;">
                        <label>登记日期<=</label>
                        <asp:TextBox ID="txtEffectDate" type="date" runat="server"></asp:TextBox>
                    </div>
                    <select name="ddlPlace" id="ddlPlace" class="slt">
                        <option value="0" selected="">工作地点--不限</option>
                        <option value="350801,350802,350813,350898,350816">龙岩中心城市</option>
                        <option value="350822,350812">永定</option>
                        <option value="350823,350811">上杭</option>
                        <option value="350824">武平</option>
                        <option value="350825">连城</option>
                        <option value="350821,350814">长汀</option>
                        <option value="350881,350815">漳平</option>
                    </select>
                    <input type="button" value="搜 索" class="btn_search" onclick="queryPage('', '', '', '', '', '', '1');" />
                </div>
            </div>
            <div class="content">
                <h1>招聘详情</h1>
                <div class="tab_list">
                    <table class="set_tab" style="width: 100%;">
                        <thead>
                            <tr>
                                <th>企业名称</th>
                                <th>招聘职位</th>
                                <th>招聘人数</th>
                                <th>登记时间</th>
                            </tr>
                        </thead>
                        <tbody id="listTr"></tbody>
                    </table>
                </div>
                <div class="page" id="mypage">
                </div>
            </div>
        </div>
        <div class="modal">
            <!-- Place at bottom of page -->
        </div>
        <script>
            $(function () {
                var strpage = sessionStorage.lastname;
                if (strpage) {
                    var objJSON = eval("(" + strpage + ")");
                    var Links = objJSON.myLinkList;
                    var strHtml = "";
                    for (var i = 0; i < Links.length; i++) {
                        strHtml += "<tr><th scope='row'>" + Links[i].Url + "</th><td>" + Links[i].Work + "</td><td>" + Links[i].Num + "</td><td>" + Links[i].Time + "</td></tr>";
                    }
                    $('#listTr').html(strHtml);
                    var page = objJSON.mypage;
                    strHtml = "";
                    if (page != null) {
                        var str = "";
                        if (page.Previous != null) {
                            str = "onclick=\"queryPage(" + page.Previous + ");\"";
                        }
                        strHtml += "<a href='#' " + str + ">上一页</a>";
                        str = "";
                        if (page.Next != null) {
                            str = "onclick=\"queryPage(" + page.Next + ");\"";
                        }
                        strHtml += "<a href='#' " + str + ">下一页</a>";
                        strHtml += page.Desc;
                        $('#mypage').html(strHtml);
                    }
                }

            });


            var $body = $("body");
            var addMask = function () {
                $body.addClass("loading");
            }
            var deleteMask = function () {
                $body.removeClass("loading");
            }
            var callBackFun = function (data, status) {
                if (status == "success") {
                    if (data != "") {
                        var objJSON = eval("(" + data + ")");
                        var Links = objJSON.myLinkList;
                        var strHtml = "";
                        for (var i = 0; i < Links.length; i++) {
                            strHtml += "<tr><th scope='row'>" + Links[i].Url + "</th><td>" + Links[i].Work + "</td><td>" + Links[i].Num + "</td><td>" + Links[i].Time + "</td></tr>";
                        }
                        $('#listTr').html(strHtml);
                        var page = objJSON.mypage;
                        strHtml = "";

                        if (page != null) {
                            var str = "";
                            if (page.Previous != null) {
                                str = "onclick=\"queryPage(" + page.Previous + ");\"";
                            }
                            strHtml += "<a href='#' " + str + ">上一页</a>";
                            str = "";
                            if (page.Next != null) {
                                str = "onclick=\"queryPage(" + page.Next + ");\"";
                            }
                            strHtml += "<a href='#' " + str + ">下一页</a>";
                            strHtml += page.Desc;
                            $('#mypage').html(strHtml);
                        }
                        sessionStorage.lastname = data;
                    }
                }
                deleteMask();
            }
            function queryPage(industry, degree, work, reg, effect, place, page) {
                if (industry == "") {
                    industry = $('#ddlIndustry').val();
                }
                if (degree == "") {
                    degree = $('#ddlDegree').val();
                }
                if (work == "") {
                    work = $('#ddlWork').val();
                }
                if (reg == "") {
                    reg = $('#txtRegDate').val();
                }
                if (effect == "") {
                    effect = $('#txtEffectDate').val();
                }
                if (place == "") {
                    place = $('#ddlPlace').val();
                }
                addMask();
                $.ajax({
                    url: "../Handler1.ashx",
                    data: {
                        funct: 'GetNewList',
                        industry: industry,
                        degree: degree,
                        work: work,
                        reg: reg,
                        effect: effect,
                        place: place,
                        page: page
                    },
                    type: "POST",
                    success: callBackFun,
                    error: function (er) {
                        deleteMask();
                    }
                });
            }
        </script>
    </form>
</body>
</html>
