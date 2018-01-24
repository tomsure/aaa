var level1 = [{
	"name": "222222",
	"value": "1"
}, {
	"name": "饿的方式度过",
	"value": "2"
}, {
	"name": "收到额外人",
	"value": "3"
}, {
	"name": "啦啦啦",
	"value": "4"
}, {
	"name": "饿的方式度过",
	"value": "5"
}, {
	"name": "收到额外人",
	"value": "6"
}, {
	"name": "啦啦啦",
	"value": "1"
}, {
	"name": "饿的方式度过",
	"value": "2"
}, {
	"name": "收到额外人",
	"value": "3"
}, {
	"name": "啦啦啦",
	"value": "4"
}, {
	"name": "饿的方式度过",
	"value": "5"
}, {
	"name": "收到额外人",
	"value": "6"
}];
var level2 = [{
	"name": '啦啦啦',
	"value": '1'
}, {
	"name": '饿的方式度过',
	"value": '2'
}, {
	"name": '收到额外人',
	"value": '3'
}, {
	"name": '啦啦啦',
	"value": '4'
}, {
	"name": '饿的方式度过',
	"value": '5'
}, {
	"name": '收到额外人',
	"value": '6'
}];
var level3 = [{
	"name": "111",
	"value": "1",
	"child": [{
		"name": "222",
		"value": "3",
		"child": [{
			"name": "fff",
			"value": "3"
		}, {
			"name": "ggg",
			"value": "4"
		}, {
			"name": "hhh",
			"value": "5"
		}, {
			"name": "yyy",
			"value": "6"
		}]
	}, {
		"name": "333",
		"value": "4",
		"child": [{
			"name": "222",
			"value": "3"
		}, {
			"name": "333",
			"value": "4"
		}, {
			"name": "4444",
			"value": "5"
		}, {
			"name": "555",
			"value": "6"
		}]
	}, {
		"name": "4444",
		"value": "5",
		"child": [{
			"name": "222",
			"value": "3"
		}, {
			"name": "333",
			"value": "4"
		}, {
			"name": "4444",
			"value": "5"
		}, {
			"name": "555",
			"value": "6"
		}]
	}, {
		"name": "555",
		"value": "6",
		"child": [{
			"name": "fff",
			"value": "3"
		}, {
			"name": "ggg",
			"value": "4"
		}, {
			"name": "hhh",
			"value": "5"
		}, {
			"name": "yyy",
			"value": "6"
		}]
	}, {
		"name": "4444",
		"value": "5",
		"child": [{
			"name": "fff",
			"value": "3"
		}, {
			"name": "ggg",
			"value": "4"
		}, {
			"name": "hhh",
			"value": "5"
		}, {
			"name": "yyy",
			"value": "6"
		}]
	}, {
		"name": "555",
		"value": "6",
		"child": [{
			"name": "fff",
			"value": "3"
		}, {
			"name": "ggg",
			"value": "4"
		}, {
			"name": "hhh",
			"value": "5"
		}, {
			"name": "yyy",
			"value": "6"
		}]
	}]
}, {
	"name": "ddd",
	"value": "2",
	"child": [{
		"name": "fff",
		"value": "3"
	}, {
		"name": "ggg",
		"value": "4"
	}, {
		"name": "hhh",
		"value": "5"
	}, {
		"name": "yyy",
		"value": "6"
	}]
}, {
	"name": "www",
	"value": "3",
	"child": [{
		"name": "收到额外人",
		"value": "3"
	}, {
		"name": "啦啦啦",
		"value": "4"
	}, {
		"name": "饿的方式度过",
		"value": "5"
	}, {
		"name": "收到额外人",
		"value": "6"
	}]
}, {
	"name": "rrr",
	"value": "4",
	"child": [{
		"name": "收到额外人",
		"value": "3"
	}, {
		"name": "啦啦啦",
		"value": "4"
	}, {
		"name": "饿的方式度过",
		"value": "5"
	}, {
		"name": "收到额外人",
		"value": "6"
	}]
}, {
	"name": "yyy",
	"value": "5",
	"child": [{
		"name": "收到额外人",
		"value": "3"
	}, {
		"name": "啦啦啦",
		"value": "4"
	}, {
		"name": "饿的方式度过",
		"value": "5"
	}, {
		"name": "收到额外人",
		"value": "6"
	}]
}, {
	"name": "uuu",
	"value": "6",
	"child": [{
		"name": "收到额外人",
		"value": "3"
	}, {
		"name": "啦啦啦",
		"value": "4"
	}, {
		"name": "饿的方式度过",
		"value": "5"
	}, {
		"name": "收到额外人",
		"value": "6"
	}]
}];
var cityData = [{
	"id": "110000",
	"name": "月流量包",
	"shortName": "北京",
	"parentId": "100000",
	"level": "1"
}, {
	"id": "120000",
	"name": "季流量包",
	"shortName": "天津",
	"parentId": "100000",
	"level": "1"
}, {
	"id": "120100",
	"name": "半年流量包",
	"shortName": "天津",
	"parentId": "120000",
	"level": "2"
}, {
	"id": "130000",
	"name": "年流量包",
	"shortName": "河北",
	"parentId": "100000",
	"level": "1"
}, {
	"id": "140000",
	"name": "叠加包",
	"shortName": "山西",
	"parentId": "100000",
	"level": "1"
}, ];

var city3 = [{
	"name": "套餐",
	"child": [{
		"name": "北京市",
		"child": [{
			"name": "东城区"
		}, {
			"name": "崇文区"
		}, {
			"name": "宣武区"
		}, {
			"name": "朝阳区"
		}, {
			"name": "丰台区"
		}, {
			"name": "石景山区"
		}, {
			"name": "海淀区"
		}, {
			"name": "门头沟区"
		}, {
			"name": "房山区"
		}, {
			"name": "通州区"
		}, {
			"name": "顺义区"
		}, {
			"name": "昌平区"
		}, {
			"name": "大兴区"
		}, {
			"name": "怀柔区"
		}, {
			"name": "平谷区"
		}, {
			"name": "密云县"
		}, {
			"name": "延庆县"
		}],
		"city_id": [0, 0]
	}],
	"id": 0
}, {
	"name": "湖北省",
	"child": [{
		"name": "武汉市",
		"child": [{
			"name": "东西湖区"
		}, {
			"name": "新洲区"
		}, {
			"name": "武昌区"
		}, {
			"name": "汉南区"
		}, {
			"name": "汉阳区"
		}, {
			"name": "江夏区"
		}, {
			"name": "江岸区"
		}, {
			"name": "江汉区"
		}, {
			"name": "洪山区"
		}, {
			"name": "硚口区"
		}, {
			"name": "蔡甸区"
		}, {
			"name": "青山区"
		}, {
			"name": "黄陂区"
		}],
		"city_id": [16, 0]
	}, {
		"name": "黄石市",
		"child": [{
			"name": "下陆区"
		}, {
			"name": "大冶市"
		}, {
			"name": "西塞山区"
		}, {
			"name": "铁山区"
		}, {
			"name": "阳新县"
		}, {
			"name": "黄石港区"
		}],
		"city_id": [16, 1]
	}, {
		"name": "十堰市",
		"child": [{
			"name": "丹江口市"
		}, {
			"name": "张湾区"
		}, {
			"name": "房县"
		}, {
			"name": "竹山县"
		}, {
			"name": "竹溪县"
		}, {
			"name": "茅箭区"
		}, {
			"name": "郧县"
		}, {
			"name": "郧西县"
		}],
		"city_id": [16, 2]
	}, {
		"name": "宜昌市",
		"child": [{
			"name": "五峰土家族自治县"
		}, {
			"name": "伍家岗区"
		}, {
			"name": "兴山县"
		}, {
			"name": "夷陵区"
		}, {
			"name": "宜都市"
		}, {
			"name": "当阳市"
		}, {
			"name": "枝江市"
		}, {
			"name": "点军区"
		}, {
			"name": "秭归县"
		}, {
			"name": "虢亭区"
		}, {
			"name": "西陵区"
		}, {
			"name": "远安县"
		}, {
			"name": "长阳土家族自治县"
		}],
		"city_id": [16, 3]
	}, {
		"name": "襄樊市",
		"child": [{
			"name": "保康县"
		}, {
			"name": "南漳县"
		}, {
			"name": "宜城市"
		}, {
			"name": "枣阳市"
		}, {
			"name": "樊城区"
		}, {
			"name": "老河口市"
		}, {
			"name": "襄城区"
		}, {
			"name": "襄阳区"
		}, {
			"name": "谷城县"
		}],
		"city_id": [16, 4]
	}, {
		"name": "鄂州市",
		"child": [{
			"name": "华容区"
		}, {
			"name": "粱子湖"
		}, {
			"name": "鄂城区"
		}],
		"city_id": [16, 5]
	}, {
		"name": "荆门市",
		"child": [{
			"name": "东宝区"
		}, {
			"name": "京山县"
		}, {
			"name": "掇刀区"
		}, {
			"name": "沙洋县"
		}, {
			"name": "钟祥市"
		}],
		"city_id": [16, 6]
	}, {
		"name": "孝感市",
		"child": [{
			"name": "云梦县"
		}, {
			"name": "大悟县"
		}, {
			"name": "孝南区"
		}, {
			"name": "孝昌县"
		}, {
			"name": "安陆市"
		}, {
			"name": "应城市"
		}, {
			"name": "汉川市"
		}],
		"city_id": [16, 7]
	}, {
		"name": "荆州市",
		"child": [{
			"name": "公安县"
		}, {
			"name": "松滋市"
		}, {
			"name": "江陵县"
		}, {
			"name": "沙市区"
		}, {
			"name": "洪湖市"
		}, {
			"name": "监利县"
		}, {
			"name": "石首市"
		}, {
			"name": "荆州区"
		}],
		"city_id": [16, 8]
	}, {
		"name": "黄冈市",
		"child": [{
			"name": "团风县"
		}, {
			"name": "武穴市"
		}, {
			"name": "浠水县"
		}, {
			"name": "红安县"
		}, {
			"name": "罗田县"
		}, {
			"name": "英山县"
		}, {
			"name": "蕲春县"
		}, {
			"name": "麻城市"
		}, {
			"name": "黄州区"
		}, {
			"name": "黄梅县"
		}],
		"city_id": [16, 9]
	}, {
		"name": "咸宁市",
		"child": [{
			"name": "咸安区"
		}, {
			"name": "嘉鱼县"
		}, {
			"name": "崇阳县"
		}, {
			"name": "赤壁市"
		}, {
			"name": "通城县"
		}, {
			"name": "通山县"
		}],
		"city_id": [16, 10]
	}, {
		"name": "随州市",
		"child": [{
			"name": "广水市"
		}, {
			"name": "曾都区"
		}],
		"city_id": [16, 11]
	}, {
		"name": "恩施土家族苗族自治州",
		"child": [{
			"name": "利川市"
		}, {
			"name": "咸丰县"
		}, {
			"name": "宣恩县"
		}, {
			"name": "巴东县"
		}, {
			"name": "建始县"
		}, {
			"name": "恩施市"
		}, {
			"name": "来凤县"
		}, {
			"name": "鹤峰县"
		}],
		"city_id": [16, 12]
	}, {
		"name": "仙桃市",
		"child": [{
			"name": "仙桃市"
		}],
		"city_id": [16, 13]
	}, {
		"name": "潜江市",
		"child": [{
			"name": "潜江市"
		}],
		"city_id": [16, 14]
	}, {
		"name": "天门市",
		"child": [{
			"name": "天门市"
		}],
		"city_id": [16, 15]
	}, {
		"name": "神农架林区",
		"child": [{
			"name": "神农架林区"
		}],
		"city_id": [16, 16]
	}],
	"id": 16
}, {
	"name": "湖南省",
	"child": [{
		"name": "长沙市",
		"child": [{
			"name": "天心区"
		}, {
			"name": "宁乡县"
		}, {
			"name": "岳麓区"
		}, {
			"name": "开福区"
		}, {
			"name": "望城县"
		}, {
			"name": "浏阳市"
		}, {
			"name": "芙蓉区"
		}, {
			"name": "长沙县"
		}, {
			"name": "雨花区"
		}],
		"city_id": [17, 0]
	}, {
		"name": "株洲市",
		"child": [{
			"name": "天元区"
		}, {
			"name": "攸县"
		}, {
			"name": "株洲县"
		}, {
			"name": "炎陵县"
		}, {
			"name": "石峰区"
		}, {
			"name": "芦淞区"
		}, {
			"name": "茶陵县"
		}, {
			"name": "荷塘区"
		}, {
			"name": "醴陵市"
		}],
		"city_id": [17, 1]
	}, {
		"name": "湘潭市",
		"child": [{
			"name": "岳塘区"
		}, {
			"name": "湘乡市"
		}, {
			"name": "湘潭县"
		}, {
			"name": "雨湖区"
		}, {
			"name": "韶山市"
		}],
		"city_id": [17, 2]
	}, {
		"name": "衡阳市",
		"child": [{
			"name": "南岳区"
		}, {
			"name": "常宁市"
		}, {
			"name": "珠晖区"
		}, {
			"name": "石鼓区"
		}, {
			"name": "祁东县"
		}, {
			"name": "耒阳市"
		}, {
			"name": "蒸湘区"
		}, {
			"name": "衡东县"
		}, {
			"name": "衡南县"
		}, {
			"name": "衡山县"
		}, {
			"name": "衡阳县"
		}, {
			"name": "雁峰区"
		}],
		"city_id": [17, 3]
	}, {
		"name": "邵阳市",
		"child": [{
			"name": "北塔区"
		}, {
			"name": "双清区"
		}, {
			"name": "城步苗族自治县"
		}, {
			"name": "大祥区"
		}, {
			"name": "新宁县"
		}, {
			"name": "新邵县"
		}, {
			"name": "武冈市"
		}, {
			"name": "洞口县"
		}, {
			"name": "绥宁县"
		}, {
			"name": "邵东县"
		}, {
			"name": "邵阳县"
		}, {
			"name": "隆回县"
		}],
		"city_id": [17, 4]
	}, {
		"name": "岳阳市",
		"child": [{
			"name": "临湘市"
		}, {
			"name": "云溪区"
		}, {
			"name": "华容县"
		}, {
			"name": "君山区"
		}, {
			"name": "岳阳县"
		}, {
			"name": "岳阳楼区"
		}, {
			"name": "平江县"
		}, {
			"name": "汨罗市"
		}, {
			"name": "湘阴县"
		}],
		"city_id": [17, 5]
	}, {
		"name": "常德市",
		"child": [{
			"name": "临澧县"
		}, {
			"name": "安乡县"
		}, {
			"name": "桃源县"
		}, {
			"name": "武陵区"
		}, {
			"name": "汉寿县"
		}, {
			"name": "津市市"
		}, {
			"name": "澧县"
		}, {
			"name": "石门县"
		}, {
			"name": "鼎城区"
		}],
		"city_id": [17, 6]
	}, {
		"name": "张家界市",
		"child": [{
			"name": "慈利县"
		}, {
			"name": "桑植县"
		}, {
			"name": "武陵源区"
		}, {
			"name": "永定区"
		}],
		"city_id": [17, 7]
	}, {
		"name": "益阳市",
		"child": [{
			"name": "南县"
		}, {
			"name": "安化县"
		}, {
			"name": "桃江县"
		}, {
			"name": "沅江市"
		}, {
			"name": "资阳区"
		}, {
			"name": "赫山区"
		}],
		"city_id": [17, 8]
	}, {
		"name": "郴州市",
		"child": [{
			"name": "临武县"
		}, {
			"name": "北湖区"
		}, {
			"name": "嘉禾县"
		}, {
			"name": "安仁县"
		}, {
			"name": "宜章县"
		}, {
			"name": "桂东县"
		}, {
			"name": "桂阳县"
		}, {
			"name": "永兴县"
		}, {
			"name": "汝城县"
		}, {
			"name": "苏仙区"
		}, {
			"name": "资兴市"
		}],
		"city_id": [17, 9]
	}, {
		"name": "永州市",
		"child": [],
		"city_id": [17, 10]
	}, {
		"name": "怀化市",
		"child": [{
			"name": "中方县"
		}, {
			"name": "会同县"
		}, {
			"name": "新晃侗族自治县"
		}, {
			"name": "沅陵县"
		}, {
			"name": "洪江市/洪江区"
		}, {
			"name": "溆浦县"
		}, {
			"name": "芷江侗族自治县"
		}, {
			"name": "辰溪县"
		}, {
			"name": "通道侗族自治县"
		}, {
			"name": "靖州苗族侗族自治县"
		}, {
			"name": "鹤城区"
		}, {
			"name": "麻阳苗族自治县"
		}],
		"city_id": [17, 11]
	}, {
		"name": "娄底市",
		"child": [{
			"name": "冷水江市"
		}, {
			"name": "双峰县"
		}, {
			"name": "娄星区"
		}, {
			"name": "新化县"
		}, {
			"name": "涟源市"
		}],
		"city_id": [17, 12]
	}, {
		"name": "湘西土家族苗族自治州",
		"child": [{
			"name": "保靖县"
		}, {
			"name": "凤凰县"
		}, {
			"name": "古丈县"
		}, {
			"name": "吉首市"
		}, {
			"name": "永顺县"
		}, {
			"name": "泸溪县"
		}, {
			"name": "花垣县"
		}, {
			"name": "龙山县"
		}],
		"city_id": [17, 13]
	}],
	"id": 17
}, {
	"name": "澳门特别行政区",
	"child": [{
		"name": "澳门特别行政区"
	}],
	"id": 33
}];