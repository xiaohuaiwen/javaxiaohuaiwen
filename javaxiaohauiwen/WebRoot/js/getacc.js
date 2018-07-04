//maxID=377;
var wrDefaultAcc = "";
var wrUrl="http://c.wrating.com/";
var wrPattern = {	
		
		0 : { "id": "860010-2292030100", "pattern": /^http:\/\/esf.soufun.com\/house1\//i},
		1 : { "id": "860010-2292030200", "pattern": /^http:\/\/esf.sh.soufun.com\/house1\//i},
		2 : { "id": "860010-2292030300", "pattern": /^http:\/\/esf.gz.soufun.com\/house1\//i},
		3 : { "id": "860010-2292030400", "pattern": /^http:\/\/esf.sz.soufun.com\/house1\//i},
		4 : { "id": "860010-2292030500", "pattern": /^http:\/\/esf.tj.soufun.com\/house1\//i},
		5 : { "id": "860010-2292030600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/house1\//i},
		6 : { "id": "860010-2292030700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/house1\//i},
		7 : { "id": "860010-2292030800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/house1\//i},
		8 : { "id": "860010-2292030900", "pattern": /^http:\/\/esf.hz.soufun.com\/house1\//i},
		9 : { "id": "860010-2292031000", "pattern": /^http:\/\/esf.cd.soufun.com\/house1\//i},
		10 : { "id": "860010-2292031100", "pattern": /^http:\/\/esf.cq.soufun.com\/house1\//i},
		11 : { "id": "860010-2292040100", "pattern": /^http:\/\/esf.soufun.com\/house2\//i},
		12 : { "id": "860010-2292040200", "pattern": /^http:\/\/esf.sh.soufun.com\/house2\//i},
		13 : { "id": "860010-2292040300", "pattern": /^http:\/\/esf.gz.soufun.com\/house2\//i},
		14 : { "id": "860010-2292040400", "pattern": /^http:\/\/esf.sz.soufun.com\/house2\//i},
		15 : { "id": "860010-2292040500", "pattern": /^http:\/\/esf.tj.soufun.com\/house2\//i},
		16 : { "id": "860010-2292040600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/house2\//i},
		17 : { "id": "860010-2292040700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/house2\//i},
		18 : { "id": "860010-2292040800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/house2\//i},
		19 : { "id": "860010-2292040900", "pattern": /^http:\/\/esf.hz.soufun.com\/house2\//i},
		20 : { "id": "860010-2292041000", "pattern": /^http:\/\/esf.cd.soufun.com\/house2\//i},
		21 : { "id": "860010-2292041100", "pattern": /^http:\/\/esf.cq.soufun.com\/house2\//i},
		22 : { "id": "860010-2292050100", "pattern": /^http:\/\/esf.soufun.com\/school\//i},
		23 : { "id": "860010-2292050200", "pattern": /^http:\/\/esf.sh.soufun.com\/school\//i},
		24 : { "id": "860010-2292050300", "pattern": /^http:\/\/esf.gz.soufun.com\/school\//i},
		25 : { "id": "860010-2292050400", "pattern": /^http:\/\/esf.sz.soufun.com\/school\//i},
		26 : { "id": "860010-2292050500", "pattern": /^http:\/\/esf.tj.soufun.com\/school\//i},
		27 : { "id": "860010-2292050600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/school\//i},
		28 : { "id": "860010-2292050700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/school\//i},
		29 : { "id": "860010-2292050800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/school\//i},
		30 : { "id": "860010-2292050900", "pattern": /^http:\/\/esf.hz.soufun.com\/school\//i},
		31 : { "id": "860010-2292051000", "pattern": /^http:\/\/esf.cd.soufun.com\/school\//i},
		32 : { "id": "860010-2292051100", "pattern": /^http:\/\/esf.cq.soufun.com\/school\//i},
		33 : { "id": "860010-2292070100", "pattern": /^http:\/\/esf.soufun.com\/chushou\/3_..*.htm/i},
		34 : { "id": "860010-2292070200", "pattern": /^http:\/\/esf.sh.soufun.com\/chushou\/3_..*.htm/i},
		35 : { "id": "860010-2292070300", "pattern": /^http:\/\/esf.gz.soufun.com\/chushou\/3_.*.htm/i},
		36 : { "id": "860010-2292070400", "pattern": /^http:\/\/esf.sz.soufun.com\/chushou\/3_.*.htm/i},
		37 : { "id": "860010-2292070500", "pattern": /^http:\/\/esf.tj.soufun.com\/chushou\/3_.*.htm/i},
		38 : { "id": "860010-2292070600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/chushou\/3_.*.htm/i},
		39 : { "id": "860010-2292070700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/chushou\/3_.*.htm/i},
		40 : { "id": "860010-2292070800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/chushou\/3_.*.htm/i},
		41 : { "id": "860010-2292070900", "pattern": /^http:\/\/esf.hz.soufun.com\/chushou\/3_.*.htm/i},
		42 : { "id": "860010-2292071000", "pattern": /^http:\/\/esf.cd.soufun.com\/chushou\/3_.*.htm/i},
		43 : { "id": "860010-2292071100", "pattern": /^http:\/\/esf.cq.soufun.com\/chushou\/3_.*.htm/i},
		44 : { "id": "860010-2292080100", "pattern": /^http:\/\/esf.soufun.com\/house\/a21\//i},
		45 : { "id": "860010-2292080200", "pattern": /^http:\/\/esf.sh.soufun.com\/house\/a21\//i},
		46 : { "id": "860010-2292080300", "pattern": /^http:\/\/esf.gz.soufun.com\/house\/a21\//i},
		47 : { "id": "860010-2292080400", "pattern": /^http:\/\/esf.sz.soufun.com\/house\/a21\//i},
		48 : { "id": "860010-2292080500", "pattern": /^http:\/\/esf.tj.soufun.com\/house\/a21\//i},
		49 : { "id": "860010-2292080600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/house\/a21\//i},
		50 : { "id": "860010-2292080700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/house\/a21\//i},
		51 : { "id": "860010-2292080800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/house\/a21\//i},
		52 : { "id": "860010-2292080900", "pattern": /^http:\/\/esf.hz.soufun.com\/house\/a21\//i},
		53 : { "id": "860010-2292081000", "pattern": /^http:\/\/esf.cd.soufun.com\/house\/a21\//i},
		54 : { "id": "860010-2292081100", "pattern": /^http:\/\/esf.cq.soufun.com\/house\/a21\//i},
		55 : { "id": "860010-2292090100", "pattern": /^http:\/\/esf.soufun.com\/chushou\/1_.*_-1.htm/i},
		56 : { "id": "860010-2292090200", "pattern": /^http:\/\/esf.sh.soufun.com\/chushou\/1_.*_-1.htm/i},
		57 : { "id": "860010-2292090300", "pattern": /^http:\/\/esf.gz.soufun.com\/chushou\/1_.*_-1.htm/i},
		58 : { "id": "860010-2292090400", "pattern": /^http:\/\/esf.sz.soufun.com\/chushou\/1_.*_-1.htm/i},
		59 : { "id": "860010-2292090500", "pattern": /^http:\/\/esf.tj.soufun.com\/chushou\/1_.*_-1.htm/i},
		60 : { "id": "860010-2292090600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/chushou\/1_.*_-1.htm/i},
		61 : { "id": "860010-2292090700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/chushou\/1_.*_-1.htm/i},
		62 : { "id": "860010-2292090800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/chushou\/1_.*_-1.htm/i},
		63 : { "id": "860010-2292090900", "pattern": /^http:\/\/esf.hz.soufun.com\/chushou\/1_.*_-1.htm/i},
		64 : { "id": "860010-2292091000", "pattern": /^http:\/\/esf.cd.soufun.com\/chushou\/1_.*_-1.htm/i},
		65 : { "id": "860010-2292091100", "pattern": /^http:\/\/esf.cq.soufun.com\/chushou\/1_.*_-1.htm/i},
		66 : { "id": "860010-2292140100", "pattern": /^http:\/\/esf.soufun.com\/villa\//i},
		67 : { "id": "860010-2292140200", "pattern": /^http:\/\/esf.sh.soufun.com\/villa\//i},
		68 : { "id": "860010-2292140300", "pattern": /^http:\/\/esf.gz.soufun.com\/villa\//i},
		69 : { "id": "860010-2292140400", "pattern": /^http:\/\/esf.sz.soufun.com\/villa\//i},
		70 : { "id": "860010-2292140500", "pattern": /^http:\/\/esf.tj.soufun.com\/villa\//i},
		71 : { "id": "860010-2292140600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/villa\//i},
		72 : { "id": "860010-2292140700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/villa\//i},
		73 : { "id": "860010-2292140800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/villa\//i},
		74 : { "id": "860010-2292140900", "pattern": /^http:\/\/esf.hz.soufun.com\/villa\//i},
		75 : { "id": "860010-2292141000", "pattern": /^http:\/\/esf.cd.soufun.com\/villa\//i},
		76 : { "id": "860010-2292141100", "pattern": /^http:\/\/esf.cq.soufun.com\/villa\//i},
		77 : { "id": "860010-2292160100", "pattern": /^http:\/\/esf.soufun.com\/chushou\/10_.*.htm/i},
		78 : { "id": "860010-2292160200", "pattern": /^http:\/\/esf.sh.soufun.com\/chushou\/10_.*.htm/i},
		79 : { "id": "860010-2292160300", "pattern": /^http:\/\/esf.gz.soufun.com\/chushou\/10_.*.htm/i},
		80 : { "id": "860010-2292160400", "pattern": /^http:\/\/esf.sz.soufun.com\/chushou\/10_.*.htm/i},
		81 : { "id": "860010-2292160500", "pattern": /^http:\/\/esf.tj.soufun.com\/chushou\/10_.*.htm/i},
		82 : { "id": "860010-2292160600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/chushou\/10_.*.htm/i},
		83 : { "id": "860010-2292160700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/chushou\/10_.*.htm/i},
		84 : { "id": "860010-2292160800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/chushou\/10_.*.htm/i},
		85 : { "id": "860010-2292160900", "pattern": /^http:\/\/esf.hz.soufun.com\/chushou\/10_.*.htm/i},
		86 : { "id": "860010-2292161000", "pattern": /^http:\/\/esf.cd.soufun.com\/chushou\/10_.*.htm/i},
		87 : { "id": "860010-2292161100", "pattern": /^http:\/\/esf.cq.soufun.com\/chushou\/10_.*.htm/i},
		88 : { "id": "860010-2292170100", "pattern": /^http:\/\/esf.soufun.com\/shop\//i},
		89 : { "id": "860010-2292170200", "pattern": /^http:\/\/esf.sh.soufun.com\/shop\//i},
		90 : { "id": "860010-2292170300", "pattern": /^http:\/\/esf.gz.soufun.com\/shop\//i},
		91 : { "id": "860010-2292170400", "pattern": /^http:\/\/esf.sz.soufun.com\/shop\//i},
		92 : { "id": "860010-2292170500", "pattern": /^http:\/\/esf.tj.soufun.com\/shop\//i},
		93 : { "id": "860010-2292170600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/shop\//i},
		94 : { "id": "860010-2292170700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/shop\//i},
		95 : { "id": "860010-2292170800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/shop\//i},
		96 : { "id": "860010-2292170900", "pattern": /^http:\/\/esf.hz.soufun.com\/shop\//i},
		97 : { "id": "860010-2292171000", "pattern": /^http:\/\/esf.cd.soufun.com\/shop\//i},
		98 : { "id": "860010-2292171100", "pattern": /^http:\/\/esf.cq.soufun.com\/shop\//i},
		99 : { "id": "860010-2292180100", "pattern": /^http:\/\/esf.soufun.com\/chushou\/6_.*.htm/i},
		100 : { "id": "860010-2292180200", "pattern": /^http:\/\/esf.sh.soufun.com\/chushou\/6_.*.htm/i},
		101 : { "id": "860010-2292180300", "pattern": /^http:\/\/esf.gz.soufun.com\/chushou\/6_.*.htm/i},
		102 : { "id": "860010-2292180400", "pattern": /^http:\/\/esf.sz.soufun.com\/chushou\/6_.*.htm/i},
		103 : { "id": "860010-2292180500", "pattern": /^http:\/\/esf.tj.soufun.com\/chushou\/6_.*.htm/i},
		104 : { "id": "860010-2292180600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/chushou\/6_.*.htm/i},
		105 : { "id": "860010-2292180700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/chushou\/6_.*.htm/i},
		106 : { "id": "860010-2292180800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/chushou\/6_.*.htm/i},
		107 : { "id": "860010-2292180900", "pattern": /^http:\/\/esf.hz.soufun.com\/chushou\/6_.*.htm/i},
		108 : { "id": "860010-2292181000", "pattern": /^http:\/\/esf.cd.soufun.com\/chushou\/6_.*.htm/i},
		109 : { "id": "860010-2292181100", "pattern": /^http:\/\/esf.cq.soufun.com\/chushou\/6_.*.htm/i},
		110 : { "id": "860010-2292190100", "pattern": /^http:\/\/esf.soufun.com\/office\//i},
		111 : { "id": "860010-2292190200", "pattern": /^http:\/\/esf.sh.soufun.com\/office\//i},
		112 : { "id": "860010-2292190300", "pattern": /^http:\/\/esf.gz.soufun.com\/office\//i},
		113 : { "id": "860010-2292190400", "pattern": /^http:\/\/esf.sz.soufun.com\/office\//i},
		114 : { "id": "860010-2292190500", "pattern": /^http:\/\/esf.tj.soufun.com\/office\//i},
		115 : { "id": "860010-2292190600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/office\//i},
		116 : { "id": "860010-2292190700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/office\//i},
		117 : { "id": "860010-2292190800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/office\//i},
		118 : { "id": "860010-2292190900", "pattern": /^http:\/\/esf.hz.soufun.com\/office\//i},
		119 : { "id": "860010-2292191000", "pattern": /^http:\/\/esf.cd.soufun.com\/office\//i},
		120 : { "id": "860010-2292191100", "pattern": /^http:\/\/esf.cq.soufun.com\/office\//i},
		121 : { "id": "860010-2292200100", "pattern": /^http:\/\/esf.soufun.com\/chushou\/7_.*.htm/i},
		122 : { "id": "860010-2292200200", "pattern": /^http:\/\/esf.sh.soufun.com\/chushou\/7_.*.htm/i},
		123 : { "id": "860010-2292200300", "pattern": /^http:\/\/esf.gz.soufun.com\/chushou\/7_.*.htm/i},
		124 : { "id": "860010-2292200400", "pattern": /^http:\/\/esf.sz.soufun.com\/chushou\/7_.*.htm/i},
		125 : { "id": "860010-2292200500", "pattern": /^http:\/\/esf.tj.soufun.com\/chushou\/7_.*.htm/i},
		126 : { "id": "860010-2292200600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/chushou\/7_.*.htm/i},
		127 : { "id": "860010-2292200700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/chushou\/7_.*.htm/i},
		128 : { "id": "860010-2292200800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/chushou\/7_.*.htm/i},
		129 : { "id": "860010-2292200900", "pattern": /^http:\/\/esf.hz.soufun.com\/chushou\/7_.*.htm/i},
		130 : { "id": "860010-2292201000", "pattern": /^http:\/\/esf.cd.soufun.com\/chushou\/7_.*.htm/i},
		131 : { "id": "860010-2292201100", "pattern": /^http:\/\/esf.cq.soufun.com\/chushou\/7_.*.htm/i},
		132 : { "id": "860010-2292020100", "pattern": /^http:\/\/esf.soufun.com\/house\//i},
		133 : { "id": "860010-2292020200", "pattern": /^http:\/\/esf.sh.soufun.com\/house\//i},
		134 : { "id": "860010-2292020300", "pattern": /^http:\/\/esf.gz.soufun.com\/house\//i},
		135 : { "id": "860010-2292020400", "pattern": /^http:\/\/esf.sz.soufun.com\/house\//i},
		136 : { "id": "860010-2292020500", "pattern": /^http:\/\/esf.tj.soufun.com\/house\//i},
		137 : { "id": "860010-2292020600", "pattern": /^http:\/\/esf.wuhan.soufun.com\/house\//i},
		138 : { "id": "860010-2292020700", "pattern": /^http:\/\/esf.nanjing.soufun.com\/house\//i},
		139 : { "id": "860010-2292020800", "pattern": /^http:\/\/esf.suzhou.soufun.com\/house\//i},
		140 : { "id": "860010-2292020900", "pattern": /^http:\/\/esf.hz.soufun.com\/house\//i},
		141 : { "id": "860010-2292021000", "pattern": /^http:\/\/esf.cd.soufun.com\/house\//i},
		142 : { "id": "860010-2292021100", "pattern": /^http:\/\/esf.cq.soufun.com\/house\//i},
		297 : { "id": "860010-2292031200", "pattern": /^http:\/\/esf.dl.soufun.com\/house1\//i},
		298 : { "id": "860010-2292031300", "pattern": /^http:\/\/esf.qd.soufun.com\/house1\//i},
		299 : { "id": "860010-2292031400", "pattern": /^http:\/\/esf.xian.soufun.com\/house1\//i},
		300 : { "id": "860010-2292041200", "pattern": /^http:\/\/esf.dl.soufun.com\/house2\//i},
		301 : { "id": "860010-2292041300", "pattern": /^http:\/\/esf.qd.soufun.com\/house2\//i},
		302 : { "id": "860010-2292041400", "pattern": /^http:\/\/esf.xian.soufun.com\/house2\//i},
		303 : { "id": "860010-2292051200", "pattern": /^http:\/\/esf.dl.soufun.com\/school\//i},
		304 : { "id": "860010-2292051300", "pattern": /^http:\/\/esf.qd.soufun.com\/school\//i},
		305 : { "id": "860010-2292051400", "pattern": /^http:\/\/esf.xian.soufun.com\/school\//i},
		306 : { "id": "860010-2292071200", "pattern": /^http:\/\/esf.dl.soufun.com\/chushou\/3_.*.htm/i},
		307 : { "id": "860010-2292071300", "pattern": /^http:\/\/esf.qd.soufun.com\/chushou\/3_.*.htm/i},
		308 : { "id": "860010-2292071400", "pattern": /^http:\/\/esf.xian.soufun.com\/chushou\/3_.*.htm/i},
		309 : { "id": "860010-2292081200", "pattern": /^http:\/\/esf.dl.soufun.com\/house\/a21\//i},
		310 : { "id": "860010-2292081300", "pattern": /^http:\/\/esf.qd.soufun.com\/house\/a21\//i},
		311 : { "id": "860010-2292081400", "pattern": /^http:\/\/esf.xian.soufun.com\/house\/a21\//i},
		312 : { "id": "860010-2292091200", "pattern": /^http:\/\/esf.dl.soufun.com\/chushou\/1_.*_-1.htm/i},
		313 : { "id": "860010-2292091300", "pattern": /^http:\/\/esf.qd.soufun.com\/chushou\/1_.*_-1.htm/i},
		314 : { "id": "860010-2292091400", "pattern": /^http:\/\/esf.xian.soufun.com\/chushou\/1_.*_-1.htm/i},
		315 : { "id": "860010-2292141200", "pattern": /^http:\/\/esf.dl.soufun.com\/villa\//i},
		316 : { "id": "860010-2292141300", "pattern": /^http:\/\/esf.qd.soufun.com\/villa\//i},
		317 : { "id": "860010-2292141400", "pattern": /^http:\/\/esf.xian.soufun.com\/villa\//i},
		318 : { "id": "860010-2292161200", "pattern": /^http:\/\/esf.dl.soufun.com\/chushou\/10_.*.htm/i},
		319 : { "id": "860010-2292161300", "pattern": /^http:\/\/esf.qd.soufun.com\/chushou\/10_.*.htm/i},
		320 : { "id": "860010-2292161400", "pattern": /^http:\/\/esf.xian.soufun.com\/chushou\/10_.*.htm/i},
		321 : { "id": "860010-2292171200", "pattern": /^http:\/\/esf.dl.soufun.com\/shop\//i},
		322 : { "id": "860010-2292171300", "pattern": /^http:\/\/esf.qd.soufun.com\/shop\//i},
		323 : { "id": "860010-2292171400", "pattern": /^http:\/\/esf.xian.soufun.com\/shop\//i},
		324 : { "id": "860010-2292181200", "pattern": /^http:\/\/esf.dl.soufun.com\/chushou\/6_.*.htm/i},
		325 : { "id": "860010-2292181300", "pattern": /^http:\/\/esf.qd.soufun.com\/chushou\/6_.*.htm/i},
		326 : { "id": "860010-2292181400", "pattern": /^http:\/\/esf.xian.soufun.com\/chushou\/6_.*.htm/i},
		327 : { "id": "860010-2292191200", "pattern": /^http:\/\/esf.dl.soufun.com\/office\//i},
		328 : { "id": "860010-2292191300", "pattern": /^http:\/\/esf.qd.soufun.com\/office\//i},
		329 : { "id": "860010-2292191400", "pattern": /^http:\/\/esf.xian.soufun.com\/office\//i},
		330 : { "id": "860010-2292201200", "pattern": /^http:\/\/esf.dl.soufun.com\/chushou\/7_.*.htm/i},
		331 : { "id": "860010-2292201300", "pattern": /^http:\/\/esf.qd.soufun.com\/chushou\/7_.*.htm/i},
		332 : { "id": "860010-2292201400", "pattern": /^http:\/\/esf.xian.soufun.com\/chushou\/7_.*.htm/i},
		333 : { "id": "860010-2292021200", "pattern": /^http:\/\/esf.dl.soufun.com\/house\//i},
		334 : { "id": "860010-2292021300", "pattern": /^http:\/\/esf.qd.soufun.com\/house\//i},
		335 : { "id": "860010-2292021400", "pattern": /^http:\/\/esf.xian.soufun.com\/house\//i},
		143 : { "id": "860010-2293030100", "pattern": /^http:\/\/rent.soufun.com\/house1\//i},
		144 : { "id": "860010-2293030200", "pattern": /^http:\/\/rent.sh.soufun.com\/house1\//i},
		145 : { "id": "860010-2293030300", "pattern": /^http:\/\/rent.gz.soufun.com\/house1\//i},
		146 : { "id": "860010-2293030400", "pattern": /^http:\/\/rent.sz.soufun.com\/house1\//i},
		147 : { "id": "860010-2293030500", "pattern": /^http:\/\/rent.tj.soufun.com\/house1\//i},
		148 : { "id": "860010-2293030600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/house1\//i},
		149 : { "id": "860010-2293030700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/house1\//i},
		150 : { "id": "860010-2293030800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/house1\//i},
		151 : { "id": "860010-2293030900", "pattern": /^http:\/\/rent.hz.soufun.com\/house1\//i},
		152 : { "id": "860010-2293031000", "pattern": /^http:\/\/rent.cd.soufun.com\/house1\//i},
		153 : { "id": "860010-2293031100", "pattern": /^http:\/\/rent.cq.soufun.com\/house1\//i},
		154 : { "id": "860010-2293070100", "pattern": /^http:\/\/rent.soufun.com\/house3\//i},
		155 : { "id": "860010-2293070200", "pattern": /^http:\/\/rent.sh.soufun.com\/house3\//i},
		156 : { "id": "860010-2293070300", "pattern": /^http:\/\/rent.gz.soufun.com\/house3\//i},
		157 : { "id": "860010-2293070400", "pattern": /^http:\/\/rent.sz.soufun.com\/house3\//i},
		158 : { "id": "860010-2293070500", "pattern": /^http:\/\/rent.tj.soufun.com\/house3\//i},
		159 : { "id": "860010-2293070600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/house3\//i},
		160 : { "id": "860010-2293070700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/house3\//i},
		161 : { "id": "860010-2293070800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/house3\//i},
		162 : { "id": "860010-2293070900", "pattern": /^http:\/\/rent.hz.soufun.com\/house3\//i},
		163 : { "id": "860010-2293071000", "pattern": /^http:\/\/rent.cd.soufun.com\/house3\//i},
		164 : { "id": "860010-2293071100", "pattern": /^http:\/\/rent.cq.soufun.com\/house3\//i},
		165 : { "id": "860010-2293040100", "pattern": /^http:\/\/rent.soufun.com\/chuzu\/3_.*_1.htm/i},
		166 : { "id": "860010-2293040200", "pattern": /^http:\/\/rent.sh.soufun.com\/chuzu\/3_.*_1.htm/i},
		167 : { "id": "860010-2293040300", "pattern": /^http:\/\/rent.gz.soufun.com\/chuzu\/3_.*_1.htm/i},
		168 : { "id": "860010-2293040400", "pattern": /^http:\/\/rent.sz.soufun.com\/chuzu\/3_.*_1.htm/i},
		169 : { "id": "860010-2293040500", "pattern": /^http:\/\/rent.tj.soufun.com\/chuzu\/3_.*_1.htm/i},
		170 : { "id": "860010-2293040600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/chuzu\/3_.*_1.htm/i},
		171 : { "id": "860010-2293040700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/chuzu\/3_.*_1.htm/i},
		172 : { "id": "860010-2293040800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/chuzu\/3_.*_1.htm/i},
		173 : { "id": "860010-2293040900", "pattern": /^http:\/\/rent.hz.soufun.com\/chuzu\/3_.*_1.htm/i},
		174 : { "id": "860010-2293041000", "pattern": /^http:\/\/rent.cd.soufun.com\/chuzu\/3_.*_1.htm/i},
		175 : { "id": "860010-2293041100", "pattern": /^http:\/\/rent.cq.soufun.com\/chuzu\/3_.*_1.htm/i},
		176 : { "id": "860010-2293050100", "pattern": /^http:\/\/rent.soufun.com\/house\/a21\//i},
		177 : { "id": "860010-2293050200", "pattern": /^http:\/\/rent.sh.soufun.com\/house\/a21\//i},
		178 : { "id": "860010-2293050300", "pattern": /^http:\/\/rent.gz.soufun.com\/house\/a21\//i},
		179 : { "id": "860010-2293050400", "pattern": /^http:\/\/rent.sz.soufun.com\/house\/a21\//i},
		180 : { "id": "860010-2293050500", "pattern": /^http:\/\/rent.tj.soufun.com\/house\/a21\//i},
		181 : { "id": "860010-2293050600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/house\/a21\//i},
		182 : { "id": "860010-2293050700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/house\/a21\//i},
		183 : { "id": "860010-2293050800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/house\/a21\//i},
		184 : { "id": "860010-2293050900", "pattern": /^http:\/\/rent.hz.soufun.com\/house\/a21\//i},
		185 : { "id": "860010-2293051000", "pattern": /^http:\/\/rent.cd.soufun.com\/house\/a21\//i},
		186 : { "id": "860010-2293051100", "pattern": /^http:\/\/rent.cq.soufun.com\/house\/a21\//i},
		187 : { "id": "860010-2293060100", "pattern": /^http:\/\/rent.soufun.com\/chuzu\/1_.*_-1.htm/i},
		188 : { "id": "860010-2293060200", "pattern": /^http:\/\/rent.sh.soufun.com\/chuzu\/1_.*_-1.htm/i},
		189 : { "id": "860010-2293060300", "pattern": /^http:\/\/rent.gz.soufun.com\/chuzu\/1_.*_-1.htm/i},
		190 : { "id": "860010-2293060400", "pattern": /^http:\/\/rent.sz.soufun.com\/chuzu\/1_.*_-1.htm/i},
		191 : { "id": "860010-2293060500", "pattern": /^http:\/\/rent.tj.soufun.com\/chuzu\/1_.*_-1.htm/i},
		192 : { "id": "860010-2293060600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/chuzu\/1_.*_-1.htm/i},
		193 : { "id": "860010-2293060700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/chuzu\/1_.*_-1.htm/i},
		194 : { "id": "860010-2293060800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/chuzu\/1_.*_-1.htm/i},
		195 : { "id": "860010-2293060900", "pattern": /^http:\/\/rent.hz.soufun.com\/chuzu\/1_.*_-1.htm/i},
		196 : { "id": "860010-2293061000", "pattern": /^http:\/\/rent.cd.soufun.com\/chuzu\/1_.*_-1.htm/i},
		197 : { "id": "860010-2293061100", "pattern": /^http:\/\/rent.cq.soufun.com\/chuzu\/1_.*_-1.htm/i},
		198 : { "id": "860010-2293120100", "pattern": /^http:\/\/rent.soufun.com\/villa\//i},
		199 : { "id": "860010-2293120200", "pattern": /^http:\/\/rent.sh.soufun.com\/villa\//i},
		200 : { "id": "860010-2293120300", "pattern": /^http:\/\/rent.gz.soufun.com\/villa\//i},
		201 : { "id": "860010-2293120400", "pattern": /^http:\/\/rent.sz.soufun.com\/villa\//i},
		202 : { "id": "860010-2293120500", "pattern": /^http:\/\/rent.tj.soufun.com\/villa\//i},
		203 : { "id": "860010-2293120600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/villa\//i},
		204 : { "id": "860010-2293120700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/villa\//i},
		205 : { "id": "860010-2293120800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/villa\//i},
		206 : { "id": "860010-2293120900", "pattern": /^http:\/\/rent.hz.soufun.com\/villa\//i},
		207 : { "id": "860010-2293121000", "pattern": /^http:\/\/rent.cd.soufun.com\/villa\//i},
		208 : { "id": "860010-2293121100", "pattern": /^http:\/\/rent.cq.soufun.com\/villa\//i},
		209 : { "id": "860010-2293130100", "pattern": /^http:\/\/rent.soufun.com\/chuzu\/10_.*_1.htm/i},
		210 : { "id": "860010-2293130200", "pattern": /^http:\/\/rent.sh.soufun.com\/chuzu\/10_.*_1.htm/i},
		211 : { "id": "860010-2293130300", "pattern": /^http:\/\/rent.gz.soufun.com\/chuzu\/10_.*_1.htm/i},
		212 : { "id": "860010-2293130400", "pattern": /^http:\/\/rent.sz.soufun.com\/chuzu\/10_.*_1.htm/i},
		213 : { "id": "860010-2293130500", "pattern": /^http:\/\/rent.tj.soufun.com\/chuzu\/10_.*_1.htm/i},
		214 : { "id": "860010-2293130600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/chuzu\/10_.*_1.htm/i},
		215 : { "id": "860010-2293130700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/chuzu\/10_.*_1.htm/i},
		216 : { "id": "860010-2293130800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/chuzu\/10_.*_1.htm/i},
		217 : { "id": "860010-2293130900", "pattern": /^http:\/\/rent.hz.soufun.com\/chuzu\/10_.*_1.htm/i},
		218 : { "id": "860010-2293131000", "pattern": /^http:\/\/rent.cd.soufun.com\/chuzu\/10_.*_1.htm/i},
		219 : { "id": "860010-2293131100", "pattern": /^http:\/\/rent.cq.soufun.com\/chuzu\/10_.*_1.htm/i},
		220 : { "id": "860010-2293140100", "pattern": /^http:\/\/rent.soufun.com\/shop\//i},
		221 : { "id": "860010-2293140200", "pattern": /^http:\/\/rent.sh.soufun.com\/shop\//i},
		222 : { "id": "860010-2293140300", "pattern": /^http:\/\/rent.gz.soufun.com\/shop\//i},
		223 : { "id": "860010-2293140400", "pattern": /^http:\/\/rent.sz.soufun.com\/shop\//i},
		224 : { "id": "860010-2293140500", "pattern": /^http:\/\/rent.tj.soufun.com\/shop\//i},
		225 : { "id": "860010-2293140600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/shop\//i},
		226 : { "id": "860010-2293140700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/shop\//i},
		227 : { "id": "860010-2293140800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/shop\//i},
		228 : { "id": "860010-2293140900", "pattern": /^http:\/\/rent.hz.soufun.com\/shop\//i},
		229 : { "id": "860010-2293141000", "pattern": /^http:\/\/rent.cd.soufun.com\/shop\//i},
		230 : { "id": "860010-2293141100", "pattern": /^http:\/\/rent.cq.soufun.com\/shop\//i},
		231 : { "id": "860010-2293150100", "pattern": /^http:\/\/rent.soufun.com\/chuzu\/6_.*_1.htm/i},
		232 : { "id": "860010-2293150200", "pattern": /^http:\/\/rent.sh.soufun.com\/chuzu\/6_.*_1.htm/i},
		233 : { "id": "860010-2293150300", "pattern": /^http:\/\/rent.gz.soufun.com\/chuzu\/6_.*_1.htm/i},
		234 : { "id": "860010-2293150400", "pattern": /^http:\/\/rent.sz.soufun.com\/chuzu\/6_.*_1.htm/i},
		235 : { "id": "860010-2293150500", "pattern": /^http:\/\/rent.tj.soufun.com\/chuzu\/6_.*_1.htm/i},
		236 : { "id": "860010-2293150600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/chuzu\/6_.*_1.htm/i},
		237 : { "id": "860010-2293150700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/chuzu\/6_.*_1.htm/i},
		238 : { "id": "860010-2293150800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/chuzu\/6_.*_1.htm/i},
		239 : { "id": "860010-2293150900", "pattern": /^http:\/\/rent.hz.soufun.com\/chuzu\/6_.*_1.htm/i},
		240 : { "id": "860010-2293151000", "pattern": /^http:\/\/rent.cd.soufun.com\/chuzu\/6_.*_1.htm/i},
		241 : { "id": "860010-2293151100", "pattern": /^http:\/\/rent.cq.soufun.com\/chuzu\/6_.*_1.htm/i},
		242 : { "id": "860010-2293160100", "pattern": /^http:\/\/rent.soufun.com\/office\//i},
		243 : { "id": "860010-2293160200", "pattern": /^http:\/\/rent.sh.soufun.com\/office\//i},
		244 : { "id": "860010-2293160300", "pattern": /^http:\/\/rent.gz.soufun.com\/office\//i},
		245 : { "id": "860010-2293160400", "pattern": /^http:\/\/rent.sz.soufun.com\/office\//i},
		246 : { "id": "860010-2293160500", "pattern": /^http:\/\/rent.tj.soufun.com\/office\//i},
		247 : { "id": "860010-2293160600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/office\//i},
		248 : { "id": "860010-2293160700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/office\//i},
		249 : { "id": "860010-2293160800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/office\//i},
		250 : { "id": "860010-2293160900", "pattern": /^http:\/\/rent.hz.soufun.com\/office\//i},
		251 : { "id": "860010-2293161000", "pattern": /^http:\/\/rent.cd.soufun.com\/office\//i},
		252 : { "id": "860010-2293161100", "pattern": /^http:\/\/rent.cq.soufun.com\/office\//i},
		253 : { "id": "860010-2293170100", "pattern": /^http:\/\/rent.soufun.com\/chuzu\/7_.*_1.htm/i},
		254 : { "id": "860010-2293170200", "pattern": /^http:\/\/rent.sh.soufun.com\/chuzu\/7_.*_1.htm/i},
		255 : { "id": "860010-2293170300", "pattern": /^http:\/\/rent.gz.soufun.com\/chuzu\/7_.*_1.htm/i},
		256 : { "id": "860010-2293170400", "pattern": /^http:\/\/rent.sz.soufun.com\/chuzu\/7_.*_1.htm/i},
		257 : { "id": "860010-2293170500", "pattern": /^http:\/\/rent.tj.soufun.com\/chuzu\/7_.*_1.htm/i},
		258 : { "id": "860010-2293170600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/chuzu\/7_.*_1.htm/i},
		259 : { "id": "860010-2293170700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/chuzu\/7_.*_1.htm/i},
		260 : { "id": "860010-2293170800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/chuzu\/7_.*_1.htm/i},
		261 : { "id": "860010-2293170900", "pattern": /^http:\/\/rent.hz.soufun.com\/chuzu\/7_.*_1.htm/i},
		262 : { "id": "860010-2293171000", "pattern": /^http:\/\/rent.cd.soufun.com\/chuzu\/7_.*_1.htm/i},
		263 : { "id": "860010-2293171100", "pattern": /^http:\/\/rent.cq.soufun.com\/chuzu\/7_.*_1.htm/i},
		339 : { "id": "860010-2293031200", "pattern": /^http:\/\/rent.dl.soufun.com\/house1\//i},
		340 : { "id": "860010-2293031300", "pattern": /^http:\/\/rent.qd.soufun.com\/house1\//i},
		341 : { "id": "860010-2293031400", "pattern": /^http:\/\/rent.xian.soufun.com\/house1\//i},
		342 : { "id": "860010-2293071200", "pattern": /^http:\/\/rent.dl.soufun.com\/house3\//i},
		343 : { "id": "860010-2293071300", "pattern": /^http:\/\/rent.qd.soufun.com\/house3\//i},
		344 : { "id": "860010-2293071400", "pattern": /^http:\/\/rent.xian.soufun.com\/house3\//i},
		345 : { "id": "860010-2293041200", "pattern": /^http:\/\/rent.dl.soufun.com\/chuzu\/3_.*_1.htm/i},
		346 : { "id": "860010-2293041300", "pattern": /^http:\/\/rent.qd.soufun.com\/chuzu\/3_.*_1.htm/i},
		347 : { "id": "860010-2293041400", "pattern": /^http:\/\/rent.xian.soufun.com\/chuzu\/3_.*_1.htm/i},
		348 : { "id": "860010-2293051200", "pattern": /^http:\/\/rent.dl.soufun.com\/house\/a21\//i},
		349 : { "id": "860010-2293051300", "pattern": /^http:\/\/rent.qd.soufun.com\/house\/a21\//i},
		350 : { "id": "860010-2293051400", "pattern": /^http:\/\/rent.xian.soufun.com\/house\/a21\//i},
		351 : { "id": "860010-2293061200", "pattern": /^http:\/\/rent.dl.soufun.com\/chuzu\/1_.*_-1.htm/i},
		352 : { "id": "860010-2293061300", "pattern": /^http:\/\/rent.qd.soufun.com\/chuzu\/1_.*_-1.htm/i},
		353 : { "id": "860010-2293061400", "pattern": /^http:\/\/rent.xian.soufun.com\/chuzu\/1_.*_-1.htm/i},
		354 : { "id": "860010-2293121200", "pattern": /^http:\/\/rent.dl.soufun.com\/villa\//i},
		355 : { "id": "860010-2293121300", "pattern": /^http:\/\/rent.qd.soufun.com\/villa\//i},
		356 : { "id": "860010-2293121400", "pattern": /^http:\/\/rent.xian.soufun.com\/villa\//i},
		357 : { "id": "860010-2293131200", "pattern": /^http:\/\/rent.dl.soufun.com\/chuzu\/10_.*_1.htm/i},
		358 : { "id": "860010-2293131300", "pattern": /^http:\/\/rent.wd.soufun.com\/chuzu\/10_.*_1.htm/i},
		359 : { "id": "860010-2293131400", "pattern": /^http:\/\/rent.xian.soufun.com\/chuzu\/10_.*_1.htm/i},
		360 : { "id": "860010-2293141200", "pattern": /^http:\/\/rent.dl.soufun.com\/shop\//i},
		361 : { "id": "860010-2293141300", "pattern": /^http:\/\/rent.qd.soufun.com\/shop\//i},
		362 : { "id": "860010-2293141400", "pattern": /^http:\/\/rent.xian.soufun.com\/shop\//i},
		363 : { "id": "860010-2293151200", "pattern": /^http:\/\/rent.dl.soufun.com\/chuzu\/6_.*_1.htm/i},
		364 : { "id": "860010-2293151300", "pattern": /^http:\/\/rent.qd.soufun.com\/chuzu\/6_.*_1.htm/i},
		365 : { "id": "860010-2293151400", "pattern": /^http:\/\/rent.xian.soufun.com\/chuzu\/6_.*_1.htm/i},
		366 : { "id": "860010-2293161200", "pattern": /^http:\/\/rent.dl.soufun.com\/office\//i},
		367 : { "id": "860010-2293161300", "pattern": /^http:\/\/rent.qd.soufun.com\/office\//i},
		368 : { "id": "860010-2293161400", "pattern": /^http:\/\/rent.xian.soufun.com\/office\//i},
		369 : { "id": "860010-2293171200", "pattern": /^http:\/\/rent.dl.soufun.com\/chuzu\/7_.*_1.htm/i},
		370 : { "id": "860010-2293171300", "pattern": /^http:\/\/rent.qd.soufun.com\/chuzu\/7_.*_1.htm/i},
		371 : { "id": "860010-2293171400", "pattern": /^http:\/\/rent.xian.soufun.com\/chuzu\/7_.*_1.htm/i},
		372 : { "id": "860010-2293021200", "pattern": /^http:\/\/rent.dl.soufun.com\/house\//i},
		373 : { "id": "860010-2293021300", "pattern": /^http:\/\/rent.qd.soufun.com\/house\//i},
		374 : { "id": "860010-2293021400", "pattern": /^http:\/\/rent.xian.soufun.com\/house\//i},
		264 : { "id": "860010-2293020100", "pattern": /^http:\/\/rent.soufun.com\/house\//i},
		265 : { "id": "860010-2293020200", "pattern": /^http:\/\/rent.sh.soufun.com\/house\//i},
		266 : { "id": "860010-2293020300", "pattern": /^http:\/\/rent.gz.soufun.com\/house\//i},
		267 : { "id": "860010-2293020400", "pattern": /^http:\/\/rent.sz.soufun.com\/house\//i},
		268 : { "id": "860010-2293020500", "pattern": /^http:\/\/rent.tj.soufun.com\/house\//i},
		269 : { "id": "860010-2293020600", "pattern": /^http:\/\/rent.wuhan.soufun.com\/house\//i},
		270 : { "id": "860010-2293020700", "pattern": /^http:\/\/rent.nanjing.soufun.com\/house\//i},
		271 : { "id": "860010-2293020800", "pattern": /^http:\/\/rent.suzhou.soufun.com\/house\//i},
		272 : { "id": "860010-2293020900", "pattern": /^http:\/\/rent.hz.soufun.com\/house\//i},
		273 : { "id": "860010-2293021000", "pattern": /^http:\/\/rent.cd.soufun.com\/house\//i},
		274 : { "id": "860010-2293021100", "pattern": /^http:\/\/rent.cq.soufun.com\/house\//i},
		275 : { "id": "860010-2293010100", "pattern": /^http:\/\/rent.soufun.com\//i},
		276 : { "id": "860010-2293010200", "pattern": /^http:\/\/rent.sh.soufun.com\//i},
		277 : { "id": "860010-2293010300", "pattern": /^http:\/\/rent.gz.soufun.com\//i},
		278 : { "id": "860010-2293010400", "pattern": /^http:\/\/rent.sz.soufun.com\//i},
		279 : { "id": "860010-2293010500", "pattern": /^http:\/\/rent.tj.soufun.com\//i},
		280 : { "id": "860010-2293010600", "pattern": /^http:\/\/rent.wuhan.soufun.com\//i},
		281 : { "id": "860010-2293010700", "pattern": /^http:\/\/rent.nanjing.soufun.com\//i},
		282 : { "id": "860010-2293010800", "pattern": /^http:\/\/rent.suzhou.soufun.com\//i},
		283 : { "id": "860010-2293010900", "pattern": /^http:\/\/rent.hz.soufun.com\//i},
		284 : { "id": "860010-2293011000", "pattern": /^http:\/\/rent.cd.soufun.com\//i},
		285 : { "id": "860010-2293011100", "pattern": /^http:\/\/rent.cq.soufun.com\//i},
		375 : { "id": "860010-2293011200", "pattern": /^http:\/\/rent.dl.soufun.com\//i},
		376 : { "id": "860010-2293011300", "pattern": /^http:\/\/rent.qd.soufun.com\//i},
		377 : { "id": "860010-2293011400", "pattern": /^http:\/\/rent.xian.soufun.com\//i},
		286 : { "id": "860010-2292010100", "pattern": /^http:\/\/esf.soufun.com\//i},
		287 : { "id": "860010-2292010200", "pattern": /^http:\/\/esf.sh.soufun.com\//i},
		288 : { "id": "860010-2292010300", "pattern": /^http:\/\/esf.gz.soufun.com\//i},
		289 : { "id": "860010-2292010400", "pattern": /^http:\/\/esf.sz.soufun.com\//i},
		290 : { "id": "860010-2292010500", "pattern": /^http:\/\/esf.tj.soufun.com\//i},
		291 : { "id": "860010-2292010600", "pattern": /^http:\/\/esf.wuhan.soufun.com\//i},
		292 : { "id": "860010-2292010700", "pattern": /^http:\/\/esf.nanjing.soufun.com\//i},
		293 : { "id": "860010-2292010800", "pattern": /^http:\/\/esf.suzhou.soufun.com\//i},
		336 : { "id": "860010-2292011200", "pattern": /^http:\/\/esf.dl.soufun.com\//i},
		337 : { "id": "860010-2292011300", "pattern": /^http:\/\/esf.qd.soufun.com\//i},
		338 : { "id": "860010-2292011400", "pattern": /^http:\/\/esf.xian.soufun.com\//i},
		294 : { "id": "860010-2292010900", "pattern": /^http:\/\/esf.hz.soufun.com\//i},
		295 : { "id": "860010-2292011000", "pattern": /^http:\/\/esf.cd.soufun.com\//i},
		296 : { "id": "860010-2292011100", "pattern": /^http:\/\/esf.cq.soufun.com\//i}

};
function get_acc() 
{
	var current_url = window.location.toString();
	for (var x in wrPattern)
	{		
		
		try
		{
			if (wrPattern[x]['pattern'].test(current_url))
			{			
				return wrPattern[x]['id'];
			}
		}
		catch (e)
		{
		}	
	}	
	return wrDefaultAcc;
}
var vjAcc = get_acc();
if (vjAcc != "")
{
	vjTrack("");
}