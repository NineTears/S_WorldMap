--来自pfui的去除地图迷雾，修改by凡人
local areaname = {
    ["RAZORHILL"] = "剃刀岭",
    ["VALLEYOFTRIALS"] = "试炼谷",
    ["KOLKARCRAG"] = "科卡尔峭壁",
    ["SENJINVILLAGE"] = "森金村",
    ["ECHOISLES"] = "回音群岛",
    ["THUNDERRIDGE"] = "雷霆山",
    ["DRYGULCHRAVINE"] = "枯水谷",
    ["TIRAGARDEKEEP"] = "提拉加德城堡",
    ["RAZORMANEGROUNDS"] = "钢鬃营地",
    ["SKULLROCK"] = "骷髅石",
    ["ORGRIMMAR"] = "奥格瑞玛",
    ["REDCLOUDMESA"] = "红云台地",
    ["BLOODHOOFVILLAGE"] = "血蹄村",
    ["RAVAGEDCARAVAN"] = "被破坏的货车",
    ["REDROCKS"] = "赤色石",
    ["THEVENTURECOMINE"] = "风险投资公司矿洞",
    ["WINTERHOOFWATERWELL"] = "冰蹄水井",
    ["THUNDERHORNWATERWELL"] = "雷角水井",
    ["WILDMANEWATERWELL"] = "蛮鬃水井",
    ["BAELDUNDIGSITE"] = "巴尔丹挖掘场",
    ["PALEMANEROCK"] = "白鬃石",
    ["WINDFURYRIDGE"] = "狂风山",
    ["THEGOLDENPLAINS"] = "金色平原",
    ["THEROLLINGPLAINS"] = "草海平原",
    ["THUNDERBLUFF"] = "雷霆崖",
    ["BAELMODAN"] = "巴尔莫丹",
    ["CAMPTAURAJO"] = "陶拉祖营地",
    ["FARWATCHPOST"] = "前沿哨所",
    ["THECROSSROADS"] = "十字路口",
    ["BOULDERLODEMINE"] = "石矿洞",
    ["THESLUDGEFEN"] = "淤泥沼泽",
    ["THEDRYHILLS"] = "无水岭",
    ["DREADMISTPEAK"] = "鬼雾峰",
    ["NORTHWATCHFOLD"] = "北方城堡",
    ["THEFORGOTTENPOOLS"] = "遗忘之池",
    ["LUSHWATEROASIS"] = "甜水绿洲",
    ["THESTAGNANTOASIS"] = "死水绿洲",
    ["FIELDOFGIANTS"] = "巨人旷野",
    ["THEMERCHANTCOAST"] = "商旅海岸",
    ["RATCHET"] = "棘齿城",
    ["RAZORFENDOWNS"] = "剃刀高地",
    ["RAPTORGROUNDS"] = "迅猛龙巢穴",
    ["BRAMBLESCAR"] = "迅猛龙平原",
    ["THORNHILL"] = "荆棘岭",
    ["AGAMAGOR"] = "阿迦玛戈",
    ["BLACKTHORNRIDGE"] = "黑棘山",
    ["HONORSSTAND"] = "荣耀岗哨",
    ["THEMORSHANRAMPART"] = "摩尔沙农场",
    ["GROLDOMFARM"] = "格罗多姆农场",
    ["RAZORFENKRAUL"] = "剃刀沼泽",
    ["LORDAMEREINTERNMENTCAMP"] = "洛丹米尔收容所",
    ["DALARAN"] = "达拉然",
    ["STRAHNBRAD"] = "斯坦恩布莱德",
    ["RUINSOFALTERAC"] = "奥特兰克废墟",
    ["CRUSHRIDGEHOLD"] = "破碎岭城堡",
    ["THEUPLANDS"] = "高地",
    ["GALLOWSCORNER"] = "绞刑场",
    ["GAVINSNAZE"] = "加文高地",
    ["SOFERASNAZE"] = "索菲亚高地",
    ["CORRAHNSDAGGER"] = "考兰之匕",
    ["THEHEADLAND"] = "山头营地",
    ["MISTYSHORE"] = "雾气湖岸",
    ["DANDREDSFOLD"] = "达伦德农场",
    ["GROWLESSCAVE"] = "无草洞",
    ["CHILLWINDPOINT"] = "冰风岗",
    ["NORTHFOLDMANOR"] = "诺斯弗德农场",
    ["GOSHEKFARM"] = "格沙克农场",
    ["DABYRIESFARMSTEAD"] = "达比雷农场",
    ["BOULDERFISTHALL"] = "石拳大厅",
    ["WITHERBARKVILLAGE"] = "枯木村",
    ["REFUGEPOINT"] = "避难谷地",
    ["HAMMERFALL"] = "落锤镇",
    ["STROMGARDEKEEP"] = "激流堡",
    ["FALDIRSCOVE"] = "法迪尔海湾",
    ["CIRCLEOFEASTBINDING"] = "东部禁锢法阵",
    ["CIRCLEOFWESTBINDING"] = "西部禁锢法阵",
    ["CIRCLEOFINNERBINDING"] = "内禁锢法阵",
    ["CIRCLEOFOUTERBINDING"] = "外禁锢法阵",
    ["THANDOLSPAN"] = "萨多尔大桥",
    ["THORADINSWALL"] = "索拉丁之墙",
    ["BOULDERGOR"] = "博德戈尔",
    ["APOCRYPHANSREST"] = "圣者之陵",
    ["ANGORFORTRESS"] = "苦痛堡垒",
    ["LETHLORRAVINE"] = "莱瑟罗峡谷",
    ["KARGATH"] = "卡加斯",
    ["CAMPKOSH"] = "柯什营地",
    ["CAMPBOFF"] = "博夫营地",
    ["CAMPCAGG"] = "卡格营地",
    ["AGMONDSEND"] = "埃格蒙德的营地",
    ["HAMMERTOESDIGSITE"] = "铁趾挖掘场",
    ["VALLEYOFFANGS"] = "巨牙谷",
    ["THEDUSTBOWL"] = "漫尘盆地",
    ["MIRAGEFLATS"] = "雾气平原",
    ["THEMAKERSTERRACE"] = "造物者遗迹",
    ["DUSTWINDGULCH"] = "尘风峡谷",
    ["DARKPORTAL"] = "黑暗之门",
    ["THETAINTEDSCAR"] = "腐烂之痕",
    ["DREADMAULHOLD"] = "巨槌要塞",
    ["NETHERGARDEKEEP"] = "守望堡",
    ["DREADMAULPOST"] = "巨槌岗哨",
    ["SERPENTSCOIL"] = "盘蛇谷",
    ["ALTAROFSTORMS"] = "风暴祭坛",
    ["GARRISONARMORY"] = "要塞军械库",
    ["RISEOFTHEDEFILER"] = "污染者高地",
    ["BULWARK"] = "亡灵壁垒",
    ["DEATHKNELL"] = "丧钟镇",
    ["SOLLIDENFARMSTEAD"] = "索利丹农场",
    ["AGAMANDMILLS"] = "阿加曼德磨坊",
    ["BRILL"] = "布瑞尔",
    ["MONASTARY"] = "血色修道院",
    ["BRIGHTWATERLAKE"] = "澈水湖",
    ["GARRENSHAUNT"] = "加伦鬼屋",
    ["BALNIRFARMSTEAD"] = "巴尼尔农场",
    ["COLDHEARTHMANOR"] = "炉灰庄园",
    ["CRUSADEROUTPOST"] = "十字军前哨",
    ["SCARLETWATCHPOST"] = "血色十字军哨岗",
    ["STILLWATERPOND"] = "静水池",
    ["NIGHTMAREVALE"] = "噩梦谷",
    ["VENOMWEBVALE"] = "毒蛛峡谷",
    ["RUINSOFLORDAERON"] = "洛丹伦废墟",
    ["FENRISISLE"] = "芬里斯岛",
    ["PYREWOODVILLAGE"] = "焚木村",
    ["DEEPELEMMINE"] = "埃利姆矿洞",
    ["THESKITTERINGDARK"] = "粘丝洞",
    ["THESEPULCHER"] = "瑟伯切尔",
    ["OLSENSFARTHING"] = "奥森农场",
    ["THEGREYMANEWALL"] = "格雷迈恩之墙",
    ["BERENSPERIL"] = "博伦的巢穴",
    ["AMBERMILL"] = "安伯米尔",
    ["SHADOWFANGKEEP"] = "影牙城堡",
    ["THEDECREPITFERRY"] = "破旧渡口",
    ["MALDENSORCHARD"] = "玛尔丁果园",
    ["THEDEADFIELD"] = "亡者农场",
    ["THESHININGSTRAND"] = "闪光湖岸",
    ["NORTHTIDESHOLLOW"] = "北流谷",
    ["HEARTHGLEN"] = "壁炉谷",
    ["NORTHRIDGELUMBERCAMP"] = "北山伐木场",
    ["RUINSOFANDORHOL"] = "安多哈尔废墟",
    ["SORROWHILL"] = "悔恨岭",
    ["THEWEEPINGCAVE"] = "哭泣之洞",
    ["FELSTONEFIELD"] = "费尔斯通农场",
    ["DALSONSTEARS"] = "达尔松之泪",
    ["GAHRRONSWITHERING"] = "盖罗恩农场",
    ["THEWRITHINGHAUNT"] = "嚎哭鬼屋",
    ["THEBULWARK"] = "亡灵壁垒",
    ["DARROWMERELAKE"] = "达隆米尔湖",
    ["CAERDARROW"] = "凯尔达隆",
    ["THONDRORILRIVER"] = "索多里尔河",
    ["THEFUNGALVALE"] = "蘑菇谷",
    ["THEMARRISSTEAD"] = "玛瑞斯农场",
    ["THEUNDERCROFT"] = "墓室",
    ["DARROWSHIRE"] = "达隆郡",
    ["CROWNGUARDTOWER"] = "皇冠哨塔",
    ["CORINSCROSSING"] = "考林路口",
    ["TYRSHAND"] = "提尔之手",
    ["LIGHTSHOPECHAPEL"] = "圣光之愿礼拜堂",
    ["THENOXIOUSGLADE"] = "剧毒林地",
    ["EASTWALLTOWER"] = "东墙哨塔",
    ["NORTHDALE"] = "北谷",
    ["ZULMASHAR"] = "祖玛沙尔",
    ["NORTHPASSTOWER"] = "北地哨塔",
    ["QUELLITHIENLODGE"] = "奎尔林斯小屋",
    ["PLAGUEWOOD"] = "病木林",
    ["STRATHOLME"] = "斯坦索姆",
    ["THONDRORILRIVER"] = "索多里尔河",
    ["LAKEMERELDAR"] = "米雷达尔湖",
    ["THEINFECTISSCAR"] = "魔刃之痕",
    ["PESTILENTSCAR"] = "瘟疫之痕",
    ["BLACKWOODLAKE"] = "黑木湖",
    ["TERRORDALE"] = "恐惧谷",
    ["SOUTHSHORE"] = "南海镇",
    ["TARRENMILL"] = "塔伦米尔",
    ["DURNHOLDEKEEP"] = "敦霍尔德城堡",
    ["SOUTHPOINTTOWER"] = "南点哨塔",
    ["HILLSBRADFIELDS"] = "希尔斯布莱德农场",
    ["AZURELOADMINE"] = "碧玉矿洞",
    ["NETHANDERSTEAD"] = "奈杉德哨岗",
    ["DUNGAROK"] = "丹加洛克",
    ["EASTERNSTRAND"] = "东部海滩",
    ["WESTERNSTRAND"] = "西部海岸",
    ["PURGATIONISLE"] = "赎罪岛",
    ["DARROWHILL"] = "达隆山",
    ["THEOVERLOOKCLIFFS"] = "望海崖",
    ["AERIEPEAK"] = "鹰巢山",
    ["QUELDANILLODGE"] = "奎尔丹尼小屋",
    ["SKULKROCK"] = "隐匿石",
    ["SHADRAALOR"] = "沙德拉洛",
    ["JINTHAALOR"] = "辛萨罗",
    ["THEALTAROFZUL"] = "祖尔祭坛",
    ["SERADANE"] = "瑟拉丹",
    ["PLAGUEMISTRAVINE"] = "毒雾峡谷",
    ["VALORWINDLAKE"] = "瓦罗温湖",
    ["AGOLWATHA"] = "亚戈瓦萨",
    ["HIRIWATHA"] = "西利瓦萨",
    ["THECREEPINGRUIN"] = "爬虫废墟",
    ["SHAOLWATHA"] = "沙尔瓦萨",
    ["KHARANOS"] = "卡拉诺斯",
    ["ANVILMAR"] = "安威玛尔",
    ["GNOMERAGON"] = "诺莫瑞根",
    ["GOLBOLARQUARRY"] = "古博拉采掘场",
    ["FROSTMANEHOLD"] = "霜鬃巨魔要塞",
    ["THEGRIZZLEDDEN"] = "灰色洞穴",
    ["BREWNALLVILLAGE"] = "烈酒村",
    ["MISTYPINEREFUGE"] = "雾松避难所",
    ["ICEFLOWLAKE"] = "涌冰湖",
    ["HELMSBEDLAKE"] = "盔枕湖",
    ["COLDRIDGEPASS"] = "寒脊山小径",
    ["CHILLBREEZEVALLEY"] = "寒风峡谷",
    ["SHIMMERRIDGE"] = "闪光岭",
    ["AMBERSTILLRANCH"] = "冻石农场",
    ["THETUNDRIDHILLS"] = "冻土岭",
    ["SOUTHERNGATEOUTPOST"] = "南门哨岗",
    ["NORTHERNGATEOUTPOST"] = "北门哨岗",
    ["IRONFORGE"] = "铁炉堡",
    ["THECAULDRON"] = "大熔炉",
    ["GRIMSILTDIGSITE"] = "煤渣挖掘场",
    ["FIREWATCHRIDGE"] = "观火岭",
    ["THESEAOFCINDERS"] = "灰烬之海",
    ["BLACKCHARCAVE"] = "黑炭谷",
    ["TANNERCAMP"] = "制皮匠营地",
    ["DUSTFIREVALLEY"] = "尘火谷",
    ["DREADMAULROCK"] = "巨槌石",
    ["RUINSOFTHAURISSAN"] = "索瑞森废墟",
    ["BLACKROCKSTRONGHOLD"] = "黑石要塞",
    ["PILLAROFASH"] = "灰烬之柱",
    ["BLACKROCKMOUNTAIN"] = "黑石山",
    ["ALTAROFSTORMS"] = "风暴祭坛",
    ["BLACKROCKPASS"] = "黑石小径",
    ["MORGANSVIGIL"] = "摩根的岗哨",
    ["TERRORWINGPATH"] = "龙翼小径",
    ["DRACODAR"] = "德拉考达尔",
    ["NORTHSHIREVALLEY"] = "北郡山谷",
    ["CRYSTALLAKE"] = "水晶湖",
    ["FARGODEEPMINE"] = "法戈第矿洞",
    ["FORESTSEDGE"] = "林边空地",
    ["BRACKWELLPUMPKINPATCH"] = "布莱克威尔南瓜田",
    ["STONECAIRNLAKE"] = "石碑湖",
    ["GOLDSHIRE"] = "闪金镇",
    ["EASTVALELOGGINGCAMP"] = "东谷伐木场",
    ["TOWEROFAZORA"] = "阿祖拉之塔",
    ["JERODSLANDING"] = "杰罗德码头",
    ["RIDGEPOINTTOWER"] = "山巅之塔",
    ["STORMWIND"] = "暴风城",
    ["THEVICE"] = "罪恶谷",
    ["KARAZHAN"] = "卡拉赞",
    ["DEADMANSCROSSING"] = "死者十字",
    ["DARKSHIRE"] = "夜色镇",
    ["VULGOLOGREMOUND"] = "沃古尔食人魔山",
    ["RAVENHILL"] = "乌鸦岭",
    ["TRANQUILGARDENSCEMETARY"] = "静谧花园墓场",
    ["THEROTTINGORCHARD"] = "烂果园",
    ["BRIGHTWOODGROVE"] = "阳光树林",
    ["THEYORGENFARMSTEAD"] = "约根农场",
    ["RAVENHILLCEMETARY"] = "乌鸦岭墓地",
    ["ADDLESSTEAD"] = "腐草农场",
    ["THEDARKENEDBANK"] = "暗色河滩",
    ["TWILIGHTGROVE"] = "黎明森林",
    ["THEHUSHEDBANK"] = "寂静河岸",
    ["MANORMISTMANTLE"] = "密斯特曼托庄园",
    ["IRONBANDSEXCAVATIONSITE"] = "铁环挖掘场",
    ["MOGROSHSTRONGHOLD"] = "莫格罗什要塞",
    ["THELSAMAR"] = "塞尔萨玛",
    ["STONEWROUGHTDAM"] = "巨石水坝",
    ["THEFARSTRIDERLODGE"] = "旅行者营地",
    ["SILVERSTREAMMINE"] = "银泉矿洞",
    ["THELOCH"] = "洛克湖",
    ["NORTHGATEPASS"] = "北门小径",
    ["STONESPLINTERVALLEY"] = "碎石怪之谷",
    ["VALLEYOFKINGS"] = "国王谷",
    ["GRIZZLEPAWRIDGE"] = "灰爪山",
    ["LAKEEVERSTILL"] = "止水湖",
    ["LAKESHIRE"] = "湖畔镇",
    ["STONEWATCH"] = "石堡",
    ["STONEWATCHFALLS"] = "石堡瀑布",
    ["REDRIDGECANYONS"] = "赤脊峡谷",
    ["ALTHERSMILL"] = "奥瑟尔伐木场",
    ["RENDERSCAMP"] = "撕裂者营地",
    ["RENDERSVALLEY"] = "撕裂者山谷",
    ["GALARDELLVALLEY"] = "加拉德尔山谷",
    ["LAKERIDGEHIGHWAY"] = "湖边大道",
    ["THREECORNERS"] = "三角路口",
    ["ZULGURUB"] = "祖尔格拉布",
    ["BOOTYBAY"] = "藏宝海湾",
    ["LAKENAZFERITI"] = "纳菲瑞提湖",
    ["WILDSHORE"] = "蛮荒海岸",
    ["REBELCAMP"] = "反抗军营地",
    ["NESINGWARYSEXPEDITION"] = "奈辛瓦里远征队营地",
    ["KURZENSCOMPOUND"] = "库尔森的营地",
    ["RUINSOFZULKUNDA"] = "祖昆达废墟",
    ["RUINSOFZULMAMWE"] = "祖玛维废墟",
    ["THEVILEREEF"] = "暗礁海",
    ["MOSHOGGOGREMOUND"] = "莫什奥格食人魔山",
    ["GROMGOLBASECAMP"] = "格罗姆高营地",
    ["ZUULDAIARUINS"] = "祖丹亚废墟",
    ["BALALRUINS"] = "巴拉尔废墟",
    ["KALAIRUINS"] = "卡莱废墟",
    ["BALIAMAHRUINS"] = "巴里亚曼废墟",
    ["ZIATAJAIRUINS"] = "赞塔加废墟",
    ["MIZJAHRUINS"] = "米扎废墟",
    ["JAGUEROISLE"] = "哈圭罗岛",
    ["CRYSTALVEINMINE"] = "水晶矿洞",
    ["RUINSOFABORAZ"] = "阿博拉兹废墟",
    ["RUINSOFJUBUWAL"] = "朱布瓦尔废墟",
    ["MISTVALEVALLEY"] = "薄雾谷",
    ["NEKMANIWELLSPRING"] = "纳克迈尼圣泉",
    ["BLOODSAILCOMPOUND"] = "血帆营地",
    ["VENTURECOBASECAMP"] = "风险投资公司营地",
    ["THEARENA"] = "古拉巴什竞技场",
    ["POOLOFTEARS"] = "泪水之池",
    ["STONARD"] = "斯通纳德",
    ["FALLOWSANCTUARY"] = "农田避难所",
    ["MISTYVALLEY"] = "迷雾谷",
    ["MISTYREEDSTRAND"] = "芦苇海滩",
    ["THEHARBORAGE"] = "避难营",
    ["ITHARIUSSCAVE"] = "伊萨里奥斯的洞穴",
    ["SORROWMURK"] = "忧伤湿地",
    ["SPLINTERSPEARJUNCTION"] = "断矛路口",
    ["STAGALBOG"] = "雄鹿沼泽",
    ["THESHIFTINGMIRE"] = "流沙泥潭",
    ["MOONBROOK"] = "月溪镇",
    ["SALDEANSFARM"] = "萨丁农场",
    ["SENTINELHILL"] = "哨兵岭",
    ["FURLBROWSPUMPKINFARM"] = "法布隆南瓜农场",
    ["JANGOLODEMINE"] = "詹戈洛德矿洞",
    ["GOLDCOASTQUARRY"] = "金海岸矿洞",
    ["WESTFALLLIGHTHOUSE"] = "西部荒野灯塔",
    ["ALEXSTONFARMSTEAD"] = "阿历克斯顿农场",
    ["THEJANSENSTEAD"] = "贾森农场",
    ["THEDEADACRE"] = "死亡农地",
    ["THEMOLSENFARM"] = "摩尔森农场",
    ["THEDAGGERHILLS"] = "匕首岭",
    ["DEMONTSPLACE"] = "迪蒙特荒野",
    ["THEDUSTPLAINS"] = "尘埃平原",
    ["WHELGARSEXCAVATIONSITE"] = "维尔加挖掘场",
    ["MENETHILHARBOR"] = "米奈希尔港",
    ["DUNMODR"] = "丹莫德",
    ["IRONBEARDSTOMB"] = "铁须之墓",
    ["DIREFORGEHILL"] = "恶铁岭",
    ["RAPTORRIDGE"] = "恐龙岭",
    ["BLACKCHANNELMARSH"] = "黑水沼泽",
    ["MOSSHIDEFEN"] = "藓皮沼泽",
    ["THELGANROCK"] = "瑟根石",
    ["BLUEGILLMARSH"] = "蓝腮沼泽",
    ["SALTSPRAYGLEN"] = "盐沫沼泽",
    ["SUNDOWNMARSH"] = "日落沼泽",
    ["THEGREENBELT"] = "绿带草地",
    ["ANGERFANGENCAMPMENT"] = "怒牙营地",
    ["GRIMBATOL"] = "格瑞姆巴托",
    ["DOLANAAR"] = "多兰纳尔",
    ["SHADOWGLEN"] = "幽影谷",
    ["LAKEALAMETH"] = "奥拉密斯湖",
    ["STARBREEZEVILLAGE"] = "星风村",
    ["GNARLPINEHOLD"] = "脊骨堡",
    ["THEORACLEGLADE"] = "神谕林地",
    ["WELLSPRINGLAKE"] = "涌泉湖",
    ["POOLSOFARLITHRIEN"] = "阿里斯瑞恩之池",
    ["RUTTHERANVILLAGE"] = "鲁瑟兰村",
    ["BANETHILHOLLOW"] = "班尼希尔山谷",
    ["DARNASSUS"] = "达纳苏斯",
    ["AUBERDINE"] = "奥伯丁",
    ["RUINSOFMATHYSTRA"] = "玛塞斯特拉废墟",
    ["TOWEROFALTHALAXX"] = "奥萨拉克斯之塔",
    ["BASHALARAN"] = "巴莎兰",
    ["AMETHARAN"] = "亚米萨兰",
    ["GROVEOFTHEANCIENTS"] = "古树之林",
    ["THEMASTERSGLAIVE"] = "主宰之剑",
    ["REMTRAVELSEXCAVATION"] = "雷姆塔维尔挖掘场",
    ["CLIFFSPRINGRIVER"] = "壁泉河",
    ["MAESTRASPOST"] = "迈斯特拉岗哨",
    ["THEZORAMSTRAND"] = "佐拉姆海岸",
    ["ASTRANAAR"] = "阿斯特兰纳",
    ["THESHRINEOFAESSINA"] = "艾森娜神殿",
    ["FIRESCARSHRINE"] = "火痕神殿",
    ["THERUINSOFSTARDUST"] = "星尘废墟",
    ["THEHOWLINGVALE"] = "狼嚎谷",
    ["MYSTRALLAKE"] = "密斯特拉湖",
    ["FALLENSKYLAKE"] = "坠星湖",
    ["IRISLAKE"] = "伊瑞斯湖",
    ["RAYNEWOODRETREAT"] = "林中树居",
    ["NIGHTRUN"] = "夜道谷",
    ["SATYRNAAR"] = "萨提纳尔",
    ["FELFIREHILL"] = "冥火岭",
    ["WARSONGLUMBERCAMP"] = "战歌伐木营地",
    ["BOUGHSHADOW"] = "大树荫",
    ["LAKEFALATHIM"] = "法拉希姆湖",
    ["THISTLEFURVILLAGE"] = "蓟皮村",
    ["THESHIMMERINGFLATS"] = "闪光平原",
    ["CAMPETHOK"] = "伊索克营地",
    ["SPLITHOOFCRAG"] = "裂蹄峭壁",
    ["HIGHPERCH"] = "风巢",
    ["THESCREECHINGCANYON"] = "尖啸峡谷",
    ["FREEWINDPOST"] = "乱风岗",
    ["THEGREATLIFT"] = "升降梯",
    ["DARKCLOUDPINNACLE"] = "黑云峰",
    ["WINDBREAKCANYON"] = "风裂峡谷",
    ["SUNROCKRETREAT"] = "烈日石居",
    ["WINDSHEARCRAG"] = "狂风峭壁",
    ["MIRKFALLONLAKE"] = "暗色湖",
    ["THECHARREDVALE"] = "焦炭谷",
    ["STONETALONPEAK"] = "石爪峰",
    ["WEBWINDERPATH"] = "蛛网小径",
    ["GRIMTOTEMPOST"] = "恐怖图腾岗哨",
    ["CAMPAPARAJE"] = "阿帕拉耶营地",
    ["MALAKAJIN"] = "玛拉卡金",
    ["BOULDERSLIDERAVINE"] = "滚岩峡谷",
    ["SISHIRCANYON"] = "希塞尔山谷",
    ["KODOGRAVEYARD"] = "科多兽坟场",
    ["THUNDERAXEFORTRESS"] = "雷斧堡垒",
    ["MANNOROCCOVEN"] = "玛诺洛克集会所",
    ["SARGERON"] = "萨格隆",
    ["MAGRAMVILLAGE"] = "玛格拉姆村",
    ["GELKISVILLAGE"] = "吉尔吉斯村",
    ["VALLEYOFSPEARS"] = "长矛谷",
    ["NIJELSPOINT"] = "尼耶尔前哨站",
    ["KOLKARVILLAGE"] = "科尔卡村",
    ["SHADOWBREAKRAVINE"] = "破影峡谷",
    ["TETHRISARAN"] = "塔迪萨兰",
    ["ETHELRETHOR"] = "艾瑟雷索",
    ["RANAZJARISLE"] = "拉纳加尔岛",
    ["KORMEKSHUT"] = "考米克小屋",
    ["SHADOWPREYVILLAGE"] = "葬影村",
    ["CAMPMOJACHE"] = "莫沙彻营地",
    ["GRIMTOTEMCOMPOUND"] = "恐怖图腾营地",
    ["THEWRITHINGDEEP"] = "痛苦深渊",
    ["GORDUNNIOUTPOST"] = "戈杜尼前哨站",
    ["FERALSCARVALE"] = "深痕谷",
    ["FRAYFEATHERHIGHLANDS"] = "乱羽高地",
    ["THEFORGOTTENCOAST"] = "被遗忘的海岸",
    ["DREAMBOUGH"] = "梦境之树",
    ["ONEIROS"] = "奥奈罗斯",
    ["RUINSOFRAVENWIND"] = "鸦风废墟",
    ["THETWINCOLOSSALS"] = "双塔山",
    ["SARDORISLE"] = "萨尔多岛",
    ["ISLEOFDREAD"] = "恐怖之岛",
    ["LOWERWILDS"] = "低地荒野",
    ["RUINSOFISILDIEN"] = "伊斯迪尔废墟",
    ["DIREMAUL"] = "厄运之槌",
    ["BRACKENWALLVILLAGE"] = "蕨墙村",
    ["WITCHHILL"] = "女巫岭",
    ["THEDENOFFLAME"] = "火焰洞穴",
    ["THEWYRMBOG"] = "巨龙沼泽",
    ["THERAMOREISLE"] = "塞拉摩岛",
    ["ALCAZISLAND"] = "奥卡兹岛",
    ["BACKBAYWETLANDS"] = "泥潭沼泽",
    ["GADGETZAN"] = "加基森",
    ["STEAMWHEEDLEPORT"] = "热砂港",
    ["ZULFARRAK"] = "祖尔法拉克",
    ["SANDSORROWWATCH"] = "流沙岗哨",
    ["THISTLESHRUBVALLEY"] = "灌木谷",
    ["THEGAPINGCHASM"] = "大裂口",
    ["THENOXIOUSLAIR"] = "腐化之巢",
    ["DUNEMAULCOMPOUND"] = "砂槌营地",
    ["EASTMOONRUINS"] = "东月废墟",
    ["WATERSPRINGFIELD"] = "清泉平原",
    ["ZALASHJISDEN"] = "萨拉辛之穴",
    ["LANDSENDBEACH"] = "天涯海滩",
    ["VALLEYOFTHEWATCHERS"] = "守卫之谷",
    ["SOUTHMOONRUINS"] = "南月废墟",
    ["LOSTRIGGERCOVE"] = "落帆海湾",
    ["NOONSHADERUINS"] = "热影废墟",
    ["BROKENPILLAR"] = "破碎石柱",
    ["ABYSSALSANDS"] = "深沙平原",
    ["SOUTHBREAKSHORE"] = "塔纳利斯南海",
    ["CAVERNSOFTIME"] = "时光之穴",
    ["TIMBERMAWHOLD"] = "木喉要塞",
    ["LEGASHENCAMPMENT"] = "雷加什营地",
    ["THALASSIANBASECAMP"] = "萨拉斯营地",
    ["RUINSOFELDARATH"] = "埃达拉斯废墟",
    ["URSOLAN"] = "乌索兰",
    ["TEMPLEOFARKKORAN"] = "亚考兰神殿",
    ["BAYOFSTORMS"] = "风暴海湾",
    ["THESHATTEREDSTRAND"] = "破碎海岸",
    ["TOWEROFELDARA"] = "埃达拉之塔",
    ["JAGGEDREEF"] = "锯齿暗礁",
    ["SOUTHRIDGEBEACH"] = "南山海滩",
    ["RAVENCRESTMONUMENT"] = "拉文凯斯雕像",
    ["FORLORNRIDGE"] = "凄凉山",
    ["LAKEMENNAR"] = "门纳尔湖",
    ["SHADOWSONGSHRINE"] = "影歌神殿",
    ["HALDARRENCAMPMENT"] = "哈达尔营地",
    ["VALORMOK"] = "瓦罗莫克",
    ["THERUINEDREACHES"] = "废墟海岸",
    ["BITTERREACHES"] = "痛苦海岸",
    ["DEADWOODVILLAGE"] = "死木村",
    ["FELPAWVILLAGE"] = "魔爪村",
    ["JAEDENAR"] = "加德纳尔",
    ["BLOODVENOMFALLS"] = "血毒瀑布",
    ["SHATTERSCARVALE"] = "碎痕谷",
    ["IRONTREEWOODS"] = "铁木森林",
    ["TALONBRANCHGLADE"] = "刺枝林地",
    ["MORLOSARAN"] = "摩罗萨兰",
    ["EMERALDSANCTUARY"] = "翡翠圣地",
    ["JADEFIREGLEN"] = "碧火谷",
    ["RUINSOFCONSTELLAS"] = "克斯特拉斯废墟",
    ["JADEFIRERUN"] = "碧火小径",
    ["FIREPLUMERIDGE"] = "火羽山",
    ["LAKKARITARPITS"] = "拉卡利油沼",
    ["TERRORRUN"] = "恐惧小道",
    ["THESLITHERINGSCAR"] = "巨痕谷",
    ["GOLAKKAHOTSPRINGS"] = "葛拉卡温泉",
    ["THEMARSHLANDS"] = "沼泽地",
    ["IRONSTONEPLATEAU"] = "铁石高原",
    ["LAKEELUNEARA"] = "月神湖",
    ["THESCARABWALL"] = "甲虫之墙",
    ["SOUTHWINDVILLAGE"] = "南风村",
    ["THECRYSTALVALE"] = "水晶谷",
    ["HIVEASHI"] = "亚什虫巢",
    ["HIVEZORA"] = "佐拉虫巢",
    ["HIVEREGAL"] = "雷戈虫巢",
    ["TWILIGHTBASECAMP"] = "暮光营地",
    ["FROSTSABERROCK"] = "霜刀石",
    ["THEHIDDENGROVE"] = "隐秘小林",
    ["TIMBERMAWPOST"] = "木喉岗哨",
    ["WINTERFALLVILLAGE"] = "寒水村",
    ["MAZTHORIL"] = "麦索瑞尔",
    ["FROSTFIREHOTSPRINGS"] = "冰火温泉",
    ["ICETHISTLEHILLS"] = "冰蓟岭",
    ["FROSTWHISPERGORGE"] = "霜语峡谷",
    ["OWLWINGTHICKET"] = "枭翼树丛",
    ["LAKEKELTHERIL"] = "凯斯利尔湖",
    ["STARFALLVILLAGE"] = "坠星村",
    ["EVERLOOK"] = "永望镇",
    ["DARKWHISPERGORGE"] = "暗语峡谷",
    ["DUNBALDAR"] = "丹巴达尔",
    ["ICEBLOODGARRISON"] = "冰血要塞",
    ["FROSTWOLFKEEP"] = "霜狼要塞",
    ["BLEAKHOLLOWCRATER"] = "凄凉荒坑",
    ["NORDRASSILGLADE"] = "诺达希尔森林",
    ["NORDANAAR"] = "诺达纳尔",
    ["BARKSKINPLATEAU"] = "树皮高原",
    ["BARKSKINVILLAGE"] = "树皮村",
    ["CIRCLEOFPOWER"] = "力量法阵",
    ["RUINSOFTELENNAS"] = "特兰纳废墟",
    ["ZULHATHA"] = "祖尔哈萨",
    ["DARKHOLLOWPASS"] = "达克霍洛小径",
    ["THEEMERALDGATEWAY"] = "翡翠之门",
    ["SHANKSREEF"] = "珊瑚暗礁",
    ["CROWNISLAND"] = "皇冠岛",
    ["THEROCK"] = "巨石",
    ["BRIGHTCOAST"] = "明亮海岸",
    ["ZULHAZU"] = "祖尔哈祖",
    ["WALLOWINGCOAST"] = "沉沦海岸",
    ["HAZURRIGLADE"] = "海祖瑞林地",
    ["GORDOSHHEIGHTS"] = "戈尔多什高地",
    ["CAELANSREST"] = "卡兰之墓",
    ["TOWEROFLAPIDIS"] = "拉匹迪斯之塔",
    ["DEEPTIDESANCTUM"] = "深潮圣殿",
    ["SILVERCOAST"] = "银色海岸",
    ["SILVERSANDBAR"] = "银色沙洲",
    ["ZULRAZAR"] = "祖尔拉泽",
    ["TANGLEWOOD"] = "混乱森林",
    ["JADEMINE"] = "翡翠矿井",
    ["RUINSOFZULRAZAR"] = "祖尔拉泽废墟",
    ["GILLIJIMSTRAND"] = "吉利吉姆沙滩",
    ["MAULOGGREFUGE"] = "莫尔奥格避难所",
    ["MAULOGGPOST"] = "莫尔奥格哨所",
    ["KALKORPOINT"] = "卡尔科尔角",
    ["KAZONISLAND"] = "卡松岛",
    ["SOUTHSEASANDBAR"] = "南海沙洲",
    ["DISTILLERYISLE"] = "酿酒岛",
    ["FAELONSFOLLY"] = "费隆之愚",
    ["TELCOBASECAMP"] = "风险投资公司营地",
    ["BIXXLESSTOREHOUSE"] = "比克瑟仓库",
    ["HIGHVALERISE"] = "海瓦尔高地",
    ["THEDERELICTCAMP"] = "被遗弃的营地",
    ["TAZZOSSHACK"] = "塔佐小屋",
    ["THEJAGGEDISLES"] = "锯齿群岛",
    ["GILNEASCITY"] = "吉尔尼斯城",
    ["RAVENSHIRE"] = "拉文郡",
    ["RAVENWOODKEEP"] = "拉文伍德城堡",
    ["BROLOKMOUND"] = "布罗克山丘",
    ["SOUTHMIREORCHARD"] = "南泥果园",
    ["HOLLOWWEBWOODS"] = "空网树林",
    ["HOLLOWWEBCEMETARY"] = "空网墓地",
    ["SHADEMORETAVERN"] = "沙德摩尔旅店",
    ["RUINSOFGREYSHIRE"] = "格雷郡遗址",
    ["NORTHGATETOWER"] = "北门之塔",
    ["ROSEWICKPLANTATION"] = "罗斯威克种植园",
    ["GLAYMORESTEAD"] = "格莱摩尔农场",
    ["THEOVERGROWNACRE"] = "茂草之野",
    ["THEDRYROCKPIT"] = "干岩矿坑",
    ["THEDRYROCKMINE"] = "干岩矿洞",
    ["FREYSHEARKEEP"] = "弗雷希尔要塞",
    ["GREYMANESWATCH"] = "格雷迈恩哨岗",
    ["OLDROCKPASS"] = "旧石峡谷",
    ["STILLWARDCHURCH"] = "寂静守卫教堂",
    ["THEGREYMANEWALL"] = "格雷迈恩之墙",
    ["BLACKTHORNSCAMP"] = "黑荆棘营地",
    ["DAWNSTONEMINE"] = "黎明石矿",
    ["KANEQNUUN"] = "卡纳克努恩",
    ["RUSTGATERIDGE"] = "锈门山脊",
    ["BLACKASHCOALPITS"] = "黑灰矿坑",
    ["BLACKASHMINE"] = "黑灰矿洞",
    ["THEWATERHOLE"] = "水源地",
    ["GAZZIKSWORKSHOP"] = "加兹克工坊",
    ["VENTURECOSLUMS"] = "风险投资公司贫民区",
    ["RUSTGATELUMBERYARD"] = "锈门木材场",
    ["ALAHTHALAS"] = "阿尔萨拉斯",
    ["SILVERSUNMINE"] = "银日矿井",
    ["FELSTRIDERRETREAT"] = "邪行者居所",
    ["THEFARSTRIDE"] = "远行之地",
    ["ISLEOFETERNALAUTUMN"] = "永秋之岛",
    ["ANASTERIANPARK"] = "安纳斯特里亚公园",
    ["BRINTHILIEN"] = "布林希尔林",
    ["RUINSOFNASHALARAN"] = "纳沙拉兰废墟",
    ["THELASTRUNESTONE"] = "最后的符文石",
}

local overlayData = setmetatable(LibMapOverlayData, {__index = function(t,k)
	local v = {}
	rawset(t,k,v)
	return v
end})

local errata = {
	["Interface\\WorldMap\\Tirisfal\\BRIGHTWATERLAKE"] = {offsetX={587,584}},
	["Interface\\WorldMap\\Silverpine\\BERENSPERIL"] = {offsetY={417,415}},
}

local function create_hash(prefix, textureName, textureWidth, textureHeight, offsetX, offsetY, mapPointX, mapPointY)
	local hash = string.format(":%s:%s:%s:%s",textureWidth,textureHeight,offsetX,offsetY)
	if (mapPointX ~= 0 or mapPointY ~= 0) then
		hash = string.format("%s:%s:%s",hash,tostring(mapPointX),tostring(mapPointY))
	end
	if string.sub(textureName, 0, string.len(prefix)) == prefix then
		return string.format("%s%s",string.sub(textureName, string.len(prefix) + 1),hash)
	end
	return string.format("|%s",hash)
end

local function unpack_hash(prefix, hash)
	local _, stored_prefix, textureName, textureWidth, textureHeight, offsetX, offsetY, mapPointX, mapPointY, oldName
	_, _, stored_prefix, textureName, textureWidth, textureHeight, offsetX, offsetY = string.find(hash, "^([|]?)([^:]+):([^:]+):([^:]+):([^:]+):([^:]+)")
	if (not textureName or not offsetY) then
		return
	end
	if (offsetY) then
		_, _, mapPointX, mapPointY = string.find(hash,"^[|]?[^:]+:[^:]+:[^:]+:[^:]+:[^:]+:([^:]+):([^:]+)")
	end
	if (not mapPointY) then
		mapPointX = 0 mapPointY = 0
	end
	if (stored_prefix ~= "|") then
		textureName = string.format("%s%s",prefix,textureName)
		oldName = textureName
	end
	-- coerce to number by addition; cheaper than tonumber()
	return textureName, textureWidth + 0, textureHeight + 0, offsetX + 0, offsetY + 0, mapPointX + 0, mapPointY + 0, oldName
end

local explores = {}
local explorecaches = {}

local exploreEnter = function()
	local pattern = "[^\\]+$" -- 匹配反斜杠之后的所有字符
	local result = string.match(this.name, pattern)
	
	GameTooltip:ClearLines()
	GameTooltip:SetOwner(this, "ANCHOR_TOP")
	GameTooltip:AddLine("未知区域（未汉化）" and areaname[result] or nil, .3, 1, .8)
	GameTooltip:Show()

	if not explorecaches[this.name] then return end
	local r,g,b,a = .4,.4,.4,1
	for texture in pairs(explorecaches[this.name]) do
	  texture:SetVertexColor(1,1,1,1)
	end
end

local exploreLeave = function()
	GameTooltip:Hide()
	if not explorecaches[this.name] then return end
	local r,g,b,a = .4,.4,.4,1
	for texture in pairs(explorecaches[this.name]) do
	  texture:SetVertexColor(r,g,b,a)
	end
end

local function stWorldMapFrame_Update()
	local r,g,b,a = .4,.4,.4,1
	local mapFileName, textureHeight, textureWidth = GetMapInfo()

	if (not mapFileName) then mapFileName = "World" end

	local prefix = string.format("Interface\\WorldMap\\%s\\",mapFileName)
	local numOverlays = GetNumMapOverlays()

	local alreadyknown = {}
	for i=1, numOverlays do
		local textureName, textureWidth, textureHeight, offsetX, offsetY, mapPointX, mapPointY = GetMapOverlayInfo(i)
		local overlayHash = create_hash(textureName, textureWidth, textureHeight, offsetX, offsetY, mapPointX, mapPointY)
		alreadyknown[textureName] = overlayHash
	end

	-- hide all exploration points
	for k, frame in pairs(explores) do
		frame:Hide()
	end

	local zoneData = overlayData[mapFileName]
	local textureCount = 0
	local texturePixelWidth, textureFileWidth, texturePixelHeight, textureFileHeight
	for i, hash in ipairs(zoneData) do
		local textureName, textureWidth, textureHeight, offsetX, offsetY, mapPointX, mapPointY, name = unpack_hash(prefix, hash)

		explores[i] = explores[i] or CreateFrame("Frame", nil, WorldMapDetailFrame)
		local explore = explores[i]
		  explore:SetWidth(12)
		  explore:SetHeight(12)
		  explore:SetPoint("TOPLEFT", "WorldMapDetailFrame", "TOPLEFT", offsetX+textureWidth/2, -offsetY-textureHeight/2)
		  explore:SetScript("OnEnter", exploreEnter)
		  explore:SetScript("OnLeave", exploreLeave)
		  explore:EnableMouse(true)
		  explore:SetFrameLevel(255)
		  explore.name = name
		  explore.tex = explore.tex or explore:CreateTexture("", "OVERLAY")
		  explore.tex:SetBlendMode("ADD")
		  explore.tex:SetTexCoord(.08, .92, .08, .92)
		  explore.tex:SetAllPoints()

		  if not alreadyknown[textureName] then
				explore.tex:SetTexture("Interface\\WorldMap\\WorldMap-MagnifyingGlass")
				explore:Show()
		  else
				explore:Hide()
		  end


			if errata[textureName] and errata[textureName].offsetX and errata[textureName].offsetX[1] == offsetX then
				offsetX = errata[textureName].offsetX[2]
			end
			if errata[textureName] and errata[textureName].offsetY and errata[textureName].offsetY[1] == offsetY then
				offsetY = errata[textureName].offsetY[2]
			end
			local numTexturesHorz = math.ceil(textureWidth / 256)
			local numTexturesVert = math.ceil(textureHeight / 256)
			local neededTextures = textureCount + (numTexturesHorz * numTexturesVert)
			local texture, texturePixelWidth, textureFileWidth, texturePixelHeight, textureFileHeight
			if (neededTextures > NUM_WORLDMAP_OVERLAYS) then
				for j = NUM_WORLDMAP_OVERLAYS + 1, neededTextures do
					_G.WorldMapDetailFrame:CreateTexture(string.format("%s%s","WorldMapOverlay",j), "ARTWORK")
				end
				NUM_WORLDMAP_OVERLAYS = neededTextures
			end
			for j = 1, numTexturesVert do
				if (j < numTexturesVert) then
					texturePixelHeight,textureFileHeight = 256,256
				else
					texturePixelHeight = mod(textureHeight, 256)
					if (texturePixelHeight == 0) then texturePixelHeight = 256 end
					textureFileHeight = 16
					while (textureFileHeight < texturePixelHeight) do
						textureFileHeight = textureFileHeight * 2
					end
				end
				for k = 1, numTexturesHorz do
					if (textureCount > NUM_WORLDMAP_OVERLAYS) then
						return
					end
					texture = _G[string.format("%s%s","WorldMapOverlay",(textureCount + 1))]
					if (k < numTexturesHorz) then
						texturePixelWidth, textureFileWidth = 256,256
					else
						texturePixelWidth = mod(textureWidth, 256)
						if (texturePixelWidth == 0) then texturePixelWidth = 256 end
						textureFileWidth = 16
						while (textureFileWidth < texturePixelWidth) do
							textureFileWidth = textureFileWidth * 2
						end
					end
					texture:SetWidth(texturePixelWidth)
					texture:SetHeight(texturePixelHeight)
					texture:SetTexCoord(0, texturePixelWidth / textureFileWidth, 0, texturePixelHeight / textureFileHeight)
					texture:ClearAllPoints()
					texture:SetPoint("TOPLEFT", "WorldMapDetailFrame", "TOPLEFT", offsetX + (256 *(k - 1)), -(offsetY +(256 *(j - 1))))
					texture:SetTexture(string.format("%s%s",textureName,(((j - 1) * numTexturesHorz) + k)))

					explorecaches[name] = explorecaches[name] or {}
					explorecaches[name][texture] = true

					if not alreadyknown[textureName] then
						texture:SetVertexColor(r,g,b,a)
					else
						texture:SetVertexColor(1,1,1,1)
					end
					texture:Show()
					textureCount = textureCount + 1
				end
			end
	end
	for i = textureCount + 1, NUM_WORLDMAP_OVERLAYS do
		_G[string.format("%s%s","WorldMapOverlay",i)]:Hide()
	end
end

hooksecurefunc("WorldMapFrame_Update", stWorldMapFrame_Update, true)