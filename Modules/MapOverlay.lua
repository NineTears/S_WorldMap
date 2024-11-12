--来自pfui的去除地图迷雾，修改by凡人
local areaname = {
	["RUTTHERANVILLAGE"]="鲁瑟兰村",
	["STARBREEZEVILLAGE"]="星风村",
	["GNARLPINEHOLD"]="脊骨堡",
	["LAKEALAMETH"]="奥拉密斯湖",
	["WELLSPRINGLAKE"]="涌泉湖",
	["THEORACLEGLADE"]="神谕林地",
	["BANETHILHOLLOW"]="班尼希尔山谷",
	["DOLANAAR"]="多兰纳尔",
	["SHADOWGLEN"]="幽影谷",
	["POOLSOFARLITHRIEN"]="阿里斯瑞恩之池",
	["DARNASSUS"]="达纳苏斯",

	["AMBERSTILLRANCH"]="冻石农场",
	["FROSTMANEHOLD"]="霜鬃巨魔要塞",
	["ICEFLOWLAKE"]="涌冰湖",
	["THEGRIZZLEDDEN"]="灰色洞穴",
	["HELMSBEDLAKE"]="盔枕湖",
	["SHIMMERRIDGE"]="闪光岭",
	["CHILLBREEZEVALLEY"]="寒风峡谷",
	["ANVILMAR"]="安威玛尔",
	["MISTYPINEREFUGE"]="雾松避难所",
	["GOLBOLARQUARRY"]="古博拉采掘场",
	["KHARANOS"]="卡拉诺斯",
	["THETUNDRIDHILLS"]="冻土岭",
	["IRONFORGE"]="铁炉堡",
	["COLDRIDGEPASS"]="寒脊山小径",
	["NORTHERNGATEOUTPOST"]="北门哨岗",
	["SOUTHERNGATEOUTPOST"]="南门哨岗",
	["GNOMERAGON"]="诺莫瑞根",
	["BREWNALLVILLAGE"]="烈酒村",

	["EASTVALELOGGINGCAMP"]="东谷伐木场",
	["BRACKWELLPUMPKINPATCH"]="布莱克威尔南瓜田",
	["FORESTSEDGE"]="林边空地",
	["FARGODEEPMINE"]="法戈第矿洞",
	["JERODSLANDING"]="杰罗德码头",
	["STORMWIND"]="暴风城",
	["GOLDSHIRE"]="闪金镇",
	["TOWEROFAZORA"]="阿祖拉之塔",
	["CRYSTALLAKE"]="水晶湖",
	["RIDGEPOINTTOWER"]="山巅之塔",
	["STONECAIRNLAKE"]="石碑湖",
	["NORTHSHIREVALLEY"]="北郡山谷",

	["WINTERHOOFWATERWELL"]="冰蹄水井",
	["THUNDERHORNWATERWELL"]="雷角水井",
	["RAVAGEDCARAVAN"]="被破坏的货车",
	["PALEMANEROCK"]="白鬃石",
	["WINDFURYRIDGE"]="狂风山",
	["REDCLOUDMESA"]="红云台地",
	["THUNDERBLUFF"]="雷霆崖",
	["BAELDUNDIGSITE"]="巴尔丹挖掘场",
	["WILDMANEWATERWELL"]="蛮鬃水井",
	["THEGOLDENPLAINS"]="金色平原",
	["REDROCKS"]="赤色石",
	["BLOODHOOFVILLAGE"]="血蹄村",
	["THEROLLINGPLAINS"]="草海平原",
	["THEVENTURECOMINE"]="风险投资公司矿洞",

	["SCARLETWATCHPOST"]="血色十字军哨岗",
	["SOLLIDENFARMSTEAD"]="索利丹农场",
	["GARRENSHAUNT"]="加伦鬼屋",
	["VENOMWEBVALE"]="毒蛛峡谷",
	["NIGHTMAREVALE"]="噩梦谷",
	["AGAMANDMILLS"]="阿加曼德磨坊",
	["CRUSADEROUTPOST"]="十字军前哨",
	["DEATHKNELL"]="丧钟镇",
	["BALNIRFARMSTEAD"]="巴尼尔农场",
	["BRIGHTWATERLAKE"]="澈水湖",
	["BULWARK"]="亡灵壁垒",
	["RUINSOFLORDAERON"]="洛丹伦废墟",
	["COLDHEARTHMANOR"]="炉灰庄园",
	["BRILL"]="布瑞尔",
	["MONASTARY"]="血色修道院",
	["STILLWATERPOND"]="静水池",

	["RAZORMANEGROUNDS"]="钢鬃营地",
	["VALLEYOFTRIALS"]="试炼谷",
	["SKULLROCK"]="骷髅石",
	["DRYGULCHRAVINE"]="枯水谷",
	["THUNDERRIDGE"]="雷霆山",
	["ORGRIMMAR"]="奥格瑞玛",
	["SENJINVILLAGE"]="森金村",
	["TIRAGARDEKEEP"]="提拉加德城堡",
	["ECHOISLES"]="回音群岛",
	["RAZORHILL"]="剃刀岭",
	["KOLKARCRAG"]="科卡尔峭壁",

	["WESTFALLLIGHTHOUSE"]="西部荒野灯塔",
	["FURLBROWSPUMPKINFARM"]="法布隆南瓜农场",
	["JANGOLODEMINE"]="詹戈洛德矿洞",
	["SALDEANSFARM"]="萨丁农场",
	["THEDUSTPLAINS"]="尘埃平原",
	["SENTINELHILL"]="哨兵岭",
	["DEMONTSPLACE"]="迪蒙特荒野",
	["THEMOLSENFARM"]="摩尔森农场",
	["THEDEADACRE"]="死亡农地",
	["THEJANSENSTEAD"]="贾森农场",
	["THEDAGGERHILLS"]="匕首岭",
	["GOLDCOASTQUARRY"]="金海岸矿洞",
	["ALEXSTONFARMSTEAD"]="阿历克斯顿农场",
	["MOONBROOK"]="月溪镇",

	["THEDECREPITFERRY"]="破旧渡口",
	["FENRISISLE"]="芬里斯岛",
	["THEDEADFIELD"]="亡者农场",
	["MALDENSORCHARD"]="玛尔丁果园",
	["OLSENSFARTHING"]="奥森农场",
	["DEEPELEMMINE"]="埃利姆矿洞",
	["SHADOWFANGKEEP"]="影牙城堡",
	["BERENSPERIL"]="博伦的巢穴",
	["THESEPULCHER"]="瑟伯切尔",
	["PYREWOODVILLAGE"]="焚木村",
	["AMBERMILL"]="安伯米尔",
	["THESKITTERINGDARK"]="粘丝洞",
	["NORTHTIDESHOLLOW"]="北流谷",
	["THEGREYMANEWALL"]="格雷迈恩之墙",
	["THESHININGSTRAND"]="闪光湖岸",

	["SILVERSTREAMMINE"]="银泉矿洞",
	["MOGROSHSTRONGHOLD"]="莫格罗什要塞",
	["STONESPLINTERVALLEY"]="碎石怪之谷",
	["IRONBANDSEXCAVATIONSITE"]="铁环挖掘场",
	["VALLEYOFKINGS"]="国王谷",
	["GRIZZLEPAWRIDGE"]="灰爪山",
	["THELSAMAR"]="塞尔萨玛",
	["THELOCH"]="洛克湖",
	["NORTHGATEPASS"]="北门小径",
	["STONEWROUGHTDAM"]="巨石水坝",
	["THEFARSTRIDERLODGE"]="旅行者营地",

	["RUINSOFMATHYSTRA"]="玛塞斯特拉废墟",
	["TOWEROFALTHALAXX"]="奥萨拉克斯之塔",
	["GROVEOFTHEANCIENTS"]="古树之林",
	["BASHALARAN"]="巴莎兰",
	["AMETHARAN"]="亚米萨兰",
	["THEMASTERSGLAIVE"]="主宰之剑",
	["REMTRAVELSEXCAVATION"]="雷姆塔维尔挖掘场",
	["AUBERDINE"]="奥伯丁",
	["CLIFFSPRINGRIVER"]="壁泉河",

	["STONEWATCH"]="石堡",
	["GALARDELLVALLEY"]="加拉德尔山谷",
	["ALTHERSMILL"]="奥瑟尔伐木场",
	["RENDERSVALLEY"]="撕裂者山谷",
	["LAKEEVERSTILL"]="止水湖",
	["REDRIDGECANYONS"]="赤脊峡谷",
	["STONEWATCHFALLS"]="石堡瀑布",
	["LAKESHIRE"]="湖畔镇",
	["RENDERSCAMP"]="撕裂者营地",
	["THREECORNERS"]="三角路口",
	["LAKERIDGEHIGHWAY"]="湖边大道",

	["ANGERFANGENCAMPMENT"]="怒牙营地",
	["DUNMODR"]="丹莫德",
	["SUNDOWNMARSH"]="日落沼泽",
	["THELGANROCK"]="瑟根石",
	["BLACKCHANNELMARSH"]="黑水沼泽",
	["BLUEGILLMARSH"]="蓝腮沼泽",
	["MOSSHIDEFEN"]="藓皮沼泽",
	["IRONBEARDSTOMB"]="铁须之墓",
	["THEGREENBELT"]="绿带草地",
	["SALTSPRAYGLEN"]="盐沫沼泽",
	["MENETHILHARBOR"]="米奈希尔港",
	["GRIMBATOL"]="格瑞姆巴托",
	["RAPTORRIDGE"]="恐龙岭",
	["DIREFORGEHILL"]="恶铁岭",
	["WHELGARSEXCAVATIONSITE"]="维尔加挖掘场",

	["DARROWHILL"]="达隆山",
	["NETHANDERSTEAD"]="奈杉德哨岗",
	["DURNHOLDEKEEP"]="敦霍尔德城堡",
	["SOUTHSHORE"]="南海镇",
	["HILLSBRADFIELDS"]="希尔斯布莱德农场",
	["TARRENMILL"]="塔伦米尔",
	["AZURELOADMINE"]="碧玉矿洞",
	["SOUTHPOINTTOWER"]="南点哨塔",
	["DUNGAROK"]="丹加洛克",
	["EASTERNSTRAND"]="东部海滩",
	["WESTERNSTRAND"]="西部海岸",
	["PURGATIONISLE"]="赎罪岛",

	["THEYORGENFARMSTEAD"]="约根农场",
	["THEROTTINGORCHARD"]="烂果园",
	["VULGOLOGREMOUND"]="沃古尔食人魔山",
	["TWILIGHTGROVE"]="黎明森林",
	["ADDLESSTEAD"]="腐草农场",
	["MANORMISTMANTLE"]="密斯特曼托庄园",
	["THEDARKENEDBANK"]="暗色河滩",
	["RAVENHILL"]="乌鸦岭",
	["THEHUSHEDBANK"]="寂静河岸",
	["DARKSHIRE"]="夜色镇",
	["BRIGHTWOODGROVE"]="阳光树林",
	["TRANQUILGARDENSCEMETARY"]="静谧花园墓场",
	["RAVENHILLCEMETARY"]="乌鸦岭墓地",

	["LORDAMEREINTERNMENTCAMP"]="洛丹米尔收容所",
	["DANDREDSFOLD"]="达伦德农场",
	["MISTYSHORE"]="雾气湖岸",
	["CHILLWINDPOINT"]="冰风岗",
	["GALLOWSCORNER"]="绞刑场",
	["CORRAHNSDAGGER"]="考兰之匕",
	["CRUSHRIDGEHOLD"]="破碎岭城堡",
	["THEUPLANDS"]="高地",
	["GAVINSNAZE"]="加文高地",
	["GROWLESSCAVE"]="无草洞",
	["RUINSOFALTERAC"]="奥特兰克废墟",
	["STRAHNBRAD"]="斯坦恩布莱德",
	["THEHEADLAND"]="山头营地",
	["SOFERASNAZE"]="索菲亚高地",
	["DALARAN"]="达拉然",

	["THEFORGOTTENPOOLS"]="遗忘之池",
	["THESTAGNANTOASIS"]="死水绿洲",
	["THEMORSHANRAMPART"]="摩尔沙农场",
	["DREADMISTPEAK"]="鬼雾峰",
	["THEDRYHILLS"]="无水岭",
	["BOULDERLODEMINE"]="石矿洞",
	["THESLUDGEFEN"]="淤泥沼泽",
	["THECROSSROADS"]="十字路口",
	["NORTHWATCHFOLD"]="北方城堡",
	["RAPTORGROUNDS"]="迅猛龙巢穴",
	["THORNHILL"]="荆棘岭",
	["THEMERCHANTCOAST"]="商旅海岸",
	["LUSHWATEROASIS"]="甜水绿洲",
	["RATCHET"]="棘齿城",
	["HONORSSTAND"]="荣耀岗哨",
	["BRAMBLESCAR"]="迅猛龙平原",
	["BLACKTHORNRIDGE"]="黑棘山",
	["BAELMODAN"]="巴尔莫丹",
	["RAZORFENKRAUL"]="剃刀沼泽",
	["RAZORFENDOWNS"]="剃刀高地",
	["CAMPTAURAJO"]="陶拉祖营地",
	["GROLDOMFARM"]="格罗多姆农场",
	["FARWATCHPOST"]="前沿哨所",
	["AGAMAGOR"]="阿迦玛戈",
	["FIELDOFGIANTS"]="巨人旷野",

	["NESINGWARYSEXPEDITION"]="奈辛瓦里远征队营地",
	["RUINSOFJUBUWAL"]="朱布瓦尔废墟",
	["ZIATAJAIRUINS"]="赞塔加废墟",
	["BOOTYBAY"]="藏宝海湾",
	["NEKMANIWELLSPRING"]="纳克迈尼圣泉",
	["RUINSOFABORAZ"]="阿博拉兹废墟",
	["CRYSTALVEINMINE"]="水晶矿洞",
	["MIZJAHRUINS"]="米扎废墟",
	["WILDSHORE"]="蛮荒海岸",
	["BLOODSAILCOMPOUND"]="血帆营地",
	["JAGUEROISLE"]="哈圭罗岛",
	["GROMGOLBASECAMP"]="格罗姆高营地",
	["MOSHOGGOGREMOUND"]="莫什奥格食人魔山",
	["KALAIRUINS"]="卡莱废墟",
	["RUINSOFZULMAMWE"]="祖玛维废墟",
	["MISTVALEVALLEY"]="薄雾谷",
	["THEARENA"]="古拉巴什竞技场",
	["ZUULDAIARUINS"]="祖丹亚废墟",
	["BALIAMAHRUINS"]="巴里亚曼废墟",
	["LAKENAZFERITI"]="纳菲瑞提湖",
	["KURZENSCOMPOUND"]="库尔森的营地",
	["RUINSOFZULKUNDA"]="祖昆达废墟",
	["ZULGURUB"]="祖尔格拉布",
	["THEVILEREEF"]="暗礁海",
	["VENTURECOBASECAMP"]="风险投资公司营地",
	["BALALRUINS"]="巴拉尔废墟",
	["REBELCAMP"]="反抗军营地",

	["SPLINTERSPEARJUNCTION"]="断矛路口",
	["THEHARBORAGE"]="避难营",
	["FALLOWSANCTUARY"]="农田避难所",
	["MISTYREEDSTRAND"]="芦苇海滩",
	["POOLOFTEARS"]="泪水之池",
	["THESHIFTINGMIRE"]="流沙泥潭",
	["MISTYVALLEY"]="迷雾谷",
	["ITHARIUSSCAVE"]="伊萨里奥斯的洞穴",
	["STONARD"]="斯通纳德",
	["STAGALBOG"]="雄鹿沼泽",
	["SORROWMURK"]="忧伤湿地",

	["CIRCLEOFINNERBINDING"]="内禁锢法阵",
	["CIRCLEOFOUTERBINDING"]="外禁锢法阵",
	["NORTHFOLDMANOR"]="诺斯弗德农场",
	["BOULDERGOR"]="博德戈尔",
	["STROMGARDEKEEP"]="激流堡",
	["FALDIRSCOVE"]="法迪尔海湾",
	["THANDOLSPAN"]="萨多尔大桥",
	["BOULDERFISTHALL"]="石拳大厅",
	["GOSHEKFARM"]="格沙克农场",
	["HAMMERFALL"]="落锤镇",
	["WITHERBARKVILLAGE"]="枯木村",
	["DABYRIESFARMSTEAD"]="达比雷农场",
	["CIRCLEOFEASTBINDING"]="东部禁锢法阵",
	["REFUGEPOINT"]="避难谷地",
	["THORADINSWALL"]="索拉丁之墙",
	["CIRCLEOFWESTBINDING"]="西部禁锢法阵",

	["CAMPCAGG"]="卡格营地",
	["KARGATH"]="卡加斯",
	["CAMPKOSH"]="柯什营地",
	["LETHLORRAVINE"]="莱瑟罗峡谷",
	["APOCRYPHANSREST"]="圣者之陵",
	["AGMONDSEND"]="埃格蒙德的营地",
	["CAMPBOFF"]="博夫营地",
	["THEDUSTBOWL"]="漫尘盆地",
	["HAMMERTOESDIGSITE"]="铁趾挖掘场",
	["VALLEYOFFANGS"]="巨牙谷",
	["ANGORFORTRESS"]="苦痛堡垒",
	["MIRAGEFLATS"]="雾气平原",
	["DUSTWINDGULCH"]="尘风峡谷",
	["THEMAKERSTERRACE"]="造物者遗迹",

	["JINTHAALOR"]="辛萨罗",
	["THEOVERLOOKCLIFFS"]="望海崖",
	["AERIEPEAK"]="鹰巢山",
	["PLAGUEMISTRAVINE"]="毒雾峡谷",
	["THEALTAROFZUL"]="祖尔祭坛",
	["HIRIWATHA"]="西利瓦萨",
	["QUELDANILLODGE"]="奎尔丹尼小屋",
	["VALORWINDLAKE"]="瓦罗温湖",
	["SHADRAALOR"]="沙德拉洛",
	["AGOLWATHA"]="亚戈瓦萨",
	["THECREEPINGRUIN"]="爬虫废墟",
	["SERADANE"]="瑟拉丹",
	["SKULKROCK"]="隐匿石",
	["SHAOLWATHA"]="沙尔瓦萨",

	["GOLAKKAHOTSPRINGS"]="葛拉卡温泉",
	["THESLITHERINGSCAR"]="巨痕谷",
	["FIREPLUMERIDGE"]="火羽山",
	["TERRORRUN"]="恐惧小道",
	["THEMARSHLANDS"]="沼泽地",
	["IRONSTONEPLATEAU"]="铁石高原",
	["LAKKARITARPITS"]="拉卡利油沼",

	["THISTLESHRUBVALLEY"]="灌木谷",
	["VALLEYOFTHEWATCHERS"]="守卫之谷",
	["LANDSENDBEACH"]="天涯海滩",
	["ABYSSALSANDS"]="深沙平原",
	["ZALASHJISDEN"]="萨拉辛之穴",
	["CAVERNSOFTIME"]="时光之穴",
	["EASTMOONRUINS"]="东月废墟",
	["GADGETZAN"]="加基森",
	["BROKENPILLAR"]="破碎石柱",
	["SOUTHMOONRUINS"]="南月废墟",
	["ZULFARRAK"]="祖尔法拉克",
	["THEGAPINGCHASM"]="大裂口",
	["SOUTHBREAKSHORE"]="塔纳利斯南海",
	["DUNEMAULCOMPOUND"]="砂槌营地",
	["THENOXIOUSLAIR"]="腐化之巢",
	["WATERSPRINGFIELD"]="清泉平原",
	["LOSTRIGGERCOVE"]="落帆海湾",
	["STEAMWHEEDLEPORT"]="热砂港",
	["NOONSHADERUINS"]="热影废墟",
	["SANDSORROWWATCH"]="流沙岗哨",

	["THEWYRMBOG"]="巨龙沼泽",
	["ALCAZISLAND"]="奥卡兹岛",
	["THERAMOREISLE"]="塞拉摩岛",
	["WITCHHILL"]="女巫岭",
	["BRACKENWALLVILLAGE"]="蕨墙村",
	["BACKBAYWETLANDS"]="泥潭沼泽",
	["THEDENOFFLAME"]="火焰洞穴",

	["THEGREATLIFT"]="升降梯",
	["DARKCLOUDPINNACLE"]="黑云峰",
	["THESHIMMERINGFLATS"]="闪光平原",
	["SPLITHOOFCRAG"]="裂蹄峭壁",
	["CAMPETHOK"]="伊索克营地",
	["WINDBREAKCANYON"]="风裂峡谷",
	["FREEWINDPOST"]="乱风岗",
	["HIGHPERCH"]="风巢",
	["THESCREECHINGCANYON"]="尖啸峡谷",

	["GRIMSILTDIGSITE"]="煤渣挖掘场",
	["THESEAOFCINDERS"]="灰烬之海",
	["TANNERCAMP"]="制皮匠营地",
	["DUSTFIREVALLEY"]="尘火谷",
	["FIREWATCHRIDGE"]="观火岭",
	["THECAULDRON"]="大熔炉",
	["BLACKCHARCAVE"]="黑炭谷",

	["THISTLEFURVILLAGE"]="蓟皮村",
	["THESHRINEOFAESSINA"]="艾森娜神殿",
	["THEZORAMSTRAND"]="佐拉姆海岸",
	["LAKEFALATHIM"]="法拉希姆湖",
	["MAESTRASPOST"]="迈斯特拉岗哨",
	["ASTRANAAR"]="阿斯特兰纳",
	["IRISLAKE"]="伊瑞斯湖",
	["THERUINSOFSTARDUST"]="星尘废墟",
	["FIRESCARSHRINE"]="火痕神殿",
	["MYSTRALLAKE"]="密斯特拉湖",
	["BOUGHSHADOW"]="大树荫",
	["THEHOWLINGVALE"]="狼嚎谷",
	["FELFIREHILL"]="冥火岭",
	["NIGHTRUN"]="夜道谷",
	["WARSONGLUMBERCAMP"]="战歌伐木营地",
	["RAYNEWOODRETREAT"]="林中树居",
	["FALLENSKYLAKE"]="坠星湖",
	["SATYRNAAR"]="萨提纳尔",

	["SHADOWPREYVILLAGE"]="葬影村",
	["THUNDERAXEFORTRESS"]="雷斧堡垒",
	["ETHELRETHOR"]="艾瑟雷索",
	["GELKISVILLAGE"]="吉尔吉斯村",
	["VALLEYOFSPEARS"]="长矛谷",
	["RANAZJARISLE"]="拉纳加尔岛",
	["MAGRAMVILLAGE"]="玛格拉姆村",
	["MANNOROCCOVEN"]="玛诺洛克集会所",
	["SARGERON"]="萨格隆",
	["KOLKARVILLAGE"]="科尔卡村",
	["KORMEKSHUT"]="考米克小屋",
	["SHADOWBREAKRAVINE"]="破影峡谷",
	["KODOGRAVEYARD"]="科多兽坟场",
	["NIJELSPOINT"]="尼耶尔前哨站",
	["TETHRISARAN"]="塔迪萨兰",

	["DRACODAR"]="德拉考达尔",
	["RUINSOFTHAURISSAN"]="索瑞森废墟",
	["DREADMAULROCK"]="巨槌石",
	["MORGANSVIGIL"]="摩根的岗哨",
	["ALTAROFSTORMS"]="风暴祭坛",
	["TERRORWINGPATH"]="龙翼小径",
	["BLACKROCKPASS"]="黑石小径",
	["PILLAROFASH"]="灰烬之柱",
	["BLACKROCKSTRONGHOLD"]="黑石要塞",
	["BLACKROCKMOUNTAIN"]="黑石山",

	["DREADMAULPOST"]="巨槌岗哨",
	["THETAINTEDSCAR"]="腐烂之痕",
	["DREADMAULHOLD"]="巨槌要塞",
	["GARRISONARMORY"]="要塞军械库",
	["ALTAROFSTORMS"]="风暴祭坛",
	["SERPENTSCOIL"]="盘蛇谷",
	["DARKPORTAL"]="黑暗之门",
	["NETHERGARDEKEEP"]="守望堡",
	["RISEOFTHEDEFILER"]="污染者高地",

	["SHADOWSONGSHRINE"]="影歌神殿",
	["TIMBERMAWHOLD"]="木喉要塞",
	["BAYOFSTORMS"]="风暴海湾",
	["THESHATTEREDSTRAND"]="破碎海岸",
	["JAGGEDREEF"]="锯齿暗礁",
	["BITTERREACHES"]="痛苦海岸",
	["TOWEROFELDARA"]="埃达拉之塔",
	["FORLORNRIDGE"]="凄凉山",
	["TEMPLEOFARKKORAN"]="亚考兰神殿",
	["LEGASHENCAMPMENT"]="雷加什营地",
	["URSOLAN"]="乌索兰",
	["RUINSOFELDARATH"]="埃达拉斯废墟",
	["SOUTHRIDGEBEACH"]="南山海滩",
	["VALORMOK"]="瓦罗莫克",
	["THALASSIANBASECAMP"]="萨拉斯营地",
	["RAVENCRESTMONUMENT"]="拉文凯斯雕像",
	["HALDARRENCAMPMENT"]="哈达尔营地",
	["THERUINEDREACHES"]="废墟海岸",
	["LAKEMENNAR"]="门纳尔湖",

	["RUINSOFCONSTELLAS"]="克斯特拉斯废墟",
	["EMERALDSANCTUARY"]="翡翠圣地",
	["FELPAWVILLAGE"]="魔爪村",
	["TALONBRANCHGLADE"]="刺枝林地",
	["MORLOSARAN"]="摩罗萨兰",
	["JADEFIRERUN"]="碧火小径",
	["SHATTERSCARVALE"]="碎痕谷",
	["JAEDENAR"]="加德纳尔",
	["BLOODVENOMFALLS"]="血毒瀑布",
	["DEADWOODVILLAGE"]="死木村",
	["JADEFIREGLEN"]="碧火谷",
	["IRONTREEWOODS"]="铁木森林",

	["THENOXIOUSGLADE"]="剧毒林地",
	["QUELLITHIENLODGE"]="奎尔林斯小屋",
	["NORTHPASSTOWER"]="北地哨塔",
	["TERRORDALE"]="恐惧谷",
	["BLACKWOODLAKE"]="黑木湖",
	["EASTWALLTOWER"]="东墙哨塔",
	["DARROWSHIRE"]="达隆郡",
	["CORINSCROSSING"]="考林路口",
	["THEMARRISSTEAD"]="玛瑞斯农场",
	["NORTHDALE"]="北谷",
	["PLAGUEWOOD"]="病木林",
	["LAKEMERELDAR"]="米雷达尔湖",
	["THEINFECTISSCAR"]="魔刃之痕",
	["PESTILENTSCAR"]="瘟疫之痕",
	["ZULMASHAR"]="祖玛沙尔",
	["CROWNGUARDTOWER"]="皇冠哨塔",
	["THONDRORILRIVER"]="索多里尔河",
	["LIGHTSHOPECHAPEL"]="圣光之愿礼拜堂",
	["TYRSHAND"]="提尔之手",
	["STRATHOLME"]="斯坦索姆",
	["THEFUNGALVALE"]="蘑菇谷",
	["THEUNDERCROFT"]="墓室",

	["BOULDERSLIDERAVINE"]="滚岩峡谷",
	["WEBWINDERPATH"]="蛛网小径",
	["MIRKFALLONLAKE"]="暗色湖",
	["CAMPAPARAJE"]="阿帕拉耶营地",
	["SISHIRCANYON"]="希塞尔山谷",
	["STONETALONPEAK"]="石爪峰",
	["GRIMTOTEMPOST"]="恐怖图腾岗哨",
	["MALAKAJIN"]="玛拉卡金",
	["WINDSHEARCRAG"]="狂风峭壁",
	["THECHARREDVALE"]="焦炭谷",
	["SUNROCKRETREAT"]="烈日石居",

	["DARROWMERELAKE"]="达隆米尔湖",
	["RUINSOFANDORHOL"]="安多哈尔废墟",
	["THEBULWARK"]="亡灵壁垒",
	["FELSTONEFIELD"]="费尔斯通农场",
	["THEWEEPINGCAVE"]="哭泣之洞",
	["CAERDARROW"]="凯尔达隆",
	["SORROWHILL"]="悔恨岭",
	["GAHRRONSWITHERING"]="盖罗恩农场",
	["HEARTHGLEN"]="壁炉谷",
	["DALSONSTEARS"]="达尔松之泪",
	["THEWRITHINGHAUNT"]="嚎哭鬼屋",
	["NORTHRIDGELUMBERCAMP"]="北山伐木场",
	["THONDRORILRIVER"]="索多里尔河",

	["THEFORGOTTENCOAST"]="被遗忘的海岸",
	["FRAYFEATHERHIGHLANDS"]="乱羽高地",
	["RUINSOFRAVENWIND"]="鸦风废墟",
	["THETWINCOLOSSALS"]="双塔山",
	["DREAMBOUGH"]="梦境之树",
	["GORDUNNIOUTPOST"]="戈杜尼前哨站",
	["ISLEOFDREAD"]="恐怖之岛",
	["LOWERWILDS"]="低地荒野",
	["FERALSCARVALE"]="深痕谷",
	["RUINSOFISILDIEN"]="伊斯迪尔废墟",
	["ONEIROS"]="奥奈罗斯",
	["DIREMAUL"]="厄运之槌",
	["SARDORISLE"]="萨尔多岛",
	["CAMPMOJACHE"]="莫沙彻营地",
	["THEWRITHINGDEEP"]="痛苦深渊",
	["GRIMTOTEMCOMPOUND"]="恐怖图腾营地",

	["WINTERFALLVILLAGE"]="寒水村",
	["ICETHISTLEHILLS"]="冰蓟岭",
	["LAKEKELTHERIL"]="凯斯利尔湖",
	["STARFALLVILLAGE"]="坠星村",
	["EVERLOOK"]="永望镇",
	["FROSTFIREHOTSPRINGS"]="冰火温泉",
	["FROSTWHISPERGORGE"]="霜语峡谷",
	["THEHIDDENGROVE"]="隐秘小林",
	["DARKWHISPERGORGE"]="暗语峡谷",
	["FROSTSABERROCK"]="霜刀石",
	["OWLWINGTHICKET"]="枭翼树丛",
	["TIMBERMAWPOST"]="木喉岗哨",
	["MAZTHORIL"]="麦索瑞尔",

	["THESCARABWALL"]="甲虫之墙",
	["THECRYSTALVALE"]="水晶谷",
	["HIVEASHI"]="亚什虫巢",
	["SOUTHWINDVILLAGE"]="南风村",
	["TWILIGHTBASECAMP"]="暮光营地",
	["HIVEZORA"]="佐拉虫巢",
	["HIVEREGAL"]="雷戈虫巢",

	["THEVICE"]="罪恶谷",
	["KARAZHAN"]="卡拉赞",
	["DEADMANSCROSSING"]="死者十字",

	["DUNBALDAR"]="丹巴达尔",
	["ICEBLOODGARRISON"]="冰血要塞",

	["LAKEELUNEARA"]="月神湖",
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