





gg.toast('加载中')
ddd = "脚本更新时间21.08.24"
pshare = ''
umenu = true
fasthome = true
fastvalue = false
echanged = false
fastmax = 0
crset = {enable = false, level = 0, map = ''}
wrset = {enable = false, level = 0, map = ''}
huiset = false
psettings = {
  crspeed=3,
  crdelay=1500,
  crabsorb=100,
  wrdelay=1100,
  warpdis=6,
  portalspeed=true,
  fasthome=true,
  nodamage=true,
  ggspeed=false,
  showmenu = true,
  smcrdelay = 1000,
  smwrdelay = 1000,
  portaldef = false,
  fhspeed = 100,
  cmimage = 1,
  aeleven = false
  }
  
scriptv = {process ='com.tgc.sky.android',version=175117}
teleparr = {spec = false,follow = false,collect = false,enable = false,hide = false,arr = 1}
gameinfo = gg.getTargetInfo()
crarray = {}
wrarray = {}
rmarray = {}
px = 0.0
py = 0.0
pz = 0.0
mev = 0
andro = gg.ANDROID_SDK_INT
resettick = -1
magictick = -1
maxemote = ''
reached = ''

pbase = 0x00
prange = {a = 0,b = -1}
rbootloader = gg.getRangesList('libBootloader.so')[1].start
poffsets = {
  sival = -1096122630,
  ptoplayer = 0x1872A90,
  ptoentity = 0x1AEBDF0,
  ptopbase = 0x3DB2D8,
  ptonentity = 0xC8936C,
  ptonworld = 0x63BD0C,
  ptofps = 0x17D6648,
  ptocwings = 0x1767BD0,
  wlevel = 0x22400,
  positX = 0x1C968,
  positY = 0x1C96C,
  positZ = 0x1C970,
  bheight = 0x00,
  pose = 0x1FCC0,
  pwing = 0x223DC,
  ewing = 0x24018,
  eprop = 0x24034,
  famount = 0x25558,
  gesture = 0x2C4C4,
  magic = 0x2B788,
  bsize = 0x25494,
  uemote = -0x43D20,
  eflowers = 0xB266A8,
  pshout = 0x22DE0,
  pdamage = 0x2245C,
  wwings = 0x4E066C,
  wobjs = 0x8F88A4,
  wbtns = 0x91E178,
  gohome = 0x23C18,
  elist = 0x138BD73,
  gspeed = 0x156150C,
  eused = 0x2B48C,
  vcandles = 0x501B44,
  gchat = 0x93F224,
  ucandle = 0x595400,
  fullmagic = 0x27B68,
  mymagic = 0x23A18,
  mportal = 0x17438,
  mcandles = 0x266F8,
  sglow = 0x21D00,
  wwind = 0x9DC4BC,
  pwalk = 0x2D9FAE8,
  cfrags = 0x91ABD0,
  gcamera = 0xF9086C,
  ecrabs = 0x5A49CC,
  uihook = 0x94143C,
  shoutscale = 0x255A8,
  daily = 0x1303A24,
  wingmap = 0x12CE41C,
  enode = 0x1397DC0
  }

allmagics = {}
sarray = {}
candles = {}
flowers = {}
nodes = {}
spirits = {}
emotelist = {}
myemotes = {}
eoffsets = {
  wforce = 0x00,
  jforce = 0x00,
  sspeed = 0x00,
  cspeed = 0x00,
  cloud = 0x00,
  graphic = 0x00,
  ground = 0x00,
  jump = 0x00,
  gravity = 0x00,
  slide = 0x00,
  world = 0x00,
  nworld = 0x00,
  nentity = 0x00,
  ncamera = 0x00,
  brighter = 0x00,
  gnode = 0x00,
  gframe = 0x00,
  gspirits = 0x00,
  pdesk = 0x00,
  glight = 0x00
}
mid = {
  {'💫小',1692428656,0},
  {'💫超小',2142718166,0},
  {'💫大',891098028,0},
  {'💫超大',-1879316162,0},
  {'💫发光',1097748727,0},
  {'💫元气满满魔法',1750685908,0},
  {'💫漂浮魔法',1860519737,0},
  {'💫冥龙驱虫剂魔法',1067647386,0},
  {'💫黑暗抗性魔法',383062578,0},
  {'💫雨水抗性魔法',-1463943689,0},
  {'💫烛光多多魔法',-1727483534,0},
  {'💞飞行祝福魔法',-1362469224,0},
  {'💞友谊魔法（背背）',1405645877,0},
  {'💞友谊魔法（熊抱）',1677246236,0},
  {'💞友谊魔法（传送）',998754260,0},
  {'🙀呼喊魔法（螃蟹）',1725047129,0},
  {'🙀呼喊魔法（水母）',-957441587,0},
  {'🙀呼喊魔法（蝴蝶）',1814753890,0},
  {'🧸灯笼',1319710173,0},
  {'🧸桌子',256924066,0},
  {'🧸竖琴',-1001892262,0},
  {'🧸秋千',1064080243,0},
  {'🧸跷跷板',-2095749161,0},
  {'🧸茶桌',10058409,0},
  {'️🧸透明伞',1167393926,0},
  {'👗绿芽斗篷',2079599063,1},
  {'👗TGC斗篷',540856305,1},
  {'👗幽灵蝙蝠斗篷',625581156,1},
  {'👗蜘蛛丝斗篷',930203946,1},
  {'👗雪花斗篷',-784831205,1},
  {'👗圣诞斗篷',1306675982,1},
  {'👗白鸟斗篷',-1623262339,1},
  {'👗花瓣斗篷',-6043825,1},
  {'👗导光灯泡',1375571404,1},
  {'👗春天的斗篷', -445538750,1},
  {'👗樱花斗篷',162066154,1},
  {'👗海洋斗篷',329684861,1},
  {'👗梦想季红丝绒斗篷',-308941587,1},
  {'👗梦想季节毕业披风',-1822337532,1},
  {'️👗彩虹斗篷', -195929339,1},
  {'️👑彩虹花', 2141511649,2},
  {'️👑彩虹流苏', -290700605,2},
  {'👑南瓜帽',1046521292,2},
  {'👑巫师帽',1983755432,2},
  {'👑舞狮帽',2093744529,2},
 {'👑双丸头',-2099997114,2},
 {'👑毡帽',-823266018,2},
 {'👑樱花发型',373243257,2},
 {'👑梦想季节发型',1059767859,2},
 {'🤡白狐面具', 784922793,2},
 {'🤡红兔面具', 964659005,2},
 {'🤡尖嘴冬季面具', -218615327,2},
 {'🤡牛头人面具',-849020465,2},
 {'🤡玫瑰脸面具',-938578505,2},
 {'🤡春红脸面具',-1636163586,2},
 {'🤡梦幻季凤凰面具',771982951,2},
 {'🤡梦想季毕业面具',144876107,2},
 {'🤡鹿角',1909998088,2},
 {'🤡圣诞帽',-1409683913,2},
 {'🤡宴会领结',8361886,2},
 {'👑橙色头饰',-1616733323,2},
 {'🤡海洋项链',-1938239955,2},
 {'️🌠绿尾迹',1318288330,0},
 {'️🌠黑尾迹',-176902809,0},
 {'️🌠蓝尾迹',-1951801352,0},
 {'️🌠青色尾迹',1918290563,0},
 {'️🌠绿色尾迹',637646527,0},
 {'️🌠紫粉尾迹',-1527316661,0},
 {'️🌠橙色尾迹',1237283438,0},
 {'️🌠紫色尾迹',470393304,0},
 {'️🌠紫色尾迹',-1071076330,0},
 {'️🌠红色尾迹',-1304862813,0},
 {'️🌠黄色尾迹',-1354381164,0},
 {'️🌠彩虹尾迹',147016038,0},
 {'狐狸背饰',2237536272,0},
 {'小王子剑裤',3799734077,0},
 {'围巾披肩斗篷',2207305370,1},
 {'小行星斗篷',1402240423,1},
 {'🆕️单人躺椅',3136256372,0},
 {'🆕️双人木椅',472595010,0},
 {'🆕️双人木椅',2428135093,0},
{'🆕️小王子头发',4123817368,0},
{'🆕️火盆2',160072902,0},
{'🆕️夏伞',2878211958,0},
{'🆕️夏帽',2052387583,2},
{'🆕️躺椅',2875484078,0},
{'🆕️金色斗篷',330655056,1},
{'🆕️呼喊魔法',2413103828,0},
 {'❌取消所有魔法',0,0}
};
windwallset = {
     {"遇镜", 4726487308484830694},
   {"开始", 4767182666960336740 },
    {"Prairie_Village", 4885521378999697401},
    {"DayHubCave", 4769030533679547514},
    {"Rain", 4814944809953808321},
    {"RainForest", 4834051251148619776},
    {"RainShelter", 4810601017446974458},

    {"RainMid", 4829954002675894547},
    {"RainEnd", 4817725702471155712},
    {"Rain_BaseCamp", 4843677694493622950},
    {"Sunset", -4560560199779603680},
    {"Sunset_Citadel", 4902590410129506426},
    {"SunsetEnd", 4792210659019202290},
    {"Sunset_YetiPark", -4379302222571855137},
    {"SunsetVillage", 4648938001794681213},
    {"SunsetColosseum", 4909629393377870248},
    {"DuskStart", 4793244457638695424},
    {"Dusk", 4803651955820274913},
    {"DuskGraveyard", 4807836432909636834},
    {"DuskOasis", 4845558260964967524},
    {"Dusk_CrabField", 4794390915414850800},
    {"DuskMid", 4830500777766158336},
    {"DuskEnd", 4855161876522205184},
    {"CandleSpaceEnd", 32706758321},
    {"Orbit", 32706758321},
    {"NightDesert", 4756517339743666084},
    {"NightDesert", 4689256204097823239}
}
--wip
--coord, magic id, map id, props id leaked from mom0 script by Kel
cworld = {
   {"[遇镜]遇镜", 'CandleSpace'},
   {"[晨岛]开始", 'Dawn'},
   {"[晨岛]试炼入口", 'DawnCave'},
   {"[试炼]水的试炼", 'Dawn_TrialsWater'},
   {"[试炼]土的试炼", 'Dawn_TrialsEarth'},
   {"[试炼]风的试炼", 'Dawn_TrialsAir'},
   {"[试炼]火的试炼", 'Dawn_TrialsFire'},
    {"[云野]开始", 'Prairie_ButterflyFields'},
    {"[云野]云野右图", 'Prairie_NestAndKeeper'},
    {"[云野]云野圣岛先祖向导", 'Prairie_Island'},
    {"[云野]云野左图", 'Prairie_Cave'},
    {"[云野]云野二图", 'Prairie_Village'},
    {"[云野]8人门", 'DayHubCave'},
    {"[云野]宫殿内", 'DayEnd'},
    {"[雨林]开始", 'Rain'},
    {"[雨林]雨林二图", 'RainForest'},
    {"[雨林]雨林副本隐藏图", 'RainShelter'},
    {"[雨林]雨林副本", 'Rain_Cave'},
    {"[雨林]雨林最后一个图", 'RainMid'},
    {"[雨林]雨林宫殿", 'RainEnd'},
    {"[雨林]大树屋", 'Rain_BaseCamp'},
    {"[霞谷]开始", 'Sunset'},
    {"[霞谷]霞光城", 'Sunset_Citadel'},
    {"[霞谷]飞行赛道", 'Sunset_FlyRace'},
    {"[霞谷]滑行赛道", 'SunsetRace'},
    {"[霞谷]终点入口", 'SunsetEnd'},
    {"[霞谷]雪人公园", 'Sunset_YetiPark'},
    {"[霞谷]梦想城镇", 'SunsetVillage'},
    {"[霞谷]终点", 'SunsetColosseum'},
    {"[霞谷]宫殿", 'SunsetEnd2'},
    {"[墓土]开始", 'DuskStart'},
    {"[墓土]一图", 'Dusk'},
    {"[墓土]二图", 'DuskGraveyard'},
    {"[墓土]遗忘方舟", 'DuskOasis'},
    {"[墓土]沉船图", 'Dusk_CrabField'},
    {"[墓土]三图", 'DuskMid'},
    {"[墓土]终点", 'DuskEnd'},
    {"[禁阁]禁阁", 'Night'},
    {"[禁阁]到高层", 'Night2'},
    {"[禁阁]地下", 'NightArchive'},
    {"[新季节]王子沙漠", 'NightDesert'},
    {"[新季节]水母沙滩", 'NightDesert_Beach'},
    {"[新季节]罐子洞", 'Night_JarCave'},
    {"[新季节]无限沙漠", 'Night_InfiniteDesert'},
    {"[新季节]王子星球", 'NightDesert_Planets'},
    {"办公室", 'TGCOffice'},
    {"伊甸园1", 'StormStart'},
    {"伊甸园2", 'Storm'},
    {"[任天堂] 遇镜", 'Nintendo_CandleSpace'},
    {"⚠️暴风眼一图⚠️", 'StormEnd'},
    {"⚠️再生之路1(抱抱)⚠️", 'OrbitMid'},
    {"⚠️再生之路2⚠️", 'OrbitEnd'},
    {"⚠️星光大道⚠️", 'CandleSpaceEnd'},
    {"⚠️结尾动画⚠️", 'Credit'},
 }
 
 doors = {
   
 }

mslot = {
  '位置一',
  '位置二',
  '位置三',
  '位置四',
  '位置五',
  '位置六',
  '位置七',
  '位置八',
  '位置九'
}

spiritlist = {
  {414084241,"Pointing"},
   {3666569351,"No"},
   {4249009249,"Hurry up"},
   {1466879858,"Yawn"},
   {64338276,"Butterfly"},
   {2540775602,"Bird"},
   {1568825369,"Candle up"},
   {2851084244,"Waving"},
   {3063270590,"Laughing"},
   {1060667581,"Applause"},
   {3881128326,"Wiping sweat"},
   {4182042971,"Crying"},
   {419578801,"Confused"},
   {1156673674,"Kneel down"},
   {1464190897,"Hide and seek"},
   {2381086145,"Stomp"},
   {3576552037,"Shy"},
   {3930381583,"Cold"},
   {1728053750,"Whale"},
   {3307167098,"Anchor back"},
   {1942389483,"Bow"},
   {3809307521,"Backflip"},
   {2395108553,"Hold your hands"},
   {2859830090,"Cheers"},
   {416637648,"Handstand"},
   {3768849824,"Manta calling"},
   {1999438929,"Salute"},
   {4155738138,"Sneaky"},
   {2886532097,"Brave"},
   {1060292445,"Surprised"},
   {3630339793,"Faint"},
   {2159324587,"Look around"},
   {2797886853,"Floating"},
   {2041153668,"Magic"},
   {2017461200,"Ghost manta calling"},
   {3576140497,"Standing Posture"},
   {3594096657,"Pray"}
}

pid = {
  {57978849, "风车🏅"},
       {-677716449,"紫伞"},
       {-644161211,"透明伞"},
       {-1593950895, "灯笼🏮"},
       {992885953, "长凳 💺"},
       {-1444947170,"圣诞长椅💺"},
       {3580839943, "秋千 ❤"},
       {3779226149, "篝火 🔥"},
       {-1030495085, "跷跷板 🔨"},
       {3634028466, "花伞🌂"},
       {2574095143, "雨伞☔"},
       {3269660804, "吉他🎻"},
       {2352004821,"四弦琴 🎸"},
       {-1382855507, "琵琶🎸"},
       {396560731, "笛子🎶"},
       {1237767078, "排箫 🎺"},
       {1889256860,"电子琴🎹"},
       {3275797515,"大钢琴🎼"},
       {3280753494,"烟花棒 🎆"},
       {4246711693, "摇瑟"},
       {4196378836, "大瑟"},
       {900914909, "钢鼓"},
       {3499881140,"大被子鼓"},
       {2003040587,"小双边鼓"},
       {2671000446, "竖琴"},
       {399957901, "板琴"},
       {1064146256, "屁琴"},
       {1021011859, "号角 🎷"},
       {2186944737,"小提琴"},
       {2041015009,"先祖罐子"},
       {776794517,"先祖长矛"},
       {-896102798,"短号"},
       {1079120316,"书柜"},
       {1994487329,"吊床"},
       {-1762117817,"火炬"},
       {-1513173800,"遮雨棚"},
       {-2094712299,"一个看起来像灯笼的东西?"},
       {1661108877,"框框"},
       {3314486409, "茶座"},
       {351343999,'玫瑰'},
       {638976622,'星灯'},
       {-1723880395,'狐狸背饰'},
       {-994414187,'生日旗'},
       {1638144370,'陶笛'},
       {-2058340788,'黄伞'},
       {1480625729,'双人椅'},
       {-1352265746,'木制双人椅'},
       {1192794220,'管'},
       {9427151,'沙滩球'},
       {-1192675672,'海滩床'},
       {1793801900,'石墩子火'},
       {313507026,'迷你石墩子火'},
       {2035109393,"空"}
}

cpoint = {
  pr1 = {
    {96.95172882080078, 203.9423370361328, 272.4224853515625}, 
    {66.72240447998047, 198.46482849121094, 362.03570556640625}, 
    {-19.729448318481445, 196.543701171875, 319.23468017578125}
    
  },
  pr2 = {
    {245.62545776367188, 95.5485610961914, 221.84703063964844},
    {51.063480377197266, 1.082053542137146, 331.52166748046875}, 
    {101.43079376220703, 28.913820266723633, 333.3686218261719}, 
    {130.28009033203125, 8.608041763305664, 284.0380859375}, 
    {88.30374145507812, 22.063486099243164, 291.025634765625}, 
    {128.39881896972656, 2.812415361404419, 407.2574157714844}, 
  },
  fr1 = {
    {8.200207710266113, 95.40240478515625, -216.9573974609375}, 
    {10.919458389282227, 97.72982025146484, -178.7023162841797}, 
    {22.434154510498047, 97.86457061767578, -142.3035888671875}
  },
  fr2 = {
    {33.83924102783203, 108.33233642578125, -62.17718505859375}, 
    {95.2885513305664, 112.5270004272461, -99.4018783569336}, 
    {93.52252960205078, 110.70069122314453, -52.32523727416992}, 
    {35.76015090942383, 109.07188415527344, -32.329010009765625}, 
    {62.64570999145508, 96.57581329345703, 2.5483744144439697}, 
    {84.50806427001953, 105.29931640625, 26.362586975097656}, 
    {48.2465934753418, 103.63257598876953, 12.391707420349121}
  },
  fr3 = {
    {2.839021682739258, 86.61508178710938, -46.81080627441406}, 
    {-9.491637229919434, 83.67889404296875, -13.139968872070312}, 
    {-5.647504806518555, 87.60029602050781, 13.881937026977539}, 
    {7.8890228271484375, 88.57525634765625, 88.58280944824219}
  },
  fr4 = {
    {63.966339111328125, 79.49282836914062, -284.2691955566406}, 
    {0.7326644062995911, 121.19961547851562, -367.0590515136719}, 
    {-45.982337951660156, 132.8380584716797, -198.25119018554688}
  },
  fr5 = {
    {17.38182258605957, 146.5189971923828, 15.60563850402832}, 
    {81.17194366455078, 141.08465576171875, 120.81361389160156}, 
    {47.68941879272461, 144.47244262695312, 65.90519714355469}, 
    {115.50276947021484, 164.77035522460938, 158.94093322753906}, 
    {-6.182575702667236, 136.4398956298828, 200.41183471679688}, 
    {26.954795837402344, 139.68226623535156, 224.25071716308594}, 
    {-10.194414138793945, 134.5517120361328, 152.5101318359375}, 
    {-81.54685974121094, 135.01173400878906, 223.6342315673828}, 
    {-58.3707275390625, 136.15643310546875, 179.88563537597656}, 
    {-56.886383056640625, 135.4618377685547, 218.7360382080078}, 
    {-20.806842803955078, 134.6183624267578, 207.5647430419922}, 
    {-21.810287475585938, 134.55897521972656, 261.7059020996094}, 
    {-73.90713500976562, 147.9859619140625, 159.4910430908203}
  },
  fr6 = {
    {11.568278312683105, 110.44747161865234, -11.819001197814941}, 
    {-14.350753784179688, 104.80479431152344, 0.6991578936576843}, 
    {-0.7532340884208679, 107.81478118896484, 68.78583526611328}, 
    {2.1829042434692383, 106.96797180175781, 90.21467590332031}
  },
  va1 = {
    {-30.466176986694336, 147.114501953125, -151.39772033691406}, 
    {-17.43215560913086, 154.89381408691406, -126.94638061523438}
  },
  de1 = {
    {83.19461822509766, 0.8931258916854858, 313.50323486328125}, 
    {-29.68844985961914, 1.954253911972046, 238.90013122558594}, 
    {-69.21147918701172, 8.101288795471191, 171.30227661132812}, 
    {1.350915551185608, 1.1179736852645874, 299.5738830566406}, 
    {-59.2152214050293, 4.482473850250244, 224.3214874267578}, 
    {-90.4620132446289, 2.6760103702545166, 326.61895751953125}, 
    {44.365570068359375, 0.6282044649124146, 228.56680297851562}
  },
  de2 = {
    {77.69338989257812, 92.25956726074219, 260.7549133300781}, 
    {43.791255950927734, 90.14799499511719, 229.9110870361328}, 
    {53.92071533203125, 99.21656036376953, 152.45957946777344}, 
    {63.40105438232422, 66.34053039550781, -13.661370277404785}, 
    {44.300437927246094, 94.3846435546875, 130.56182861328125}, 
    {10.916092872619629, 76.6250228881836, -133.59512329101562}, 
    {-4.162625789642334, 89.4147720336914, -135.28839111328125}, 
    {49.96483612060547, 69.7237777709961, -62.57978820800781}, 
    {81.1445083618164, 64.3047866821289, -107.21367645263672}, 
    {70.5404052734375, 69.17701721191406, -156.1171112060547}, 
    {32.799076080322266, 69.72303009033203, -217.41574096679688}
  },
  de3 = {
    {98.68771362304688, 115.79803466796875, 468.6960754394531}, 
    {68.91381072998047, 109.1550521850586, 490.6760559082031}, 
    {47.52444839477539, 108.5938720703125, 513.4615478515625}, 
    {80.95787811279297, 108.51556396484375, 509.0512390136719}, 
    {296.867431640625, 116.74671936035156, 526.1262817382812}, 
    {310.94061279296875, 120.83760833740234, 556.564453125}, 
    {297.31475830078125, 115.4719009399414, 348.1332702636719}
  },
  de4 = {
    {-140.23443603515625, 1.2785651683807373, 421.68963623046875}, 
    {-180.7798614501953, 3.973724365234375, 484.90673828125}, 
    {-194.31446838378906, 0.8118993043899536, 400.9505920410156}, 
    {-168.3665771484375, 2.0468192100524902, 371.8758239746094}, 
    {-274.99176025390625, 12.156349182128906, 424.8158264160156}, 
    {-292.43408203125, 31.235795974731445, 403.9704895019531}
  },
  de5 = {
    {-48.612648010253906, 104.93779754638672, -77.65389251708984}, 
    {-215.27764892578125, 136.3376922607422, -164.43309020996094}, 
    {-249.95486450195312, 101.41854858398438, -190.11062622070312}, 
    {-210.87734985351562, 90.00242614746094, -321.1565246582031}, 
    {-247.11279296875, 84.56513214111328, -372.64276123046875}, 
    {-276.9136047363281, 85.47688293457031, -344.01361083984375}
  }
}

posits = {
}

crlist = {
}

imgs = {
  '清除',
  '黑色',
  '白色',
  '蓝色',
  '棕色',
  '青色',
  '灰色',
  '绿色',
  '石灰',
  '洋红',
  '橙色',
  '红色',
  '黄色',
  '抖音Logo',
  'UI眼睛',
  ''
}

mlist = {}

hitarr = {
}

function indexof(a,b)
  for k,v in ipairs(a) do 
    if v == b then
      return k 
    end
  end
  return -1
end

function getadd(add,flag)
  local uu = {}
  uu[1] = {
    address = add,
    flags = flag
  }
  yy = gg.getValues(uu)
  return tonumber(yy[1].value)
end

function gamespeed(val)
  if poffsets.gspeed == 0x00 or psettings.ggspeed then
    gg.setSpeed(val)
    else
    setadd(eoffsets.nentity - poffsets.gspeed,gg.TYPE_FLOAT,val,true)
  end
end


function setadd(add,flag,val,bfreeze)
  local uu = {}
  uu[1] = {
    address = add,
    flags = flag,
    value = val,
    freeze = bfreeze
  }
  gg.setValues(uu)
  if bfreeze then 
    gg.addListItems(uu)
  else
    if indexof(sarray,uu[1].address) == -1
    then
      gg.removeListItems(uu)
    else
      gg.addListItems(uu)
    end
  end
end

function isfreeze(add)
  mlist = gg.getListItems()
  for i, v in next, mlist do
    if mlist[i].address == add then
      --print(mlist[1])
      return mlist[i].freeze
    end
  end
  return false
end

function addtostr(add,amount)
  mp = ''
  for i = 0, amount do
    mu = getadd(add + i,gg.TYPE_BYTE)
    if mu < 1 then break end
    mp = mp .. string.char(mu)
  end
  return mp
end

function getpatch()
  API = gg.makeRequest('https://raw.githubusercontent.com/Walker-by/sky/main/Sharelocate.lua').content
  if not API then
    gg.toast('加载API失败')
  else
    pcall(load(API))
  end
end

function toint(n) 
  local s = tostring(n) 
  local i, j = s:find('%.') 
  if i then 
    return tonumber(s:sub(1, i-1)) 
  else 
    return n 
  end 
end

function tbltostr(tbl)
    local result = "{"
    for k, v in pairs(tbl) do
        if type(k) == "string" then
            result = result..k.."="
        end
        if type(v) == "table" then
            result = result..tbltostr(v)
        elseif type(v) == "boolean" then
            result = result..tostring(v)
        else
            result = result..v
        end
        result = result..","
    end
    if result ~= "" then
        result = result:sub(1, result:len()-1)
    end
    return result.."}"
end

function savedata()
  local data = io.open('/sdcard/fuck.cfg','w')
  data:write("psettings=" .. tbltostr(psettings))
  data:close()
end

function loadsave()
  local data = io.open('/sdcard/fuck.cfg','r')
  if data == nil then
    savedata()
    return;
  end
  local str = data:read('*a')
  data:close()
  if str == nil then 
    savedata()
  else
    ert = pcall(load(str))
    if not ert then
      savedata()
    end
    if psettings.fhspeed == nil then
      psettings.fhspeed = 100
    end
    if psettings.cmimage == nil then
      psettings.cmimage = 1
    end
    if psettings.aeleven == nil then
      psettings.aeleven = false
    end
  end
end

function boolling(boo)
  if type(boo) ~= "boolean" then return; end
  if boo then
    return '✅'
    else
    return '❌'
  end
end

function toggle(boo)
  if boo then
    return false
  else
    return true
  end
end

function replace(text,bf,tg)
  retText = text
  for i=0, 10 do
  strFindStart, strFindEnd = string.find(retText, bf)
  if strFindStart ~= nil then
    local nStringCnt = string.len(retText)
    retText = string.sub(retText, 1, strFindStart-1) .. tg ..  string.sub(retText, strFindEnd+1, nStringCnt)
  end
  end
  return retText
end

function fbyte(str,ka,kb) 
  local K, F = ka, 16384 + kb 
  return (str:gsub('%x%x', function(c) 
    local L = K % 274877906944
    local H = (K - L) / 274877906944 
    local M = H % 128 
    c = tonumber(c, 16) 
    local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m 
    return string.char(m) 
  end )) 
end

function fpbase()
  pbase = getadd(rbootloader + poffsets.ptoplayer,gg.TYPE_QWORD) + poffsets.ptopbase
  eoffsets.nentity = getadd(rbootloader + poffsets.ptoentity,gg.TYPE_QWORD) + poffsets.ptonentity
  xtest1 = getadd(pbase,gg.TYPE_DWORD)
  xtest2 = getadd(eoffsets.nentity,gg.TYPE_DWORD)
  if xtest1 < 0 and getadd(pbase + 0x10,gg.TYPE_DWORD) ~= 371 then
  gg.alert('Cannot find player base!\n1. Game loading is not completed\n2. restart script at home\n3. restart the game')
  os.exit()
  end
  if xtest2 ~= 1099746509 then
    gg.alert('Cannot find world base!\nsomething is wrong!\nsome features may not work')
  end
  --methods for unexpected errors
  --07.30 no longer used
  --[[
  gg.clearResults()
  nn = {}
  mm = {}
  --gg.toast('failed! trying again...')
  gg.clearResults()
  gg.searchNumber('h 73 01 00 00 00 00 00 00', gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.refineNumber(115)
  nn = gg.getResults(gg.getResultsCount())
  for k, v in ipairs(nn) do
      spnt1 = getadd(v.address - 0x10,gg.TYPE_DWORD)
      spnt3 = getadd(v.address + poffsets.pdamage - 0x14,gg.TYPE_DWORD)
      if spnt1 > 0 and spnt3 == spnt1 then
        pbase = v.address - 0x10
        return;
      end
  end
  
  --gg.toast('failed! trying again...')
  nn = {}
  mm = 0
  gg.clearResults()
  gg.searchNumber(':device_capabilities',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  nn=gg.getResults(1)
  if gg.getResultsCount() > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) < 1000 then
    pbase = nn[1].address - 0x58
    return
  end
  ]]--
end

function vcheck()
  if tonumber(gameinfo.versionCode) < scriptv.version then
    gg.alert('[错误]游戏版本不匹配！\ngame : ' .. tonumber(gameinfo.versionCode) .. '\nscript : ' .. scriptv.version)
  end
  if tonumber(gameinfo.versionCode) > scriptv.version then
    gg.alert('[错误]脚本需要更新！\ngame : ' .. tonumber(gameinfo.versionCode) .. '\nscript : ' .. scriptv.version)
  end
  if gameinfo.packageName ~= scriptv.process then
    gg.alert('[错误]您选择了错误的游戏进程！\ngame : ' .. gameinfo.packageName)
  end
end

function startup()
  gg.addListItems({{address=gg.getRangesList('libBootloader.so')[1].start,flags=32,name='bootloader'}})
  loadsave()
  vcheck()
  nn = 0
  gg.clearResults()
  gg.setVisible(false)
  mm = gg.getRangesList('[anon:libc_malloc]')
  prange.a = rbootloader - 0x1FFFFFFFF
  prange.b = rbootloader
  fpbase()
  nn = '玩家 : ' .. tostring(itoh(pbase)) .. ' ' .. getadd(pbase,gg.TYPE_DWORD) .. 'D'
  print(nn)
  gg.clearResults()
  eoffsets.sspeed = getadd(rbootloader+poffsets.ptocwings,gg.TYPE_QWORD)
  eoffsets.cspeed = eoffsets.sspeed - 0x33CE4
  eoffsets.cloud = eoffsets.sspeed - 0x33CE8
  eoffsets.glight = eoffsets.sspeed - 0x1C134
  eoffsets.wforce = eoffsets.sspeed + 0x530
  eoffsets.jforce = eoffsets.sspeed + 0x638
  --[[
  ggrange(gg.REGION_C_DATA)
gg.searchNumber("3.5", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
if gg.getResultsCount() ~= 0 then
  eoffsets.sspeed = mm[1].address
  eoffsets.cspeed = mm[1].address - 0x33CE4
  eoffsets.cloud = mm[1].address - 0x33CE8
  eoffsets.glight = mm[1].address - 0x1C134
  eoffsets.wforce = mm[1].address + 0x530
  eoffsets.jforce = mm[1].address + 0x638
end
gg.clearResults()

--setadd(eoffsets.graphic,gg.TYPE_FLOAT,1,false)
--gg.addListItems(nn)

gg.searchNumber("-0.01499999966", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(2)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'ground',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.ground = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("0.8", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'slide',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.slide = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("4.90000009537F;4.59999990463F;0.89999997616F;0.81999999285F::13", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'jump accelerate',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.jump = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("-3.16081619263", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'gravity',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.gravity = sn5.address
end
--gg.addListItems(nn)
]]--
mm = {}
nn = {}
ggrange(gg.REGION_C_ALLOC)
gg.clearResults()
nn[1] = {
    name = 'wlevel',
    address = pbase,
    flags = gg.TYPE_DWORD,
    value = getadd(pbase,gg.TYPE_DWORD)
  }
gg.addListItems(nn)
nn = {}
nn[1] = {
  name = 'posit X',
  address = pbase + poffsets.positX,
  flags = gg.TYPE_FLOAT
}
nn[2] = {
  name = 'posit Y',
  address = pbase + poffsets.positY,
  flags = gg.TYPE_FLOAT
}
nn[3] = {
  name = 'posit Z',
  address = pbase + poffsets.positZ,
  flags = gg.TYPE_FLOAT
}
nn[4] = {
  name = 'pwing',
  address = pbase + poffsets.pwing,
  flags = gg.TYPE_FLOAT
}
nn[5] = {
  name = 'ewing',
  address = pbase + poffsets.ewing,
  flags = gg.TYPE_DWORD
}
nn[6] = {
  name = 'eprop',
  address = pbase + poffsets.eprop,
  flags = gg.TYPE_DWORD
}
nn[7] = {
  name = 'mgk1',
  address = pbase + poffsets.magic,
  flags = gg.TYPE_DWORD
}
nn[8] = {
  name = 'mgk trigger',
  address = pbase + poffsets.magic + 0xC00,
  flags = gg.TYPE_DWORD
}
nn[9] = {
  name = 'bsize',
  address = pbase + poffsets.bsize,
  flags = gg.TYPE_FLOAT
}
gg.addListItems(nn)
nn = {}
nn = gg.getListItems()
for i, v in next, nn do
  table.insert(sarray,nn[i].address)
end

--[[
--0x138AF2C
gg.clearResults()
nn = {}
mm = {}
gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,prange.a,prange.b)
nn = gg.getResults(gg.getResultCount())
for i, v in ipairs(nn) do 
  mm[i] = {address = v.address +4,flags = 4}
end
mm = gg.getValues(mm)
for i, v in ipairs(mm) do
  if v.value == 11 then 
    eoffsets.world = v.address + 8
    --gg.addListItems({v})
    break 
  end
end
if eoffsets.world == 0x00 then gg.toast('err') end
gg.addListItems(gg.getValues({{address = eoffsets.world, flags = 4}}))
--ggrange(4)

gg.clearResults()
gg.searchNumber(1099746509,4,false,nil,prange.a,prange.b)
nn = 0x00
eoffsets.nentity = gg.getResults(gg.getResultCount())[1].address
]]--
poffsets.elist = eoffsets.nentity - poffsets.elist
nn = eoffsets.nentity + 0x1D4
for i=1,450 do
  table.insert(candles,{address=nn+(i-1)*0x1C0,flags=16,value=0,name='cc',freeze=false})
end
--B0700C
mm = {}
 for i=1,256 do
   mm[i]= {address = eoffsets.nentity + poffsets.eflowers + ((i-1) * 8),flags = 16}
 end
 flowers = gg.getValues(mm)
 
 eoffsets.nworld = getadd(eoffsets.nentity - poffsets.ptonworld,gg.TYPE_QWORD)
 
 nn = 0x00
 gg.clearResults()
 ggrange(gg.REGION_CODE_APP)
 gg.searchNumber('h 72 74 5F 63 68 61 74 5F 74 65 78 74 5F 65 6E 74 72 79 5F 70')
 if gg.getResultsCount() > 3 then
 nn = gg.getResults(5)[4].address
 gg.clearResults()
 setstr(nn,27,'by ExMachina')
 end
 ggrange(4)
 --[[
 nn = {}
 mm = {}
 gg.clearResults()
gg.searchNumber(334569360,4)
eoffsets.nworld = gg.getResults(gg.getResultCount())[1].address + 0x364
]]--
--camera 2000f;2000f;1
--gg.clearResults()
--gg.searchNumber(0.16699999571,16)
eoffsets.ncamera = eoffsets.nentity - poffsets.gcamera

--gg.addListItems(candles)
gg.clearResults()
if andro >= 30 then
    gg.toast('\n不劳无获\n' .. ddd .. ' [A11] by 行者')
    print('检测到Android 11')
  else
    gg.toast('\n不劳无获\n' .. ddd .. ' by 行者')
end
  
if psettings.nodamage then
  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,0,true)
end

getpatch()
print('不劳无获\n')
end

function itoh(int)
  return string.format("%x",int)
end

function debg()
  nn = ''
  nn = nn .. tostring(itoh(pbase)) .. ' -- wingcount\n'
  nn = nn .. tostring(itoh(pbase + poffsets.positX)) .. ' position X\n'
  nn = nn .. tostring(itoh(pbase + poffsets.bheight)) .. ' height offset\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pose)) .. ' pose 0 1 2 4\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pwing)) .. ' wing energy\n'
  nn = nn .. tostring(itoh(pbase + poffsets.ewing)) .. ' equipped wing\n'
  nn = nn .. tostring(itoh(pbase + poffsets.famount)) .. ' firework amount\n'
  nn = nn .. tostring(itoh(pbase + poffsets.gesture)) .. ' gesture state\n'
  nn = nn .. tostring(itoh(pbase + poffsets.magic)) .. ' magics\n'
  nn = nn .. tostring(itoh(pbase + poffsets.bsize)) .. ' body size\n'
  nn = nn .. tostring(itoh(pbase + poffsets.uemote)) .. ' emote upgrades\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pdamage)) .. ' player damage\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pshout)) .. ' player shout\n'
  nn = nn .. tostring(itoh(eoffsets.nentity + poffsets.eflowers)) .. ' entity flowers\n'
  nn = nn .. tostring(itoh(eoffsets.nentity + poffsets.wwings)) .. ' entity wings\n'
  nn = nn .. tostring(itoh(eoffsets.world)) .. ' respawn world\n'
  nn = nn .. tostring(itoh(eoffsets.nworld)) .. ' current world\n'
  nn = nn .. tostring(itoh(eoffsets.ncamera)) .. ' player camera\n'
  print(nn)
end

--math
function pmove(dis)
  local x,y,z = getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT), getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)
  local radin = getadd(pbase + poffsets.positZ + 0x18,gg.TYPE_FLOAT)
  
  local ax = dis * math.sin(radin)
  local az = dis * math.cos(radin)
  --gg.toast(radin)
  setposit(x + ax,y,z + az)
  gg.setVisible(false)
end

function upemote()
  setadd(pbase + poffsets.eused,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x4,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x8,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0xC,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x10,gg.TYPE_DWORD,0,true)
  setadd(pbase + poffsets.eused + 0x14,gg.TYPE_DWORD,0,true)
  
  getemote()
  
  epoint = pbase + poffsets.uemote
  revert = {}
  cemote = {}
  for i = 0,128 do 
    gd = epoint + (0x30 * i)
    if getadd(gd - 0x4,gg.TYPE_DWORD) ~= 0 then
      if getadd(gd,gg.TYPE_DWORD) > 3 then
        table.insert(cemote,addtostr(gd - 0x1F,12))
      end
      table.insert(revert,getadd(gd,gg.TYPE_DWORD))
      setadd(gd,gg.TYPE_DWORD,6,false)
      else
        break
    end
  end
  
  for k,v in pairs(emotelist) do
    for x,z in pairs(cemote) do
      if v[2] == 'emote' and v[1] == z then
        maxemote = z
      end
    end
  end
  
  if #maxemote == 0 then
    gg.toast('失败！没有完整的动作！')
    for k,v in pairs(revert) do
      setadd(epoint + (0x30 * (k-1)),gg.TYPE_DWORD,v,false)
    end
    return
  end
  for k,v in pairs(emotelist) do
    if v[2] == 'emote' and v[3] ~= 'CandleSpace' then
      setstr(v[4],12,maxemote)
    end
  end
  gg.toast('完成 : ' .. maxemote)
end

function getcoord(boo)
  if boo then
    return {getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
    ,getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
    ,getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
  else
    return {x=getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
    ,y=getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
    ,z=getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
  end
end

function ggrange(vr)
  if psettings.aeleven then
    if vr ~= gg.REGION_CODE_APP then
      gg.setRanges(gg.REGION_OTHER)
    else
      gg.setRanges(vr)
    end
  else
    gg.setRanges(vr)
  end
  --gg.setRanges(vr)
end

function echange(boo)
  getemote()
  gg.setVisible(false)
  if boo then
  for i,v in ipairs(emotelist) do
    if v[5] == 2089048596 then
      setadd(v[4]+0xD7-0x10,gg.TYPE_DWORD,1251050323,false)
      --setstr(v[4]+0x60,24,'UiSocialPlayfight')
      hitarr[1] = v[4]
    end
    if v[5] == -1968658055 then
      setadd(v[4]+0xD7-0x10,gg.TYPE_DWORD,145501185,false)
      --setstr(v[4]+0x60,24,'UiEmoteSocialBearHug')
      hitarr[2] = v[4]
    end
  end
  else
    setadd(hitarr[1]+0xD7-0x10,gg.TYPE_DWORD,2089048596,false)
    --setstr(hitarr[1]+0x60,24,'UiEmoteAP10Bubbles')
      
    setadd(hitarr[2]+0xD7-0x10,gg.TYPE_DWORD,-1968658055,false)
    --setstr(hitarr[2]+0x60,24,'UiEmoteAP08DeepBreath')
  end
end

function getemote()
  if #emotelist ~= 0 then
    return;
  end
  gg.toast('Scanning...')
  if poffsets.elist == 0x00 then
  gg.toast('Reading memory...')
  emotelist = {}
  gg.setVisible(false)
  gg.clearResults()
  ggrange(4)
  gg.searchNumber('h 00 00 00 00 0C 73 6B 79 6B 69 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0A 76 6F 69 63 65 00 00 00 00 00 00 00 00 00 00',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.refineNumber(115)
  if gg.getResultCount() == 0 then
    gg.toast('失败!')
    return;
  end
  poffsets.elist = gg.getResults(1)[1].address
  end
  emotelist = {}
  for i = 0, 128 do
    xd = poffsets.elist + (0xF0 * i)
    if getadd(xd,gg.TYPE_BYTE) < 1 then
      break
    end
    
    cd1 = addtostr(xd,12)
    cd2 = addtostr(xd + 0x18,12)
    cd3 = addtostr(xd + 0x30,24)
    cd4 = getadd(xd + 0xD7 - 0x10,gg.TYPE_DWORD)
    cd5 = addtostr(xd + 0x60,24)
    table.insert(emotelist,{cd1,cd2,cd3,xd,cd4,cd5})
  end
  epoint = pbase + poffsets.uemote
  for i = 0,128 do 
    gd = epoint + (0x30 * i)
    if getadd(gd - 0x4,gg.TYPE_DWORD) ~= 0 then
      table.insert(myemotes,{addtostr(gd - 0x1F,12),getadd(gd + 0x28,gg.TYPE_DWORD),gd - 0x28})
      else
        break
    end
  end
  --print(emotelist)
  gg.toast('found : ' .. #emotelist .. ' emotes')
end

function chemote()
  getemote()
  xb1 = {}
  xb2 = {}
  for k,v in pairs(myemotes) do
    table.insert(xb1,v[1])
  end
  for k,v in pairs(emotelist) do
    if v[2] == 'emote' then
      table.insert(xb2,v[1])
    else
      table.insert(xb2,'[❌] ' .. v[1])
    end
    
  end
  x=gg.choice(xb1,nil,'Your emote')
  q=gg.choice(xb2,nil,'Set emote to')
  if x ~= nil and q ~= nil then
    if myemotes[x] == nil or emotelist[q] == nil then
      gg.toast('error!')
    else
      setadd(myemotes[x][3],gg.TYPE_DWORD,emotelist[q][5],false)
      setadd(myemotes[x][3] - 0xc,gg.TYPE_DWORD,5,false)
      gg.toast(myemotes[x][1] .. ' → ' .. emotelist[q][1])
    end
  end
end

function schemote()
  getemote()
  xb1 = {}
  for k,v in pairs(emotelist) do
    table.insert(xb1,v[1])
  end
  x=gg.choice(xb1,nil,'Target anim')
  q=gg.choice(xb1,nil,'Set anim to')
  if x ~= nil and q ~= nil then
    if myemotes[x] == nil or emotelist[q] == nil then
      gg.toast('error!')
    else
      
      setadd(emotelist[x][4] + 0xD7,gg.TYPE_DWORD,emotelist[q][5],false)
      gg.toast(emotelist[x][1] .. ' → ' .. emotelist[q][1])
    end
  end
end

function absflower()
  gg.setVisible(false)
  tmp = {}
  tup = {}
  kj = 0
  mposit = getcoord(true)
  for i = 0,150 do
    jj = eoffsets.nentity + poffsets.wobjs + i*0x210
    if getadd(jj + 0xC,gg.TYPE_FLOAT) == 1 then
    kj = kj + 1
    for j = 0, 2 do
      table.insert(tmp,{address = jj + j * 4,flags = gg.TYPE_FLOAT, value = mposit[j + 1]})
    end
    end
    if getadd(jj + 0xC + 0x70,gg.TYPE_FLOAT) > 0 then
    for j = 0, 2 do
      --table.insert(tup,{address = jj + 0x70 + (j * 4),flags = gg.TYPE_FLOAT, value = mposit[j + 1]}) 
    end
    end
    --gg.addListItems(tmp[i])
  end
  gg.setValues(tmp)
  gg.sleep(100)
  gg.setValues(tup)
  gg.toast('完成 : ' .. kj)
end


function abslight()
  ---1,309,381,888
  nn = 0
  for i = 1,12 do
    nn = getadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD)
    if nn == 1 then
      setadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD,4,false)
    end
    
  end
  gg.sleep(200)
  for i = 1,12 do
    setadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD,8,false)
  end
end

function absorb()
  gg.setVisible(false)
  abslight()
  for i,v in pairs(candles) do
    v.value = 1.0
  end
  for i,v in pairs(flowers) do
    v.value = 0.0
  end
  gg.setValues(candles)
  gg.setValues(flowers)
  
  gg.clearResults()
  ggrange(4)
  --gg.searchNumber('-842203136',4,false,nil,eoffsets.nentity,pbase)
  gg.searchNumber('h 00 00 60 40 00 00 00 00 00 00 80 BF 00 00 CD CD',gg.TYPE_BYTE,false,nil,eoffsets.nentity,pbase)
  gg.refineNumber(-128)
  nn = {}
  mm = gg.getResults(gg.getResultCount())
  local tmp={}
  --vx,vy,vz = getadd(pbase+poffsets.positX,gg.TYPE_FLOAT),getadd(pbase+poffsets.positY,gg.TYPE_FLOAT),getadd(pbase+poffsets.positZ,gg.TYPE_FLOAT)
  for i,v in pairs(mm) do
    --table.insert(nn,{address = v.address - 0x6A,flags = gg.TYPE_FLOAT, value = vx})
    --table.insert(nn,{address = v.address - 0x6A+0x4,flags = gg.TYPE_FLOAT, value = vy})
    --table.insert(nn,{address = v.address - 0x6A+0x8,flags = gg.TYPE_FLOAT, value = vz})
    table.insert(nn,{address = v.address - 0xA,flags = gg.TYPE_FLOAT, value = 99999})
  end
  gg.setValues(nn)
  --gg.addListItems(nn)
  gg.clearResults()
end

function portallegacy(str)
  if eoffsets.world == 0x00 then
    gg.clearResults()
    ggrange(4)
    gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,eoffsets.nentity,pbase)
    if gg.getResultsCount() ~= 0 then
      nba = gg.getResults(gg.getResultsCount())
      for w,c in ipairs(nba) do
      	if getadd(c.address+0x4,gg.TYPE_DWORD) == 11 then
      	  eoffsets.world = c.address + 0xC
      	  break
      	end
      end
    else
    gg.toast('失败!')
    return;
    end
  end
  gg.setVisible(false)
  hh = gg.getSpeed()
  setstr(eoffsets.world,24,str)
  gg.sleep(100)
  mm = 0
  mm = getadd(pbase,4)
  setadd(pbase,4,0,false)
  gamespeed(10)
  gg.sleep(500)
  setadd(pbase,4,mm,false)
  gamespeed(100)
  gg.sleep(1500)
  gamespeed(hh)
  gg.sleep(1000)
  setstr(eoffsets.world,24,'CandleSpace')
  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
end

function portal(str)
  if psettings.portaldef then
    portallegacy(str)
    return;
  end
  gg.setVisible(false)
  xr1 = 0
  xr2 = 0
  xar = {}
  xtr = eoffsets.nentity - poffsets.mportal
  mgc = getcoord(true)
  setstr(xtr + 0x36D0,24,str)
  setstr(xtr + 0x36F0,28,imgs[psettings.cmimage])

  setadd(xtr + 0x372C,gg.TYPE_DWORD,string.len(str),false)
  xar = {
    --{address = xtr + 0x372C,flags=gg.TYPE_DWORD,value=11},
    {address = xtr - 0x34,flags=gg.TYPE_QWORD,value=49},
    {address = xtr - 0x30,flags=gg.TYPE_DWORD,value=0},
    {address = xtr - 0x7C,flags=gg.TYPE_FLOAT,value=80000},
    {address = xtr - 0x90,flags=gg.TYPE_FLOAT,value=80000},
    {address = xtr - 0xA4,flags=gg.TYPE_FLOAT,value=80000},
    {address = xtr - 0x2C,flags=gg.TYPE_DWORD,value=28},
    {address = xtr - 0x24,flags=gg.TYPE_QWORD,value=xtr + 0x36D0},
    {address = xtr + 0x372C,flags = gg.TYPE_DWORD,value = string.len(str)},
    {address = xtr - 0x1C,flags=gg.TYPE_DWORD,value=49},
    {address = xtr - 0x18,flags=gg.TYPE_DWORD,value=0},
    {address = xtr - 0x14,flags=gg.TYPE_DWORD,value=10},
    {address = xtr - 0x10,flags=gg.TYPE_DWORD,value=0},
    {address = xtr - 0xC,flags=gg.TYPE_QWORD,value=xtr+0x36F0},
    --{address = xtr - 0x74,flags = gg.TYPE_FLOAT,value = mgc[1]},
    --{address = xtr - 0x74 + 0x4,flags = gg.TYPE_FLOAT,value = mgc[2]},
    --{address = xtr - 0x74 + 0x8,flags = gg.TYPE_FLOAT,value = mgc[3]},
    {address = xtr,flags = gg.TYPE_DWORD,value = 1}
  }
  gg.setValues(xar)
  --setadd(xtr + 0x372C,gg.TYPE_DWORD,string.len(str),false)
  
  --setadd(xtr,gg.TYPE_DWORD,1,false)
  if psettings.portalspeed then
    gamespeed(8)
    gg.sleep(1000)
    gamespeed(1)
  else
    gg.sleep(1000)
  end
end

function teleb()
  a = {}
  b = {}
  for i,v in pairs(pworld) do
    table.insert(a,v[1])
  end
  c=gg.choice(a,nil,getmap())
  if x == nil then return; end
  for i,v in pairs(pworld[c]) do
    if type(v) == 'table' then
    table.insert(b,v[2])
    end
  end
  d=gg.choice(b,nil,getmap())
  if d == nil then return; end
  d = d + 1
  setposit(pworld[c][d][1][1],pworld[c][d][1][2],pworld[c][d][1][3])
  gg.setVisible(false)
end

function getmap()
  nn = ''
  for i = 0, 24 do
    mm = getadd(eoffsets.nworld + i,gg.TYPE_BYTE)
    if mm == 0 then
      break
    end
    nn = nn .. string.char(mm)
  end
  
  return nn
end

function pmagic(arr,id,sil)
  --if id == 0 then mreset(); return; end
  nn = {}
  tgt = pbase + (poffsets.magic + (0x30 * (arr-1)))
  if id == -1 or id == -2 then
    mm = {}
    for i,v in ipairs(mid) do
      if v[3] == id * -1 then
        table.insert(mm,v[2])
      end
    end
    setadd(tgt,gg.TYPE_DWORD,mm[math.random(1,#mm)],false)
  else
    setadd(tgt,gg.TYPE_DWORD,id,false)
  end
  if id ~= 0 then
  setadd(tgt + 0x8,gg.TYPE_DWORD,2139095040,false)
   --[[
  setadd(tgt + 0x8,gg.TYPE_DWORD,1629255046,false)
  setadd(tgt + 0x10,gg.TYPE_DWORD,1629253046,false)
  setadd(tgt + 0x18,gg.TYPE_DWORD,1358535875,false)
  setadd(tgt + 0x1C,gg.TYPE_DWORD,-398117947,false)
  setadd(tgt + 0x20,gg.TYPE_DWORD,-1848272760,false)
  setadd(tgt + 0x24,gg.TYPE_DWORD,1993010466,false)
  ]]--
 setadd(tgt + 0x28,gg.TYPE_DWORD,sil,false)
  else
    setadd(tgt + 0x8,gg.TYPE_DWORD,0,false)
    setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
  end
  setadd(pbase + poffsets.magic + 0xC00,gg.TYPE_DWORD,12,true)
  --gg.toast(poffsets.magic + 0xC00)
  setadd(tgt + 0x28,gg.TYPE_DWORD,sil,false)
end

function setposit(mx,my,mz)
  jh = {
    {
      address = pbase + poffsets.positX,
      flags = gg.TYPE_FLOAT,
      value = mx
    },
    {
      address = pbase + poffsets.positY,
      flags = gg.TYPE_FLOAT,
      value = my
    },
    {
      address = pbase + poffsets.positZ,
      flags = gg.TYPE_FLOAT,
      value = mz
    }
  }
  gg.setValues(jh)
end

function getpos()
  pmg = getcoord(true)
 px = pmg[1]
 py = pmg[2]
 pz = pmg[3]
--print(px,py,pz)
gg.toast(tostring(px) .. " / " .. tostring(py) .. " / " .. tostring(pz))
end

function viscandle(bool)
  xv = {}
  for i = 0,128 do
    if getadd(eoffsets.nentity + poffsets.vcandles + (0x70 * i) - 0x4,gg.TYPE_DWORD) ~= 0 then
      if bool then
        table.insert(xv,{address = eoffsets.nentity + poffsets.vcandles + (0x70 * i),flags = gg.TYPE_DWORD,value = 28673})
        else
        table.insert(xv,{address = eoffsets.nentity + poffsets.vcandles + (0x70 * i),flags = gg.TYPE_DWORD,value = 0})
      end
      
    else
      break;
    end
  end
  --gg.toast(#xv)
  gg.setValues(xv)
end

function noclip()
gg.clearResults()
gg.setVisible(false)
gg.searchNumber('1F;0~~0;65,537D::9', gg.TYPE_FLOAT,false,nil,prange.a,prange.b)
gg.refineNumber('1.0', gg.TYPE_FLOAT)
if gg.getResultsCount() == 0 then 
  gg.toast('失败!')
  return;
end
bb = gg.getResults(gg.getResultsCount())
  for i,c in pairs(bb) do
    ee = {}
    ee[1] = {address = c.address, flags = c.flags, value = 0}
    ee[2] = {address = c.address - 0x4, flags = c.flags, value = 0}
    ee[3] = {address = c.address - 0xC, flags = c.flags, value = 0}
    ee[4] = {address = c.address - 0x10, flags = c.flags, value = 0}
    gg.setValues(ee)
  end
end

function inputstr()
    input=gg.prompt(
      {''},
      {[1]=''},
    	{[1]='text'})
    return input[1]
end

function inputnum(def)
    input=gg.prompt({'预置值: ' .. def}
    	, 	{[1]=def}
    	, 	{[1]='number'})
    	if input==nil then 	
    	    return def
    	else
    	    return input[1]
    	end
end

function setstr(add,range,str)
  nn = gg.bytes(str)
  hv = {}
  if #nn < range then
    mm = range - #nn
    for i = 1, mm do
      table.insert(nn,0)
    end
  end
  for i = 1, range do
    table.insert(hv,{address = add + (i - 1),flags = gg.TYPE_BYTE,value = nn[i]})
    --setadd(add + (i - 1),gg.TYPE_BYTE,nn[i],false)
  end
  gg.setValues(hv)
end

function changehit()
  --2089048596
  --1251050323
  gg.setVisible(false)
  gg.clearResults()
  if hitarr[1].value == 0 then
  gg.searchNumber('1251050323',gg.TYPE_DWORD,false,nil,prange.a,prange.b)
  ResultCount=gg.getResultCount()
    if ResultCount~=0 then
      hitarr=gg.getResults(ResultCount)
    else
      gg.toast('失败')
      return
    end
  end
  
  
  if hitarr[1].value ~= 2089048596 then
    for i, v in next, hitarr do
      hitarr[i].value = 2089048596
    end
    gg.toast('bubbles → hit 👊 ')
  else
    for i, v in next, hitarr do
      hitarr[i].value = 1251050323
    end
    gg.toast('hit 👊 → bubbles')
  end
  gg.setValues(hitarr)
  --gg.clearResults()
end

function startrace(ty)
  if ty == 1 then
    setposit(166.247,1187,397.849)
    setadd(pbase+poffsets.pose,gg.TYPE_DWORD,2,false)
    else
    setposit(156.288,935.1,662.21)
    setadd(pbase+poffsets.pose,gg.TYPE_DWORD,2,false)
  end
  --[[
  {map='Sunset_FlyRace'$$name='sit1'$$x=166.2477569580078$$y=1186.892578125$$z=397.8493957519531}$$
{map='SunsetRace'$$name='sit2'$$x=156.28892517089844$$y=935.0137329101562$$z=662.2101440429688}$$

  
  setadd(eoffsets.nentity + poffsets.rrace,gg.TYPE_DWORD,1,true)
  rcs = 0
  for i=0,50 do
    gg.sleep(200)
    if getadd(eoffsets.nentity + poffsets.rrace+0x1F0,gg.TYPE_DWORD) > 0 then
      return true
    end
    rcs = i
  end
  if rcs == 50 then
    setadd(eoffsets.nentity + poffsets.rrace,gg.TYPE_DWORD,1,false)
    return false
  end
  ]]--
end

function dorace()
  gg.toast('Starting race...')
  if getmap() == 'Sunset_FlyRace' then
    startrace(1)
    else
    startrace(2)
  end
    absflower()
    absorb()
    
    gamespeed(psettings.crspeed*3)
    gg.sleep(psettings.crdelay)
    for i = 0,10 do
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
      gg.sleep(psettings.crdelay)
    end
    gamespeed(psettings.crspeed)
    portal('SunsetEnd')
    gg.sleep(psettings.crdelay)
    abslight()
    for i = 0,10 do
      gg.sleep(psettings.crdelay)
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
    end
    portal('SunsetColosseum')
    gg.sleep(psettings.crdelay)
    gg.sleep(psettings.crdelay)
    absflower()
    for i = 0,10 do
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
      gg.sleep(psettings.crdelay)
    end
    gamespeed(psettings.crspeed*5)
    absorb()
    for i = 0,10 do
      gg.sleep(psettings.crdelay)
      if getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD) ~= 0 then
        setadd(eoffsets.nentity + poffsets.cfrags,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.cfrags - 0x8,gg.TYPE_DWORD),false)
        break;
      end
    end
    gg.sleep(psettings.crdelay)
  gamespeed(psettings.crspeed)
end

function espam()
  if mslot[1] == 'none' then return; end
  adr = pbase + poffsets.magic + 0x28
  --gg.toast(tostring(isfreeze(adr)))
  if isfreeze(adr) then
    setadd(adr,gg.TYPE_DWORD,0,false)
  else
    setadd(adr,gg.TYPE_DWORD,0,true)
  end
end

function mtrigger()
  if crset.enable then
    if mev == 1 then
    if getadd(pbase + poffsets.pshout,gg.TYPE_FLOAT) < 0.6 then
      if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
  end
  if mev == 2 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 2 then
      if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  if mev == 3 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 1 then
      if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
    else
  if mev == 1 then
    if getadd(pbase + poffsets.pshout,gg.TYPE_FLOAT) < 0.6 then
      pmove(psettings.warpdis)
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
  end
  if mev == 2 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 2 then
      pmove(psettings.warpdis)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  if mev == 3 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 1 then
      pmove(psettings.warpdis)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  end
end

function htrigger()
  if fastvalue then
    fastmax = fastmax + 1
    if getadd(pbase + poffsets.gohome,gg.TYPE_FLOAT) == 1 or fastmax > 25 then
      gamespeed(1)
      fastvalue = false
      fastmax = 0
      setadd(pbase + poffsets.gohome,gg.TYPE_FLOAT,1,false)
    end
  else
    if getadd(pbase + poffsets.gohome,gg.TYPE_FLOAT) ~= 1 then
      fastmax = 0
      gamespeed(psettings.fhspeed)
      fastvalue = true
    end
  end
  
end

function teleplayers()
  vh = gg.choice({
    '⏩传送到玩家身边',
    '🚸让周围玩家到你身边',
    '🏃跟随其他玩家',
    '👁视野聚焦玩家',
    '🚷隐藏所有玩家',
    '💕解锁友好节点',
    '🔄重置友好节点'
  },nil,'')
  if vh == 1 then
    vsr = {}
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'空')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        table.insert(vsr,'['..i..'] 翼数 : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' 距离 : '..(math.floor(calc3d(bp,ap)*100)/100))
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    hadd = pbase + poffsets.positX + (nra * 0xFDC0)
    hpos = {getadd(hadd,gg.TYPE_FLOAT),getadd(hadd + 0x4,gg.TYPE_FLOAT),getadd(hadd + 0x8,gg.TYPE_FLOAT)}
    if hpos[1] ~= 0 and hpos[2] ~= 0 then
      setposit(hpos[1],hpos[2],hpos[3])
      else
      gg.toast('玩家不存在')
    end
    gg.setVisible(false)
  end
  if vh == 2 then
    teleparr.colllect = true
    teleparr.enable = true
    gg.setVisible(false)
    xde = {}
    mpos = getcoord(true)
    for i=1, 7 do
      xda = pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(xda,gg.TYPE_FLOAT) ~= 0 then
        table.insert(xde,{address=xda,flags=gg.TYPE_FLOAT,value=mpos[1] + i/2 - 1.5,freeze=true})
        table.insert(xde,{address=xda+(0x4),flags=gg.TYPE_FLOAT,value=mpos[2],freeze=true})
        table.insert(xde,{address=xda+(0x8),flags=gg.TYPE_FLOAT,value=mpos[3],freeze=true})
      end
    end
    if #xde ~= 0 then
      gg.setValues(xde)
      gg.addListItems(xde)
    end
    return;
  end
  if vh == 3 then
    vsr = {}
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'空')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        table.insert(vsr,'['..i..'] 翼数 : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' distance : '..(math.floor(calc3d(bp,ap)*100)/100))
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    hadd = pbase + poffsets.positX + (nra * 0xFDC0)
    hpos = {getadd(hadd,gg.TYPE_FLOAT),getadd(hadd + 0x4,gg.TYPE_FLOAT),getadd(hadd + 0x8,gg.TYPE_FLOAT)}
    if hpos[1] ~= 0 and hpos[2] ~= 0 then
      teleparr.follow = true
      teleparr.enable = true
      teleparr.arr = nra
      else
      gg.toast('玩家不存在')
    end
    gg.setVisible(false)
  end
  if vh == 4 then
    if hcamera() then
      else
      gg.toast('视野保持失败')
      return;
    end
      
    vsr = {}
    for i = 1, 7 do
      ght=pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(ght,gg.TYPE_FLOAT) == 0 then
        table.insert(vsr,'空')
      else
        ap = {x=getadd(ght,gg.TYPE_FLOAT),y=getadd(ght+0x4,gg.TYPE_FLOAT),z=getadd(ght+0x8,gg.TYPE_FLOAT)}
        bp = getcoord(false)
        table.insert(vsr,'['..i..'] 翼数 : '..toint(getadd(ght + 0x5A98,gg.TYPE_FLOAT))..' 距离 : '..(math.floor(calc3d(bp,ap)*100)/100))
      end
    end
    nra = gg.choice(vsr,nil,'')
    if nra == nil then return; end
    hadd = pbase + poffsets.positX + (nra * 0xFDC0)
    hpos = {getadd(hadd,gg.TYPE_FLOAT),getadd(hadd + 0x4,gg.TYPE_FLOAT),getadd(hadd + 0x8,gg.TYPE_FLOAT)}
    if hpos[1] ~= 0 and hpos[2] ~= 0 then
      teleparr.spec = true
      teleparr.enable = true
      teleparr.arr = nra
      else
      gg.toast('玩家不存在')
    end
    gg.setVisible(false)
  end
  if vh == 5 then
    teleparr.enable = true
    teleparr.hide = true
    for i = 1, 7 do
      setadd(pbase + poffsets.positY + (i * 0xFDC0),gg.TYPE_FLOAT,-999,true)
    end
    gg.setVisible(false)
  end
  if vh == 6 then
    gg.setVisible(false)
    getfriendnode()
    srd = {}
    for k,v in ipairs(nodes) do
      table.insert(srd,{address = v[2] - 0x14,flags = gg.TYPE_DWORD,value = 0})
    end
    gg.setValues(srd)
    gg.toast('完成')
  end
  if vh == 7 then
    gg.setVisible(false)
    resetfriendnode()
  end
end

function hcamera()
    if eoffsets.ncamera == 0x00 then
      --camera 2000f;2000f;1
      gg.setVisible(false)
      gg.clearResults()
      gg.searchNumber('h 00 00 FA 44 00 00 FA 44 00 00 80 3F',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
      if gg.getResultCount() == 0 then return false end
      
      eoffsets.ncamera = gg.getResults(1)[1].address + 0xB0
    gg.clearResults()
    end
    return true
end

--IQ10 Auto farm cus i'm lazy
function wingfarm(aa,bb)
  nyn = ''
  for i = aa, bb do
    nyn = getmap()
    portal(cworld[i][2])
    gg.sleep(psettings.wrdelay)
    for w = 0,10 do
      gg.sleep(psettings.wrdelay)
      if nyn ~= getmap() then
        gg.sleep(psettings.wrdelay)
        break;
      end
    end
    abslight()
    gg.sleep(psettings.wrdelay * 0.4)
  end
  gg.toast('完成')
end

function candlefarm(aa,bb)
  nyn = ''
  myn = getadd(pbase + poffsets.mcandles,gg.TYPE_DWORD)
  myb = getadd(pbase + poffsets.mcandles + 0xC,gg.TYPE_DWORD)
  setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,true)
  gamespeed(psettings.crspeed)
  for i,v in pairs(candles) do
    v.value = 1.0
    v.freeze = true
  end
  gg.setValues(candles)
  gg.addListItems(candles)
  for i,v in pairs(flowers) do
    v.value = 0
    v.freeze = true
  end
  gg.setValues(flowers)
  gg.addListItems(flowers)
  
  for i = aa, bb do
    nyn = getmap()
    ntn = {6974}
    if cworld[i][2]~='SunsetEnd' and cworld[i][2]~='SunsetColosseum' then
    portal(cworld[i][2])
    --gg.sleep(psettings.crdelay)
    for w = 0,10 do
      gg.sleep(psettings.crdelay)
      if nyn ~= getmap() then
        gg.sleep(psettings.crdelay)
        break;
      end
    end
    gamespeed(psettings.crspeed)
    nyn = getmap()
    if nyn == 'Prairie_Village' then
      ntn = cpoint.pr1
    elseif nyn == 'Prairie_Island' then
      ntn = cpoint.pr2
    elseif nyn == 'Rain' then
      ntn = cpoint.fr1
    elseif nyn == 'RainForest' then
      ntn = cpoint.fr2
    elseif nyn == 'RainShelter' then
      ntn = cpoint.fr3
    elseif nyn == 'Rain_Cave' then
      ntn = cpoint.fr4
    elseif nyn == 'RainMid' then
      ntn = cpoint.fr5
    elseif nyn == 'RainEnd' then
      ntn = cpoint.fr6
    elseif nyn == 'SunsetEnd2' then
      ntn = cpoint.va1
    elseif nyn == 'Dusk' then
      ntn = cpoint.de1
    elseif nyn == 'DuskGraveyard' then
      ntn = cpoint.de2
    elseif nyn == 'DuskOasis' then
      ntn = cpoint.de3
    elseif nyn == 'Dusk_CrabField' then
      ntn = cpoint.de4
    elseif nyn == 'DuskMid' then
      ntn = cpoint.de5
    elseif nyn == 'Sunset_FlyRace' or nyn == 'SunsetRace' then
      dorace()
    end
    viscandle(true)
    if ntn[1] == 6974 then
      absorb()
      gg.sleep(psettings.crabsorb)
      else
      for k,c in pairs(ntn) do
        setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14,true)
        if nyn ~= getmap() then
          portal(nyn)
          gg.sleep(psettings.crdelay)
        end
        
        setposit(c[1],c[2],c[3])
        absorb()
        gg.sleep(psettings.crabsorb)
      end
    end
    end
  end
  myn = getadd(pbase + poffsets.mcandles,gg.TYPE_DWORD) - myn
  myb = myn + getadd(pbase + poffsets.mcandles + 0xC,gg.TYPE_DWORD) - myb
  gamespeed(1)
  --gg.toast('Collected ' .. toint(math.floor(myb/150)) .. ' candles(' .. myb .. ' points)')
  gg.toast('完成')
  setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
  gg.removeListItems(candles)
  gg.removeListItems(flowers)
end

function doorpeek(boo)
  dpoint = eoffsets.nentity - poffsets.mportal
  vf = {}
  if boo then
    gg.setVisible(false)
    for i = 0, 15 do
      if getadd(dpoint + (0xE0 * i) - 0x4,gg.TYPE_DWORD) == 0 then
      break;
      end
      for y = 1,13 do
        table.insert(vf,{address=dpoint+(0xE0*i)-(0x4*y),flags=gg.TYPE_DWORD,value=0})
      end
      gg.setValues(vf)
      nowind()
    end

    return;
  end
  vf = {}
  mf = {}
  for i = 0, 15 do
    if getadd(dpoint + (0xE0 * i) - 0x4,gg.TYPE_DWORD) == 0 then
      break;
    end
    if getadd(dpoint + (0xE0 * i),gg.TYPE_DWORD) == 1 then
      if getadd(dpoint + (0xE0 * i) - 0x34,gg.TYPE_DWORD) == 49 then
        table.insert(vf,addtostr(getadd(dpoint + (0xE0 * i) - 0x34 + 0x10,gg.TYPE_QWORD),24))
        else
        table.insert(vf,addtostr(dpoint + (0xE0 * i) - 0x33,24))
      end
      table.insert(mf,{x=getadd(dpoint + (0xE0 * i) - 0x74,gg.TYPE_FLOAT),y=getadd(dpoint + (0xE0 * i) - 0x74+0x4,gg.TYPE_FLOAT),z=getadd(dpoint + (0xE0 * i) - 0x74+0x8,gg.TYPE_FLOAT)})
    end
  end 
  hf = gg.choice(vf,nil,'')
  if hf == nil then return; end
  setposit(mf[hf].x,mf[hf].y,mf[hf].z)
end

function getmagics()
  gg.toast('扫描...')
  xcv = pbase - poffsets.fullmagic
  for i = 0, 512 do
   xbv = xcv + (0x80 * i)
   if getadd(xbv + 0x8,gg.TYPE_DWORD) == 0  and getadd(xbv,gg.TYPE_DWORD) == 0 then
     
     break;
   end
   xse1 = addtostr(xbv - 0x17,20)
   xse2 = getadd(xbv-0x20,gg.TYPE_DWORD)
   xse3 = getadd(xbv,gg.TYPE_DWORD)
   if #xse1 < 1 then
     xse1 = addtostr(xbv + 0x13,20)
   end
   table.insert(allmagics,{xse1,xse2,xse3})
  end
end

function modmagic(ty) 
  if ty == 1 then 
    gg.setVisible(false) 
    for i = 0, 99 do 
      if getadd(pbase - poffsets.mymagic + (0x18 * i),gg.TYPE_DWORD) == 0 and getadd(pbase - poffsets.mymagic + (0x18 * i) + 0x10,gg.TYPE_DWORD) < 1 then 
        break 
      end 
    setadd(pbase - poffsets.mymagic + (0x18 * i) + 0x10,gg.TYPE_DWORD,999,false) 
    end 
    gg.toast('完成') 
    return; 
  end 
  if ty == 2 then 
    mine = {} 
    madd = {} 
    aname = {} 
    if #allmagics == 0 then 
      getmagics() 
    end 
    for i = 0, 110 do 
      xco = getadd(pbase - poffsets.mymagic + (0x18 * i),gg.TYPE_DWORD) 
      xcu = pbase - poffsets.mymagic + (0x18 * i) 
      if xco == 0 and getadd(xcu + 0x10,gg.TYPE_DWORD) < 1 then 
        break 
      end 
      for k,v in ipairs(allmagics) do 
        if v[2] == xco then 
          table.insert(mine,v[1])
          table.insert(madd,xcu) 
        end 
      end 
    end 
    for k,v in ipairs(allmagics) do 
      table.insert(aname,v[1]) 
    end 
    mxb = gg.choice(mine,nil,'选择你的魔法') 
    if mxb == nil then 
      return; 
    end 
    mxc = gg.choice(aname,nil,'选择你想替换的魔法') 
    if mxc == nil then 
      return; 
    end 
    setadd(madd[mxb],gg.TYPE_DWORD,allmagics[mxc][2],false) 
  end
end

function ovrdaily()
  owval = inputnum(1)
  ftarget = eoffsets.nentity - poffsets.daily
  ftbl = {}
  for i = 0, 512 do
    vc1 = getadd(ftarget + (0x50*i),gg.TYPE_QWORD)
    if vc1 < 1 then break; end
    table.insert(ftbl,{address = ftarget + (0x50*i) + 0x8,flags = gg.TYPE_DWORD,value = owval})
    table.insert(ftbl,{address = ftarget + (0x50*i) + 0xC,flags = gg.TYPE_FLOAT,value = 1})
  end
  gg.setValues(ftbl)
  gg.toast('完成')
end

function dumpdaily()
  ftarget = eoffsets.nentity - poffsets.daily
  fstr = ''
  for i = 0, 512 do
    vc1 = getadd(ftarget + (0x50*i),gg.TYPE_QWORD)
    if vc1 < 1 then break; end
    fstr = fstr .. addtostr(vc1,38) .. '/' .. getadd(ftarget + (0x50*i) + 0x8,gg.TYPE_DWORD) .. '/' .. getadd(ftarget + (0x50*i) + 0xC,gg.TYPE_FLOAT) .. '\n'
  end
  gg.copyText(fstr)
end

function magicmenu()
  gf = gg.choice({'选择魔法（会闪光）','选择魔法（不会闪光）','替换背包中的魔法','无限法术（暂时）', '随机魔法','移除所有法术'},nil,'')
  if gf == nil then return; end
  if gf == 1 or gf == 2 then
    y={}
    for i, v in ipairs(mid) do
      table.insert(y,mid[i][1])
    end
    table.insert(y,'输入代码')
    x=gg.choice(y,nil,'选择魔法')
        for i = 0,9 do
      xa = getadd(pbase + (poffsets.magic + (0x30 * i)),gg.TYPE_DWORD)
      for h,d in ipairs(mid) do
        if xa == d[2] then
          mslot[i+1] = d[1]
        end
      end
    end
    t=gg.choice(mslot,nil,'选择位置')
    if (x ~= nil and t ~= nil) then
      gg.setVisible(false)
      if x == #y then
        jas = inputnum(0)
        mslot[t] = jas
        pmagic(t,jas,gf-1)
      else
        mslot[t] = mid[x][1]
        pmagic(t,mid[x][2],gf-1)
      end
      return;
    end
  end
  if gf == 3 then
    modmagic(2)
  end
  if gf == 4 then
    modmagic(1)
  end
  if gf == 5 then
    pmagic(7,-1,1)
    pmagic(6,-2,1)
  end
  if gf == 6 then
    gg.setVisible(false)
    for i=1,9 do
      pmagic(i,0,1)
    end
  end
  gg.setVisible(false)
end

function dumpmagic()
  if #allmagics == 0 then
    getmagics()
  end
  
xstr = ''
 xcv = pbase - poffsets.fullmagic
 for k,v in ipairs(allmagics) do
   xstr = xstr .. 'name : ' .. v[1] .. '\nvalue : ' .. v[2] .. '\nvalue2 : ' .. v[3] .. '\n'
 end
 gg.copyText(xstr)
end

function dumpdata()
  xstr = ''
  gg.clearResults()
  ggrange(4)
  gg.searchNumber('h 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F AF 52 E3 CD')
  gg.refineNumber(-81)
  if gg.getResultsCount() == 0 then
   gg.toast('!')
   return;
  end
 xcv = gg.getResults(1)[1].address
 for i = 0, 512 do
   xbv = xcv + (0x6D0 * i)
   if getadd(xbv,gg.TYPE_DWORD) == 0 then 
     break;
   end
   xstr = xstr .. 'name : ' .. addtostr(xbv + 0x5B,24) .. '\ntype : ' .. addtostr(xbv + 0x329,24) .. '\nvalue : ' .. getadd(xbv,gg.TYPE_DWORD) .. '\n'
 end
 gg.copyText(xstr)
end

function searchgl()
  gg.clearResults()
  ggrange(4)
  gg.setVisible(false)
  gg.searchNumber(':glow_15',nil,false,nil,prange.a,prange.b)
  if gg.getResultsCount() == 0 then
   gg.toast('失败!')
  else
  eoffsets.brighter=gg.getResults(1)[1].address + 0x1F
  end
end

function collectcrab(uy)
  frz = true
  eval = {}
  rpoint = eoffsets.nentity - poffsets.ecrabs
  mpoint = getcoord(true)
  if uy == 0 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --eposit = {getadd(rpoint + (0xC80*i),gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x4,gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x8,gg.TYPE_FLOAT)}
    table.insert(eval,{address=rpoint + (0xC80*i),flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='crabX'})
    table.insert(eval,{address=rpoint + (0xC80*i)+0x4,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='crabY'})
    table.insert(eval,{address=rpoint + (0xC80*i)+0x8,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='crabZ'})
    end
if #eval == 0 then return; end
  --gg.setValues(eval)
  if isfreeze(rpoint) then
    gg.removeListItems(eval)
    gg.toast('关闭')
    else
    gg.addListItems(eval)
    gg.toast('打开')
  end
  return;
  end
  if uy == 1 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --setadd(pbase + poffsets.pcrabs,gg.TYPE_QWORD,rpoint-0x38,false)
    setadd(rpoint + (0xC80*i)+0xC80,gg.TYPE_DWORD,41249,false)
    setadd(rpoint + (0xC80*i)+0x5AC-0x4,gg.TYPE_DWORD,41249,false)
    end
    for i=0,50 do
      
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --setadd(pbase + poffsets.pcrabs,gg.TYPE_QWORD,0,false)
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,0,false)
    end
    return;
  end
  if uy == 2 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,41249,true)
    setadd(rpoint + (0xC80*i)+0x5AC-0x4,gg.TYPE_DWORD,41249,false)
    gg.sleep(200)
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,0,false)
    setadd(rpoint + (0xC80*i)+0x5AC-0x4,gg.TYPE_DWORD,41249,false)
    end
  end
  if uy == 3 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,41249,false)
    end
  end
  if uy == 4 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    setadd(rpoint + (0xC80*i)+0x5AC,gg.TYPE_DWORD,0,false)
    end
  end
end

function collectkrill(uy)
  frz = true
  eval = {}
  rpoint = eoffsets.nentity - poffsets.ecrabs - 0xC170
  mpoint = getcoord(true)
  if uy == 0 then
    for i=0,50 do
    evalid = getadd(rpoint + (0xC80*i)+0x30,gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
    --eposit = {getadd(rpoint + (0xC80*i),gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x4,gg.TYPE_FLOAT),getadd(rpoint + (0xC80*i)+0x8,gg.TYPE_FLOAT)}
    table.insert(eval,{address=rpoint + (0xC80*i),flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='krillX'})
    table.insert(eval,{address=rpoint + (0xC80*i)+0x4,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='krillY'})
    table.insert(eval,{address=rpoint + (0xC80*i)+0x8,flags=gg.TYPE_FLOAT,value=-999,freeze=true,name='krillZ'})
    end
if #eval == 0 then return; end
  --gg.setValues(eval)
  if isfreeze(rpoint) then
    gg.removeListItems(eval)
    gg.toast('关闭')
    else
    gg.addListItems(eval)
    gg.toast('打开')
  end
  return;
  end
  if uy == 1 then
    for i=0,50 do
    --detec : 1D0
    evalid = getadd(rpoint + (0xC80*i),gg.TYPE_FLOAT)
    if evalid == 0 then
      break
    end
      table.insert(eval,{address=rpoint + (0xC80*i),flags=gg.TYPE_FLOAT,value=mpoint[1]})
      table.insert(eval,{address=rpoint + (0xC80*i)+0x4,flags=gg.TYPE_FLOAT,value=mpoint[2]})
      table.insert(eval,{address=rpoint + (0xC80*i)+0x8,flags=gg.TYPE_FLOAT,value=mpoint[3]})
    end
    gg.setValues(eval)
    return;
  end
end

function fkelders()
  gg.clearResults()
  ggrange(4)
  gg.searchNumber('h 00 00 00 00 00 00 80 3F CD CD CD CD 00 00 00 00',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  if gg.getResultsCount() == 0 then
    gg.toast('失败!')
    return;
  else
    mm = gg.getResults(gg.getResultsCount())
    for k,v in ipairs(mm) do
      v.address = v.address - 0x2
      v.flags = gg.TYPE_FLOAT
      v.value = 0
    end
    gg.setValues(mm)
  end
end

function hookui()
  vm = getmap()
  if reached ~= vm then
    reached = ''
  end
  cgh = gg.choice({
    '访问背包按钮',
    '裤子',
    '面具',
    '头发',
    '斗篷',
    '道具',
    '隐藏/显示用户界面',
    '锁定用户界面',
    '退出'
  },nil,'')
  vtarget = getadd(eoffsets.nentity + poffsets.uihook,gg.TYPE_QWORD) + 0x18
  if cgh == 1 then
    gg.setVisible(false)
    if reached ~= getmap() then
      reachtest()
      reached = vm
    end
  end
  if cgh == 2 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,0,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 3 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,3,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 4 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,2,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 5 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,1,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 6 then
    setadd(vtarget + 0x3C + 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C - 0x4,gg.TYPE_DWORD,1,false)
    setadd(vtarget + 0x3C,gg.TYPE_DWORD,8,false)
    setadd(vtarget,gg.TYPE_DWORD,1,false)
  end
  if cgh == 7 then
    if getadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD) == 0 then
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,1,false)
    else
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,0,false)
    end
  end
  if cgh == 8 then
    if isfreeze(vtarget - 0xC208 + 0x30) then
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,0,false)
      else
      setadd(vtarget - 0xC208 + 0x30,gg.TYPE_DWORD,0,true)
    end
  end
  if cgh == 9 then
    huiset = false
    domenu()
  end
  gg.setVisible(false)
end

function getfriendnode()
  if #nodes < 3 then
    --[[
    gg.clearResults()
    ggrange(4)
    gg.setVisible(false)
    gg.searchNumber(1601466469,gg.TYPE_DWORD,false,nil,prange.a,prange.b)
    if gg.getResultsCount() == 0 then
      gg.toast('失败!')
    else
      eoffsets.gnode=gg.getResults(1)[1].address
      for i = 0, 39 do
        nn = eoffsets.gnode + (0x2E0 * i)
        mm = nn - 0x18
        ww = mm - 0x14
        yy = addtostr(nn - 0x4,20)
        if string.find(yy,'accept_') then
        table.insert(nodes,{yy,mm,getadd(mm,gg.TYPE_DWORD),getadd(ww,gg.TYPE_DWORD)})
        end
      end
      --print(nodes)
    end
    gg.clearResults()
    ]]--

    eoffsets.gnode=eoffsets.nentity - poffsets.enode
    for i = 0, 39 do
      nn = eoffsets.gnode + (0x2E0 * i)
      mm = nn - 0x18
      ww = mm - 0x14
      yy = addtostr(nn - 0x4,20)
      if string.find(yy,'accept_') then
        table.insert(nodes,{yy,mm,getadd(mm,gg.TYPE_DWORD),getadd(ww,gg.TYPE_DWORD)})
      end
    end
  end
  
end

function setdesk(str,add)
  if eoffsets.pdesk == 0x00 then
    gg.setVisible(false)
    gg.clearResults()
    ggrange(4)
    gg.searchNumber('h 22 55 69 4F 75 74 66 69 74 50 72 6F 70 43 68 61 69 72 00 00 00 00 00 00 14 74 61 62')
    gg.refineNumber(20)
    if gg.getResultsCount() == 0 then
      gg.toast('失败!')
      return;
    end
    eoffsets.pdesk = gg.getResults(1)[1].address + 0x1
  end
  setstr(eoffsets.pdesk + add,24,str)
end

function setspirit(val)
  nfirst = false
  if eoffsets.gspirits == 0x00 then
    nfirst = true
    gg.setVisible(false)
    gg.clearResults()
    ggrange(4)
    gg.searchNumber('h D3 21 18 8F 00 00 00 00 12 6E 61 6D 65 5F 64 61 77 6E 00 00')
    dq = gg.getResults(gg.getResultsCount())
    if gg.getResultsCount() == 0 then
      gg.toast('失败!')
      return;
    end
    eoffsets.gspirits = dq[1].address
    gg.clearResults()
  end
  --spirits = {}
  for i = 0, 40 do
    mm = eoffsets.gspirits + (0x80 * i)
    if nfirst then
    table.insert(spirits,{getadd(mm,gg.TYPE_QWORD),addtostr(mm + 0x9,20),mm})
    end
    setadd(mm,gg.TYPE_QWORD,val,false)
  end
  gg.toast('完成')
  --print(eoffsets.gspirits)
end

function calc3d(a,b)
  return math.sqrt((a.x - b.x)^2 + (a.y - b.y)^2 + (a.z - b.z)^2)
end

function telelist()
  kurr = {'🆙️共享此位置'}
  karr = {0}
  nun = getmap()
  for k,v in pairs(posits) do
    if nun == v.map then
      table.insert(karr,v)
      table.insert(kurr,replace(v.name,'_',' '))
    end
  end
  xx=gg.choice(kurr,nil,nun)
  if xx == nil then
    return;
  end
  if xx == 1 then
    pshare = pshare .. '{map=\'' .. getmap() .. '\'$$name=\'' .. replace(inputstr(),' ','_') .. '\'$$x=' .. getadd(pbase + poffsets.positX,gg.TYPE_FLOAT) .. '$$y=' .. getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) .. '$$z=' .. getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT) .. '}$$\n'
    gg.copyText(pshare)
    gg.toast('将代码粘贴到discord组！')
    else
    setposit(karr[xx].x,karr[xx].y,karr[xx].z)
  end
  gg.setVisible(false)
end

function resetfriendnode()
  xrs = {}
  for i,v in ipairs(nodes) do
    table.insert(xrs,{address = nodes[i][2],flags = gg.TYPE_BYTE,value = nodes[i][3]})
    table.insert(xrs,{address = nodes[i][2]-0x14,flags = gg.TYPE_DWORD,value = nodes[i][4]})
  end
  gg.setValues(xrs)
  gg.toast('node reset')
end

function reachtest()
  nda = {}
  ndb = 0
  for i = 1, 603 do
    agr = eoffsets.nentity - poffsets.wbtns + (0x50 * i)
    ags = getadd(agr,gg.TYPE_DWORD)
    if ags == 0 then break end
    agf = getadd(agr-0xC,gg.TYPE_FLOAT)
    if agf > 2 and agf < 4 then
    for y = 0, 8 do
      table.insert(nda,{address = agr - 0x8 - (0x4 * y), flags = gg.TYPE_FLOAT,value = 0})
    end
    ndb = ndb + 1
    end
  end
  gg.toast(ndb)
  gg.setValues(nda)
end

function nowind()
  nn = 0x00
  kj = false
  xy = {}
  ggrange(4)
  gg.setVisible(false)
  for i=0,100 do
    xk = eoffsets.nentity - poffsets.wwind + (i*0x100)
    if getadd(xk,gg.TYPE_DWORD) ~= 0 then
    for y = 1, 14 do
      table.insert(xy,{address = xk - (y * 0x4),flags = gg.TYPE_DWORD,value = 0})
    end
    end
  end
  gg.setValues(xy)
  gg.toast('完成')
  --[[
  nmp = getmap()
  for i,v in ipairs(windwallset) do
    if nmp == windwallset[i][1] then
      gg.clearResults()
      gg.searchNumber(windwallset[i][2],gg.TYPE_QWORD,false,nil,prange.a,prange.b)
      if gg.getResultsCount() > 0 then
        kj = true
        nn=gg.getResults(1)[1].address
        for y = 1, 14 do
          setadd(nn - (y * 0x4),gg.TYPE_FLOAT,0,false)
        end
      end
      
    end
  end
  if kj == false then
    gg.toast('失败!')
  else
    gg.toast('完成 : ' .. nmp)
  end
  gg.clearResults()
  ]]--
end

function scsettings()
  xcs = gg.choice({
    '自动收集蜡烛speed hack: ' .. psettings.crspeed,
    '自动收集蜡烛时间: ' .. psettings.crdelay .. 'ms',
    '自动收集蜡烛之后时间: ' .. psettings.crabsorb .. 'ms',
    '自动收集翼时间 : ' .. psettings.wrdelay .. 'ms',
    '穿越前方围墙距离: ' .. psettings.warpdis,
    '不会丢失翼 : ' .. boolling(psettings.nodamage),
    '快速回家 : ' .. boolling(psettings.fasthome),
    '使用gg加速: ' .. boolling(psettings.ggspeed),
    '切换地图时加速: ' .. boolling(psettings.portalspeed),
    '自动显示脚本菜单: ' .. boolling(psettings.showmenu),
    '手动收集蜡烛时间: ' .. psettings.smcrdelay .. 'ms',
    '手动收集翼时间: ' .. psettings.smwrdelay .. 'ms',
    '使用传统地图转换器 : ' .. boolling(psettings.portaldef),
    '快速回遇镜速度: ' .. psettings.fhspeed,
    '更改地图图像 : ' .. imgs[psettings.cmimage],
    '安卓11（测试）: ' .. boolling(psettings.aeleven)
  },nil,'')
  if xcs == nil then return; end
  if xcs == 1 then
    psettings.crspeed = inputnum(3)
  end
  if xcs == 2 then
    psettings.crdelay = inputnum(1500)
  end
  if xcs == 3 then
    psettings.crabsorb = inputnum(0)
  end
  if xcs == 4 then
    psettings.wrdelay = inputnum(1100)
  end
  if xcs == 5 then
    psettings.warpdis = inputnum(6)
  end
  if xcs == 6 then
    psettings.nodamage = toggle(psettings.nodamage)
  end
  if xcs == 7 then
    psettings.fasthome = toggle(psettings.fasthome)
  end
  if xcs == 8 then
    psettings.ggspeed = toggle(psettings.ggspeed)
  end
  if xcs == 9 then
    psettings.portalspeed = toggle(psettings.portalspeed)
  end
  if xcs == 10 then
    psettings.showmenu = toggle(psettings.showmenu)
  end
  if xcs == 11 then
    psettings.smcrdelay = inputnum(1000)
  end
  if xcs == 12 then
    psettings.smwrdelay = inputnum(1000)
  end
  if xcs == 13 then
    psettings.portaldef = toggle(psettings.portaldef)
  end
  if xcs == 14 then
    psettings.fhspeed = inputnum(100)
  end
  if xcs == 15 then
    gh = gg.choice(imgs,nil,'')
    if gh ~= nil then
      psettings.cmimage = gh
    end
  end
  if xcs == 16 then
    psettings.aeleven = toggle(psettings.aeleven)
  end
  savedata()
  scsettings()
end

--setstr(0x7C43439A33,13,'testing')
startup()
--gg.toast(getadd(0x12C400BC,gg.TYPE_DWORD))

gg.setVisible(false)
gg.showUiButton()

function domenu()
      m=gg.choice({'🎈翅膀'
      	,'🕯收集周围蜡烛'
      	,'⬆️穿越前方围墙'
      	,'🌏世界'
      	,'☸引擎设置'
      	,'♿其他功能'
      	,'💫魔法'
      	,'🎭动作'
      	,'🏧背饰'
        ,'🔄自动跑图'
        ,'📽视野'
        ,'🚻玩家'
        ,'🆖️背包'
        ,'📝脚本设置'
        ,'⚠️开发者实验室'
      },nil,'by行者 QQ：1805153122')
      if m == 1 then
        nn = 0
        nn = getadd(pbase,gg.TYPE_DWORD)
        x=gg.choice({
        '能量充满'
        ,'设置翅膀数量'
        ,'锁定翅膀能量'
      	,'扔翅膀'
      	,'⚠️炸翅膀'
      	,'不会丢失翅膀'
      	,'无翼'
      	,'蓝色斗篷（进办公室）'
      	,'任天堂红斗篷'
      	,'任天堂蓝色斗篷'
      	},nil,'')
      	if x == 1 then
      	  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
      	end
      	if x == 2 then
      	  setadd(pbase,gg.TYPE_DWORD,inputnum(nn),false)
      	end
      	if x == 3 then
      	  adr = pbase + poffsets.pwing
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_FLOAT,14,false)
            gg.toast('关闭')
          else
            setadd(adr,gg.TYPE_FLOAT,inputnum(14),true)
            gg.toast('打开')
          end
      	end
    	  
      	if x == 4 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,inputnum(1),false)
      	end
      	if x == 5 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,nn - 1,false)
      	end
      	if x == 6 then
      	  adr = pbase + poffsets.pdamage
      	  if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('关闭')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('打开')
          end
      	end
      	if x == 7 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,0,false)
          gg.toast('换裤子或头发')
      	end
    	  if x == 8 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,2219120716,false)
      	end
      	if x == 9 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,320385458,false)
      	end
      	if x == 10 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,496297629,false)
      	end
      	gg.setVisible(false)
      end
      if m == 2 then 
        --abslight()
        absorb()
      end
      if m == 3 then 
        pmove(psettings.warpdis)
      end
      if m == 4 then 
        x=gg.choice({
        '➡️ 本图地点传送'
      	,'⏩随意图地点传送'
      	,'🤝和好友一起换地图'
      	,'🏠更改回遇镜位置'
      	,'⬇️保存此位置'
      	,'⬆️加载保存的位置' .. math.floor(px) .. ', ' .. math.floor(py) .. ', ' ..math.floor(pz)
      	,'🪄修改坐标'
      	,'🔔展示所有的蜡烛'
      	,'🔕隐藏所有蜡烛'
      	,'⚠️穿墙模式'
      	,'☁️显示/隐藏云'
      	,'⏫向上'
      	,'⏬向下'
      	,'☢捕蟹'
      	,'🍴移蟹'
      	,'🚪移除地图更改/限制'
      	,'设置向上/向下距离'
      	,'设置向前热键'
      	},nil,getmap())
      	if x == 1 then 
      	  telelist()
        end
      	if x == 2 then 
      	   y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️输入代码')
         r=gg.choice(y,nil,'')
         if (r ~= nil) then 
           if r == #y then
            istr = inputstr()
            if istr ~= nil then
              portal(istr)
            end
             else
            portal(cworld[r][2])
            end
         end
      	end
      	if x == 3 then
      	  y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️游戏崩溃')
         r=gg.choice(y,nil,'快速回遇镜功能将被禁用！')
         if (r ~= nil) then 
           gg.setVisible(false)
           if psettings.fhspeed > 1 then
            fasthome = false
           end
           xre = eoffsets.nentity - poffsets.wingmap
           setadd(xre,gg.TYPE_QWORD,49,false)
           setadd(xre+0x4,gg.TYPE_DWORD,0,false)
           setadd(xre+0x8,gg.TYPE_DWORD,28,false)
           setadd(xre+0xC,gg.TYPE_DWORD,0,false)
           --use pointer to not crash game
           setadd(xre+0x10,gg.TYPE_QWORD,eoffsets.nentity - poffsets.wingmap + 0x36D0,false)
           if r == #y then
            setstr(eoffsets.nentity - poffsets.wingmap + 0x36D0,24,'ExMachina')
          else
            setstr(eoffsets.nentity - poffsets.wingmap + 0x36D0,24,cworld[r][2])
          end
           setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,1973407668,false)
           gg.toast('你需要先到该图')
         end
      	end
      	if x == 4 then 
      	   y={}
      	   if eoffsets.world == 0x00 then
      	      gg.clearResults()
      	      ggrange(4)
      	      gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,eoffsets.nentity,pbase)
      	      if gg.getResultsCount() ~= 0 then
      	        nba = gg.getResults(gg.getResultsCount())
      	        for w,c in ipairs(nba) do
      	          if getadd(c.address+0x4,gg.TYPE_DWORD) == 11 then
      	            eoffsets.world = c.address + 0xC
      	            break
      	          end
      	        end
      	        else
      	          gg.toast('失败!')
      	      end
      	   end
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️输入代码')
         r=gg.choice(y,nil,'')
         if (r ~= nil) then 
           if r == #y then
            istr = inputstr()
            if istr ~= nil then
              setstr(eoffsets.world,24,istr)
            end
            else
              setstr(eoffsets.world,24,cworld[r][2])
           end
          gg.setVisible(false)
         end
      	end
      	if x == 5 then
      	  getpos()
      	  gg.setVisible(false)
      	end
        if x == 6 then 
          setposit(px, py, pz) 
          gg.setVisible(false)
        end
        if x == 7 then 
          usp = gg.prompt({"Coord X", "Coord Y", "Coord Z"}, {[1]= getadd(pbase+poffsets.positX,gg.TYPE_FLOAT),[2]= getadd(pbase+poffsets.positY,gg.TYPE_FLOAT),[3]= getadd(pbase+poffsets.positZ,gg.TYPE_FLOAT)}, {[1]="number",[1]="number",[1]="number"})
          if usp[1] == nil then
            usp[1] = getadd(pbase+poffsets.positX,gg.TYPE_FLOAT)
          end
          if usp[2] == nil then
            usp[2] = getadd(pbase+poffsets.positY,gg.TYPE_FLOAT)
          end
          if usp[3] == nil then
            usp[3] = getadd(pbase+poffsets.positZ,gg.TYPE_FLOAT)
          end
          setposit(usp[1],usp[2],usp[3])
          gg.setVisible(false)
        end
      if x == 8 then
        gg.setVisible(false)
        viscandle(true)
      end
      if x == 9 then
        gg.setVisible(false)
        viscandle(false)
      end
      if x == 10 then
          noclip()
      end
      if x == 11 then
          if getadd(eoffsets.cloud,gg.TYPE_DWORD) == 1 then
            setadd(eoffsets.cloud,gg.TYPE_DWORD,0,false)
            else
            setadd(eoffsets.cloud,gg.TYPE_DWORD,1,false)
          end
          gg.setVisible(false)
      end
      if x == 12 then
        setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) + psettings.warpdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      end
      if x == 13 then
        setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) - psettings.warpdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      end
      if x == 14 then
        gg.setVisible(false)
        collectcrab(1)
      end
      if x == 15 then
        gg.setVisible(false)
        collectcrab(0)
      end
      if x == 16 then
        doorpeek(true)
      end
      if x == 17 then
          psettings.warpdis = inputnum(6)
          --savedata()
      end
      if x == 18 then
          k=gg.choice({
        '取消'
      	,'叫'
      	,'坐'
      	,'坐 2'
      	},nil,'')
          if k == 1 then mev = 0 end
          if k == 2 then
            mev = 1 
            setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
          end
          if k == 3 then mev = 2 end
          if k == 4 then mev = 3 end
        end
      if x == 18 then
          nnn = '{\"' .. getmap() .. '\",  {'
          for i = 0, 6 do
            nnn = nnn .. getadd(eoffsets.nworld + (i * 4),4) .. '; '
          end
          nnn = nnn .. '}},\n'
          gg.copyText(nnn)
        end
        
      end
      if m == 5 then
        
         x=gg.choice({
           '🔄光翼快速充能',
           '⏫设置翼力',
           '⏩跑步加速',
           '⏭场景变速',
           '↗️跳跃加速', 
           '⤴️跳跃距离',
           '❔重力',
           '📳FPS',
           '🚸身体大小',
           '🚹不会被击倒',
           '🔥自动点火',
           '🌬拆除防风墙',
           '🏠更快地回家',
           '🔦光倍增'
         },nil,'')
          if x == 1 then 
            if getadd(eoffsets.cspeed,gg.TYPE_FLOAT) >= 3.0 then
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,2.5,false)
              gg.toast('关闭')
            else
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,3.5,false)
              gg.toast('打开')
            end
          end
         if x == 2 then 
           setadd(eoffsets.wforce,gg.TYPE_FLOAT,inputnum(1.0),false)
         end
        if x == 3 then 
           setadd(eoffsets.sspeed,gg.TYPE_FLOAT,inputnum(3.5),false)
        end
        if x == 4 then 
          gamespeed(inputnum(1))
          gg.setVisible(false)
        end
        if x == 5 then 
           setadd(eoffsets.jump,gg.TYPE_FLOAT,inputnum(4.9),false)
        end
        if x == 6 then 
           setadd(eoffsets.jforce,gg.TYPE_FLOAT,inputnum(1),false)
        end
        if x == 7 then 
           setadd(eoffsets.gravity,gg.TYPE_FLOAT,inputnum(-3.16081619263),false)
        end
        if x == 8 then 
          if eoffsets.gframe == 0x00 then
            eoffsets.gframe = getadd(rbootloader + poffsets.ptofps,gg.TYPE_QWORD) + 0x160
          end
          setadd(eoffsets.gframe,gg.TYPE_FLOAT,inputnum(30),false)
          
        end
        if x == 9 then 
           setadd(pbase + poffsets.bsize,gg.TYPE_FLOAT,inputnum(0),true)
        end
        if x == 10 then
          adr = pbase + poffsets.pose
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('关闭')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('打开')
          end
        end
        if x == 11 then
          if candles[1].freeze then
            for i,v in pairs(candles) do
              v.value = 0
              v.freeze = false
            end
            gg.setValues(candles)
            gg.removeListItems(candles)
            for i,v in pairs(flowers) do
              v.value = 1
              v.freeze = false
            end
            gg.setValues(flowers)
            gg.removeListItems(flowers)
            gg.toast('关闭')
          else
            for i,v in pairs(candles) do
              v.value = 1.0
              v.freeze = true
            end
            gg.setValues(candles)
            gg.addListItems(candles)
            for i,v in pairs(flowers) do
              v.value = 0
              v.freeze = true
            end
            gg.setValues(flowers)
            gg.addListItems(flowers)
            gg.toast('打开')
          end
        end
        if x == 12 then
          nowind()
        end
        if x == 13 then
          if fasthome then
            fasthome = false
            gamespeed(1)
            gg.toast('关闭')
          else
            fasthome = true
            fastvalue = false
            gg.toast('打开')
          end
          
        end
        if x == 14 then
          setadd(eoffsets.glight,gg.TYPE_FLOAT,inputnum(1),false)
        end
        
      end
        
      if m == 6 then
         x=gg.choice({
           '🎹走路弹琴'
           ,'😵垃圾邮件魔法？？'
           ,'💥无限烟花'
           ,'超亮'
           ,'青亮'
           ,'蓝色布鲁特'
           ,'黑光'
           ,'💬聊天劫持'
           ,'👻魔鬼步伐'
           ,'😱自动变换斗篷'
           ,'🦀扔螃蟹'
           ,'📢超级呐喊'
           ,'🎤锁定叫声音阶'
         },nil,'')
       if x == nil then
         x = 0
       end
        gg.setVisible(false)
        if x == 1 then 
          adr = pbase + poffsets.gesture
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,65793,false)
            gg.toast('关闭')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('打开')
          end
        end
        if x == 2 then 
          espam()
        end
        if x == 3 then
          adr = pbase + poffsets.famount
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,5,false)
          else
            setadd(adr,gg.TYPE_DWORD,5,true)
          end
        end
        
        if x == 4 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 2 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,40000,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 5 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 40001 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,105000,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 6 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 100556 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1055555,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 7 then
          if getadd(pbase - poffsets.sglow,gg.TYPE_FLOAT) < 1055556 then
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1000000000,false)
            pmagic(8,1097748727,1)
          else
            setadd(pbase - poffsets.sglow,gg.TYPE_FLOAT,1,false)
            pmagic(8,0,1)
          end
        end
        if x == 8 then
          --default = 2, table = 7, swing = 13
          rv = gg.choice({
           '桌子/篝火/茶桌',
           '秋千/跷跷板',
           '石凳',
           '输入代码（测试）',
           '取消'
         },nil,'')
          if rv == 1 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,7,true)
          end
          if rv == 2 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,13,true)
          end
          if rv == 3 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,4,true)
          end
          if rv == 4 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,inputnum(2),true)
          end
          if rv == 5 then
            setadd(eoffsets.nentity + poffsets.gchat,gg.TYPE_DWORD,2,false)
          end
        end
        if x == 9 then
          adr = eoffsets.nentity - poffsets.pwalk
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('关闭')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('打开')
          end
        end
        if x == 10 then
          if magictick < 0 then
            rmarray = {}
            for i,v in ipairs(mid) do
              if v[3] == 1 then
                table.insert(rmarray,v[2])
              end
            end
            magictick = 0
          else
            magictick = -1
          end
        end
        if x == 11 then
          gg.setVisible(false)
          collectcrab(2)
        end
        if x == 12 then
          ghf = tonumber(inputnum(10))
          if ghf ~= nil and ghf > 0 then
          gg.setVisible(false)
          for i = 0, ghf do
            pmagic(7,1725047129,0)
            gg.sleep(5)
          end
          end
          pmagic(7,0,0)
        end
        if x == 13 then
          adr = pbase + poffsets.shoutscale
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_FLOAT,5,false)
            gg.toast('关闭')
          else
            setadd(adr,gg.TYPE_FLOAT,5,true)
            gg.toast('打开')
          end
        end
      end
      
      if m == 7 then
        magicmenu()
      end
      if m == 8 then
        x=gg.choice({
           '升级所有动作'
           ,'更改特殊动作'
           ,'更改所有动作'
         },nil,'此功能已失效')
       if x == 1 then
         gg.setVisible(false)
         upemote()
       end
       if x == 2 then
         if echanged then
          echange(false)
          echanged = false
        else
          echange(true)
          echanged = true
         end
       end
       if x == 3 then
         chemote()
       end
       if x == 4 then
         schemote()
       end
       
      end
      if m == 9 then
         y={}
        for i, v in ipairs(pid) do
          table.insert(y,pid[i][2])
        end
         x=gg.choice(y,nil,'')
         if (x ~= nil) then 
           if pid[x][3] ~= nil then
            setdesk(pid[x][3],pid[x][4])
           end
           setadd(pbase + poffsets.eprop,gg.TYPE_DWORD,pid[x][1],false)
            gg.setVisible(false)
         end
      end
      if m == 10 then 
        x=gg.choice({
           '自动收集翅膀'
           ,'⚠️自动收集蜡烛⚠️'
           ,'手动收集蜡烛'
           ,'手动收集翅膀'
           ,'锁定玩家蜡烛'
           ,'解锁长老'
         },nil,'')
       if x == 1 then
         y=gg.choice({
           '全部'
           ,'晨岛'
           ,'云野'
           ,'雨林'
           ,'霞谷'
           ,'墓土'
           ,'禁阁'
           ,'伊甸园'
         },nil,'这是无法停止的！')
          if y == 1 then
            wingfarm(2,47)
          end
          if y == 2 then
            wingfarm(2,7)
          end
          if y == 3 then
            wingfarm(8,14)
          end
          if y == 4 then
            wingfarm(15,21)
          end
          if y == 5 then
            wingfarm(22,30)
          end
          if y == 6 then
            wingfarm(32,37)
          end
          if y == 7 then
            wingfarm(38,45)
          end
          if y == 8 then
            wingfarm(46,47)
          end
       end
       
       if x == 2 then
         y=gg.choice({
          '全部'
          ,'孤岛'
          ,'原野'
          ,'雨林'
          ,'霞谷'
          ,'墓土'
          ,'禁阁'
          ,'伊甸园'
         },nil,'这是无法停止的')
          if y == 1 then
            candlefarm(2,45)
          end
          if y == 2 then
            candlefarm(2,7)
          end
          if y == 3 then
            candlefarm(8,14)
          end
          if y == 4 then
            candlefarm(15,21)
          end
          if y == 5 then
            candlefarm(22,30)
          end
          if y == 6 then
            candlefarm(31,37)
          end
          if y == 7 then
            candlefarm(38,44)
          end
          if y == 8 then
            candlefarm(47,48)
          end
       end
       if x == 3 then
         gg.setVisible(false)
          crset.enable = true
          crmenu()
       end
       if x == 4 then
         gg.setVisible(false)
          wrset.enable = true
          wrmenu()
        end
        if x == 5 then
          if isfreeze(eoffsets.nentity + poffsets.ucandle) then
            setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),false)
            gg.toast('关闭')
            else
            setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),true)
            gg.toast('打开')
          end
            
        end
        if x == 6 then
          gg.setVisible(false)
          fkelders()
        end
        
      end
      if m == 11 then
        if hcamera() then
          y=gg.choice({
           '锁定左右视野'
           ,'锁定上下视野'
           ,'锁定滚动视野'
           ,'自动左右旋转'
           ,'视野距离'
           ,'视野高度'
           ,'景观视野'
           ,'视野均衡'
           ,'视野 左/右'
         },nil,'')
        if y == 1 then
          nn = getadd(eoffsets.ncamera,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera) then
            setadd(eoffsets.ncamera,gg.TYPE_FLOAT,nn,false)
            gg.toast('关闭')
          else
          setadd(eoffsets.ncamera,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('打开')
          end
        end
        if y == 2 then
          nn = getadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera + 0x4) then
            setadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT,nn,false)
            gg.toast('关闭')
          else
          setadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('打开')
          end
        end
        if y == 3 then
          nn = getadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera + 0x8) then
            setadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT,nn,false)
            gg.toast('关闭')
          else
          setadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('打开')
          end
        end
        if y == 4 then
          if isfreeze(eoffsets.ncamera+0x80) then
            setadd(eoffsets.ncamera + 0x80,gg.TYPE_DWORD,1,false)
            gg.toast('关闭')
          else
            setadd(eoffsets.ncamera + 0x80,gg.TYPE_DWORD,0,true)
            gg.toast('打开')
          end
        end
        if y == 5 then
          setadd(eoffsets.ncamera - 0x8C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x8C,gg.TYPE_FLOAT)),false)
        end
        if y == 6 then
          if isfreeze(eoffsets.ncamera-0x5C) then
            setadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT,0.5,false)
            gg.toast('关闭')
          else
            setadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT)),true)
            gg.toast('打开')
          end
        end
        if y == 7 then
          setadd(eoffsets.ncamera - 0x9C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x9C,gg.TYPE_FLOAT)),false)
        end
        if y == 8 then
          if isfreeze(eoffsets.ncamera-0x20) then
            setadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT,0.5,false)
            gg.toast('关闭')
          else
            setadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT)),true)
            gg.toast('打开')
          end
        end
        --0x394
        if y == 9 then
          z=gg.choice({
           '废除'
           ,'锁定左视野'
           ,'锁定右视野'
         },nil,'')
          if z == 1 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65536,false)
          end
          if z == 2 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65536,true)
          end
          if z == 3 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65537,true)
          end
        end
        else
          gg.toast('视野保持失败')
        end
        
      end
      if m==12 then
        teleplayers()
      end
      if m==13 then
        hookui()
        huiset = true
      end
      if m == 14 then
        scsettings()
      end
      if m == 15 then
        x=gg.choice({'搜索 1D','打印偏移量','打印动作','打印项目','打印魔术','打印 daily','frags','拿螃蟹','扔螃蟹','撞冥龙','执行','加载坐标','门'
        },nil,'⚠️这种功能是不稳定的')
        if x == 1 then
          xgd = gg.getResults(gg.getResultsCount())
          for k,v in ipairs(xgd) do
            if getadd(v.address + 0x50,gg.TYPE_DWORD) == 30 and getadd(v.address + 0x50 + 0x50,gg.TYPE_DWORD) == 31 and getadd(v.address + 0x50+ 0x50 + 0x50,gg.TYPE_DWORD) == 32 then
              gg.addListItems({v})
            end
          end
        end
        if x == 2 then
          debg()
        end
        if x == 3 then
          getemote()
          xstr = ''
          for k,v in ipairs(emotelist) do
            xstr = xstr .. 'name : ' .. v[1] .. '\ntype : ' .. v[2] .. '\nmap : ' .. v[3] .. '\nvalue : ' .. v[5] .. '\nicon : ' .. v[6] .. '\n'
          end
          gg.copyText(xstr)
        end
        if x == 4 then
          dumpdata()
        end
        if x == 5 then
          dumpmagic()
        end
        if x == 6 then
          dumpdaily()
        end
        if x == 7 then
          absflower()
        end
        if x == 8 then
          collectcrab(3)
        end
        if x == 9 then
          collectcrab(4)
        end
        if x == 10 then
          collectkrill(1)
        end
        if x == 11 then
          local fld,lrf = pcall(load(inputstr()))
          if not fld then gg.alert(lrf) end
        end
        if x == 12 then
          local fld,lrf = pcall(load('table.insert(posits,' ..replace(inputstr(),'$$',',') .. ')'))
          if not fld then gg.toast(lrf) end
        end
        if x == 13 then
          doorpeek(false)
        end

      end
        --absflower()
      
end

function crmenu()
  if #crlist == 0 then
    gg.toast('无法加载协调列表！')
    return;
  end
  hq = getmap()
  --gg.toast(#crlist)
  if #crarray == 0 then
    crset.map = hq
    crset.level = 0
    for k,v in ipairs(crlist) do
      if v.map == hq then
        table.insert(crarray,v)
      end
    end
    if #crarray == 0 then
      jy=gg.choice({'退出',''},nil,'这张地图上没有数据')
      if jy == 1 then
        gg.setVisible(false)
        crarray = {}
        crset.level = 0
        crset.map = ''
        crset.enable = false
        domenu()
      end
      return
    end
    
  end
  --gg.toast(#crarray)
  if hq ~= crset.map or #crarray == 0 then
    crarray = {}
    crset.level = 0
    crset.map = ''
    crmenu()
    return;
  end
  jy=gg.choice({
    '➡️下一点',
    '⬅️上一点',
    '🔒锁定玩家蜡烛',
    '⬆️穿越前方围墙',
    '⏩传送',
    '🔁跑全部',
    '🔥自动燃烧',
    '热键（选择动作下一步）',
    '💸收集翼',
    '🛄主菜单',
    '❌退出'
  },nil,'蜡烛: ' .. crset.level .. '/' .. #crarray)
  if jy == 1 then
    gg.setVisible(false)
    if crset.level >= #crarray then
      crset.level = #crarray - 1
    end
    crset.level = crset.level + 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
  end
  if jy == 2 then
    gg.setVisible(false)
    if crset.level <= 1 then
      crset.level = 2
    end
    crset.level = crset.level - 1
    setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
  end
  if jy == 3 then
    if isfreeze(eoffsets.nentity + poffsets.ucandle) then
      setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),false)
      gg.toast('关闭')
    else
      setadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD,getadd(eoffsets.nentity + poffsets.ucandle,gg.TYPE_DWORD),true)
      gg.toast('打开')
    end
  end
  if jy == 4 then
    pmove(psettings.warpdis)
  end
  if jy == 5 then
    telelist()
  end
  if jy == 6 then
    gg.setVisible(false)
    for k,v in ipairs(crarray) do
      gg.sleep(psettings.smcrdelay)
      if crset.level >= #crarray then
        gg.toast('完成')
        break
      end
      crset.level = crset.level + 1
      setposit(crarray[crset.level].x,crarray[crset.level].y,crarray[crset.level].z)
    end
  end
  if jy == 7 then
    if candles[1].freeze then
      gg.removeListItems(candles)
      gg.removeListItems(flowers)
      gg.toast('关闭')
    else
      for i,v in pairs(candles) do
        v.value = 1.0
        v.freeze = true
      end
      gg.addListItems(candles)
      for i,v in pairs(flowers) do
        v.value = 0
        v.freeze = true
      end
      gg.addListItems(flowers)
      gg.toast('打开')
    end
  end
  if jy == 8 then
    k=gg.choice({
        '取消'
      	,'叫'
      	,'坐'
      	,'坐着 2'
      	},nil,'')
    if k == 1 then mev = 0 end
    if k == 2 then
      mev = 1 
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
    if k == 3 then mev = 2 end
    if k == 4 then mev = 3 end
    gg.setVisible(false)
  end
  if jy == 9 then
    crset.enable = false
    wrset.enable = true
    wrmenu()
    return;
  end
  if jy == 10 then
    domenu()
    return;
  end
  if jy == 11 then
    mev = 0
    gg.setVisible(false)
    crset.enable = false
    domenu()
  end
end

function wrmenu()
  hq = getmap()
  --gg.toast(#crlist)
  if #wrarray == 0 then
    wrset.map = hq
    wrset.level = 0
    xdt = eoffsets.nentity + poffsets.wwings - 0x28
    for i=0,6 do
      fq1=getadd(xdt+(0x120*i),gg.TYPE_FLOAT)
      fq2=getadd(xdt+(0x120*i)+0x4,gg.TYPE_FLOAT)+0.7
      fq3=getadd(xdt+(0x120*i)+0x8,gg.TYPE_FLOAT)
      if fq1 ~= 0 and fq2 ~= 0 and getadd(xdt+(0x120*i)+0x20,gg.TYPE_FLOAT) ~= 0 then
        table.insert(wrarray,{x=fq1,y=fq2,z=fq3})
      end
    end
    if #wrarray == 0 then
      jy=gg.choice({'退出',''},nil,'在这张地图上没有发现翅膀')
      if jy == 1 then
        gg.setVisible(false)
        wrarray = {}
        wrset.level = 0
        wrset.map = ''
        wrset.enable = false
        domenu()
      end
      return
    end
    
  end
  --gg.toast(#wrarray)
  if hq ~= wrset.map or #wrarray == 0 then
    wrarray = {}
    wrset.level = 0
    wrset.map = ''
    wrmenu()
    return;
  end
  
  
  jy=gg.choice({'➡️下一点','⬅️上一点','⬆️穿越前方围墙','⏩传送','🔁跑全部','🕯收蜡烛','🛄主菜单','❌退出'},nil,'candle : ' .. wrset.level .. '/' .. #wrarray)
  if jy == 1 then
    gg.setVisible(false)
    if wrset.level >= #wrarray then
      wrset.level = #wrarray - 1
    end
    wrset.level = wrset.level + 1
    setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
  end
  if jy == 2 then
    gg.setVisible(false)
    if wrset.level <= 1 then
      wrset.level = 2
    end
    wrset.level = wrset.level - 1
    setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
  end
  if jy == 3 then
    pmove(psettings.warpdis)
  end
  if jy == 4 then
    telelist()
  end
  if jy == 5 then
    gg.setVisible(false)
    for k,v in ipairs(wrarray) do
      gg.sleep(psettings.smwrdelay)
      if wrset.level >= #wrarray then
        gg.toast('完成')
        break
      end
      wrset.level = wrset.level + 1
      setposit(wrarray[wrset.level].x,wrarray[wrset.level].y,wrarray[wrset.level].z)
    end
  end
  if jy == 6 then
    crset.enable = true
    wrset.enable = false
    crmenu()
    return;
  end
  if jy == 7 then
    domenu()
    return;
  end
  if jy == 8 then
    gg.setVisible(false)
    wrset.enable = false
    domenu()
  end
end

function telemenu()
  xh = gg.choice({
    '选择其他',
    '退出'},nil,'')
  if xh == 1 then
    teleplayers()
  end
  if xh == 2 then
      gg.setVisible(false)
    xde = {}
    mpos = getcoord(true)
    for i=1, 7 do
      xda = pbase + poffsets.positX + (i * 0xFDC0)
      for d=0,2 do
        table.insert(xde,{address=xda+(d*0x4),flags=gg.TYPE_FLOAT})
      end
    end
    if #xde ~= 0 then
      gg.removeListItems(xde)
    end
     xq = {}
      table.insert(xq,{address = eoffsets.ncamera-0x70,flags=gg.TYPE_FLOAT})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x4,flags=gg.TYPE_FLOAT})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x8,flags=gg.TYPE_FLOAT})
      gg.removeListItems(xq)
    
    teleparr.spec = false
    teleparr.follow = false
    teleparr.collect = false
    teleparr.hide = false
    teleparr.enable = false
    
    return;
  end
end

function teleloop()
  if teleparr.enable == false then return; end
  --[[
  if teleparr.collect then
    xde = {}
    mpos = {getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT), getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
    for i=1, 7 do
      xda = pbase + poffsets.positX + (i * 0xFDC0)
      if getadd(xda,gg.TYPE_FLOAT) ~= 0 then
        for d=0,2 do
          table.insert(xde,{address=xda+(d*0x4),flags=gg.TYPE_FLOAT,value=mpos[d+1] + i,freeze=true})
        end
      end
    end
    if #xde ~= 0 then
      gg.setValues(xde)
      --gg.addListItems(xde)
    end
    return;
  end
  ]]--
  if teleparr.follow then
    xda = pbase + poffsets.positX + (teleparr.arr * 0xFDC0)
    tx,ty,tz = getadd(xda,gg.TYPE_FLOAT), getadd(xda + 0x4,gg.TYPE_FLOAT), getadd(xda + 0x8,gg.TYPE_FLOAT)
    if tx ~= 0 then
      setposit(tx,ty+1,tz)
    else
      gg.toast('目标不存在！')
      teleparr.spec = false
      teleparr.follow = false
      teleparr.collect = false
      teleparr.enable = false
    end
    return;
  end
  if teleparr.spec then
    xda = pbase + poffsets.positX + (teleparr.arr * 0xFDC0)
    tx,ty,tz = getadd(xda,gg.TYPE_FLOAT), getadd(xda + 0x4,gg.TYPE_FLOAT), getadd(xda + 0x8,gg.TYPE_FLOAT)
    if tx ~= 0 then
      xq = {}
      table.insert(xq,{address = eoffsets.ncamera-0x70,flags=gg.TYPE_FLOAT,value=tx,freeze=true})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x4,flags=gg.TYPE_FLOAT,value=ty,freeze=true})
      table.insert(xq,{address = eoffsets.ncamera-0x70+0x8,flags=gg.TYPE_FLOAT,value=tz,freeze=true})
      gg.setValues(xq)
      gg.addListItems(xq)
      --setposit(tx,ty+1,tz)
    else
      gg.toast('目标不存在！')
      teleparr.spec = false
      teleparr.follow = false
      teleparr.collect = false
      teleparr.enable = false
    end
    return;
  end
end

while true do
  if teleparr.enable then
    teleloop()
  end
  if mev ~= 0 and teleparr.enable == false then
    mtrigger()
  end
  if fasthome and teleparr.enable == false then
    htrigger()
  end
  if resettick > -1 then
    resettick = resettick - 1 
    if resettick < 1 then
      resetfriendnode()
      resettick = -1
    end
  end
  if magictick > -1 then
    magictick = magictick + 1 
    if magictick > 4 then
      pmagic(7,rmarray[math.random(1,#rmarray)],1)
      magictick = 0
    end
  end
  
  if gg.isClickedUiButton() then
    if crset.enable then
      crmenu()
    elseif wrset.enable then
      wrmenu()
    elseif teleparr.enable then
      telemenu()
    elseif huiset then
      hookui()
    else
      domenu()
    end
  end
  if gg.isVisible(true) then
    if umenu and psettings.showmenu then
      umenu = false
      if crset.enable then
        crmenu()
      elseif wrset.enable then
        wrmenu()
      elseif teleparr.enable then
        telemenu()
      elseif huiset then
        hookui()
      else
        domenu()
      end
    end
  else
    umenu = true
  end
   gg.sleep(100)
end

--
