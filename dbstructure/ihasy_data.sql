TRUNCATE `ihasy`.`plane`;
TRUNCATE `ihasy`.`node`;
TRUNCATE `ihasy`.`topic`;

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('1', '楼市房产', 'house','1');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('2', '城市建设', 'city','1');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('3', '我爱我家', 'home','1');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('4', '购物', 'shopping','2');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('5', '找工作', 'work','2');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('6', '非诚勿扰', 'love','2');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('7', '二手交易', 'trade','2');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('8', '教育', 'education','2');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('9', '公益', 'commonweal','2');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('10', 'IT技术', 'coding','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('11', '汽车', 'car','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('12', '硬件数码', 'digit','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('13', '金融财经', 'finance','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('14', '生命科学', 'life','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('15', '法律法规', 'legal','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('16', '创业创客', 'pre-boss','3');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('17', '美食', 'food','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('18', '影视剧', 'movie','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('19', '阅读', 'reading','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('20', '旅行', 'travel','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('21', '运动', 'spot','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('22', '二次元', 'cartoon','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('23', '摄影', 'photo','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('24', '音乐', 'music','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('25', '设计创意', 'idea','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('26', '爱美丽', 'makeup','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('27', '你问我答', 'questions','6');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('28', '同城活动', 'activities','6');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('29', '梧桐山', 'shenzhen','6');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('30', '公告', 'announcement','7');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('31', '帮助', 'help','7');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('32', '意见建议', 'feedback','7');


INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('1', '生活百科');
INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('2', '社会信息');
INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('3', '科学技术');
INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('4', '兴趣爱好');
INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('5', '艺术时尚');
INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('6', '休闲娱乐');
INSERT INTO `ihasy`.`plane` (`id`, `name`) VALUES ('7', '社区管理');


INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('1', '十大城市市区房价', '只看区域十大（北：京津；东：沪宁杭；南：广深；西：成渝；中：武汉），
目前市区均价排名，差不多是这样子：
北京8w
上海8w
深圳6.5w
广州3.5w
杭州3.5w
天津3w
南京3w
武汉2w
成都1.5w
重庆1w', '0', '2017-07-22 21:23:02', '1', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('2', '刚从上海出差回来，感觉武汉也不差', '周末出差上海，周二回来，上海不是第一次去，不过最后一次去确实好几年前了，基本上世博会以后就没有去了，那时候感觉上海不可一世，如同大山一般的存在，四通八达的地铁，蜘蛛网一般的高架桥，顶破苍穹的摩天大楼，那时候武汉就是一个土鳖而已。光谷没有高楼大厦，还有很多菜地，就沿江有几个稀稀拉拉的高楼。不到十年过去了，特别是最近五年，竣工的地铁，高架，大楼一个接着一个，感觉这才是城市应该有的样子。而且武汉最近推广的无现金城市，让武汉赶上了时代的步伐，武汉的支付宝和微信支付的便捷程度绝对甩上海几条街。
不过上海还是上海，国际化程度还是非常高的，十里洋场和各个开发区写字楼里面的洋人非常多，英语很普及，就像我出差的目的地公司都是中国人也偶尔憋着英语交流（其实我很反感）。
感觉武汉最近发力很厉害，投资和签约狠牛逼，感觉武汉超越不了上海，但是差距会缩小', '0', '2017-07-22 21:23:02', '2', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('3', '准备装修，墙纸和乳胶漆到底选哪个？', '我一直比较中意墙纸，但是有亲戚强烈反对说用墙纸很不好，会开裂还有甲醛很重什么的，有懂的人士进来说说么？', '0', '2017-07-22 21:23:02', '3', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('4', '京东现在是先提价再减券？', '一卷卫生纸标价99，再用个99-98的券，这是要闹哪样？', '0', '2017-07-22 21:23:02', '4', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('5', '阿里巴巴国际技术事业部招聘', 'Job Description:
1. 本科及以上学历，热爱移动互联网，对计算广告行业有兴趣；
2. 熟悉网络编程、多线程编程技术，有大规模系统的设计和开发经验
3. 具备良好的分析解决问题能力，能独立承担工作任务及把控任务进度；
4. 精通C/C++开发语言，有使用甚至参与开源项目的经验更佳；
5. 有丰富Unix/Linux环境下开发经验、熟练使用调试工具
6. 熟练使用脚本语言python等，有linux下开发经验；
7. 熟悉常用key-value存储系统、缓存系统、数据库hbase等。
8. 具备较丰富的中大型在线系统架构设计和开发经验，善于系统调优.

有广告架构，搜索架构的相关开发经验优先。
具有海量日志处理和并行计算开发经验的优先考虑；

这个是我们组直招的，现在非常缺人，职位有高级开发工程师或者技术专家
有兴趣的可以发简历到shuiyin.csy@alibaba-inc.com', '0', '2017-07-22 21:23:02', '5', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('6', '我也试着发个交友贴', '那个啥就像流星雨，可遇而不可求～但，我今天是诚意求缘分的
性别女爱好男，90射手，本科，外企职员
对于男生，什么善良，孝顺，三观一致，性格互补都是基本的，最重要的是聊得来，生活要有趣，其他的看感觉了……怎么这么难描述。
本人对游戏无感，喜欢看火星情报局，业余小兴趣有一些，但爱而不好。', '0', '2017-07-22 21:23:02', '6', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('7', '美的 冷热饮水机转让', '美的 MYD908S-X型号饮水机，9成新，用过一次，闲置了一段时间几乎用不上了想转让出去。原价1298元，转让价600元，有需要的可以直接联系我。 苏宁和淘宝上都有出售的，可看到同款。
QQ 421678184 或微信 BetterCaiting', '0', '2017-07-22 21:23:02', '7', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('8', '周围好多小孩都被送出国读书', '家里稍微有点钱的中产阶级，都在考虑或者已经把小孩送出国读书，区别在于是中学、大学还是研究生出去，感觉现在的出国热并没有减退。', '0', '2017-07-22 21:23:02', '8', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('9', '相互认识贴，都来聊聊', '这应该能算公益吧。
进社区半年发现这儿有好多优秀青年。知识广博、生活态度令人赞赏、三观正。
社员的工作范围大部分集中在IT相关领域，生活圈子较小，那么，大家来聊聊兴趣聊聊生活吧。
这儿就是你的人民广场，我们一起来吃炸鸡。。。', '0', '2017-07-22 21:23:02', '9', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('10', '12306的技术难点在哪儿？', '十一回家火车票没有抢到，无奈蹭的同事顺风车回。感觉今年明显12306抢票难了，而且系统感觉也没那么快了。如果说访问量特别大的话，可每一辆车次都是分开的，甚至每一个座位都几乎是独立的，服务器分开不就行了。到底哪些方面是技术上实现比较困难的？', '0', '2017-07-22 21:23:02', '10', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('11', '奔驰宣布：传统燃油车型将全面停产停售', '9月14日，传统汽车制造巨头梅赛德斯-奔驰宣布，将在2022年之前将旗下整个汽车产品线全部实现电动化，传统燃油车型将全面停产停售。

梅赛德斯-奔驰首席执行官Dieter Zetsche表示，到2022年，奔驰旗下所有车型都只提供混合动力或纯电动版本，并且届时将会至少再增加50个全新的电动汽车车型。与此同时，属于戴姆勒旗下的子品牌Smart，也将在2022年之前完成电气化的过渡。

2016年10月，德国联邦参议院以多票通过了2030年后禁售传统内燃机汽车的提案。参议院建议德国立法者敦促其它欧盟成员国接受这一建议，2030年后只允许零排放汽车上路。分析人士称，奔驰此举是为了响应政府的政策，提前8年完成汽车零排放，奔驰将很好地避免政府政策带来的经营风险。

目前很多高端汽车厂商都对外公布了自己向电动汽车转变的计划。除奔驰之外，沃尔沃也承诺在2019年之前将产品线全部改造成电动化。福特旗下品牌林肯也将2022年作为时间节点，将会把所有车型都改造成电动或混合动力版本。上周，捷豹路虎也表示，到2020年所有的汽车产品都将有电动或混合动力版本的选择。', '0', '2017-07-22 21:23:02', '11', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('12', 'iphone 8 大家会买么？大家都喜欢用什么手机 （快放假，无聊中，来个调查）', 'iphone 8 大家会买么？大家都喜欢用什么手机', '0', '2017-07-22 21:23:02', '12', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('13', '求高手推荐一些一带一路的相关股票', '因为偶然之间买了房，看到房子疯涨，
发现了人生赚钱还可以这样
于是了解研究了一些听说的投资理财产品
最近小试了一些虚拟币，股票
今天无聊又看了一下科技股
发现谷歌、微软、腾讯、facebook、苹果、亚马逊。。。
一年涨幅都在百分之五十以上，长时间来看趋势全部是上涨趋势
体量小的陌陌，网易、京东、微博、新浪都基本翻倍了
巴菲特的长期持有理论还是超级厉害的
今天朋友又说到一带一路，于是来求论坛大神指点指点', '0', '2017-07-22 21:23:02', '13', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('14', '体内湿气重，如何解决？', '有经验的版友说说', '0', '2017-07-22 21:23:02', '14', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('15', '我国将给予8个最不发达国家97%税目产品零关税', '国务院关税税则委员会日前通知海关总署表示，我国给予有关最不发达国家97%税目产品零关税待遇的实施方案，已经国务院关税税则委员会第三次全体会议审议通过，并报国务院批准。

现根据最新签署换文情况，从2015年12月10日起，对原产于科摩罗联盟、毛里塔尼亚伊斯兰共和国、多哥共和国、利比里亚共和国、卢旺达共和国、安哥拉共和国、赞比亚共和国、尼泊尔联邦民主共和国等8个最不发达国家的97%税目产品实施零关税。', '0', '2017-07-22 21:23:02', '15', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('16', '有没有FPGA加速卡的创业项目', '最近几个互联网公司都推出了FPGA云服务器 周围也相继出现了几家做FPGA加速卡的公司 这个方向前景如何？武汉有没有？没有的话要做需要哪些资源？我自己主要是做FPGA asic前端逻辑设计这块的', '0', '2017-07-22 21:23:02', '16', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('17', '菠萝蜜和榴莲哪个好吃？', '如题', '0', '2017-07-22 21:23:02', '17', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('18', '敦刻尔克，好看吗？', '评分倒是很高，但影评褒贬不一，写得神乎其神，好像不容易看懂？只想知道客观来说，这电影怎么样，值得去电影院看看吗？', '0', '2017-07-22 21:23:02', '18', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('19', '现在还有人买纸质书吗？', '基本上已经有好几年没买过纸质书了，携带太不方便，家里也没有那么大的位置存放。一个kindle加一个手机微信读书app足以应付日常的阅读需要了。', '0', '2017-07-22 21:23:02', '19', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('20', '要去泰国玩，各位有没有什么建议？', '主要是想看看风景，请问各位有没有什么推荐的？
PS：对人妖那些没什么兴趣，谢谢！', '0', '2017-07-22 21:23:02', '20', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('21', '社友们跑步的时候，手机放哪儿？', '天气凉快了，刚开始跑步，大家的经验里，手机绑在哪比较方便，绑在胳膊上还是腰上方便？', '0', '2017-07-22 21:23:02', '21', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('22', '有人玩王者荣耀吗？', 'RT', '0', '2017-07-22 21:23:02', '22', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('23', '现在手机可以满足基本拍照功能，还有多少人扛相机的？', '以前买了个佳能入门级单反，拍照效果是强那么一点，但是背着太重，现在基本上出去旅行，帮朋友街拍，一个iphone完全可以搞定。随手拍还方便。

最近小米出了微单，2000多。有点犹豫要不要买。', '0', '2017-07-22 21:23:02', '23', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('24', '2000年以来，最佳华语专辑有哪些？', '周杰伦-叶惠美、范特西
陶喆-黑色柳丁
飞儿乐团-同名专辑
张韶涵-over the rainbow
······
到你们了', '0', '2017-07-22 21:23:02', '24', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('25', '设计想象力', '一个有趣的现象是，今天设计越来越时髦。在刚刚过去的2015年北京国际设计周，举办方称提供了近400项设计活动给大众。眼花缭乱之余，我们发现自己可能确实生活在设计中：实体的建筑、家具、时装、手机不能没有设计，软件、服务、流程也离不开设计，甚至连思想都蕴含着设计；设计已经包罗万象，渗透了社会和生活的各个角落。一方面是设计确实令人着迷，它似乎掌握了某种敲开各种紧闭之门的能力；另一方面我们也不禁会想，到底还有什么是设计不能做的？

美国设计理论家和设计师维克多·帕帕纳克一生研究可持续设计，在他眼中，设计是一种哲学，而非某种短暂和浮夸的营销手段。“一般而言，建筑师和工程师解决的是真正的问题，而工业设计师却常常被请来制造新的问题。一旦他们在人们的生活中成功制造出了新的不满，他们就会准备找出暂时的解决办法来。如果已经制造出一个弗兰肯斯坦，他们就会想着设计出他的新娘。” 帕帕纳克在《为真实的世界设计》一书中如此说。 针对更广阔的设计领域，他还曾经列数过“设计的10个神话”并逐条点评：

1．设计是一种职业？

设计只有成为人人参与，人人共享，否则它就不能满足大众。

2．设计师是有品位的？

只有一小部分有，其他大多数受到“功能形式主义”“基本需求”等的影响。

3．设计是一种商品？

商品的存在是用来消费的，设计越多，就越被消费，直至消耗殆尽。

4．设计是为了生产？

生产是个“坏名词”，它使几个发达国家消耗大多数国家的资源，并从不考虑环境保护和再生。

5．设计是为了大众？

设计主要是为了设计师，而设计师希望说服商人接受他们的设计，大众没有与设计师在一起。

6．设计解决问题？

它只解决那些已经产生的问题。

7．设计师有特殊技巧？

需要6年高级专门教育？确实需要学习一些东西，但这些都是人类先天就有的潜能，另一方面，“商业窍门”的花招一年就能学会。

8．设计是创造性的？

教育倾向于创造出有能力和竞争性的消费者，而不是具有创造性的和自主的个人。

9．设计满足需要？

它所满足的需要是发明出来的需要。

10.设计与时间相关联？

多数设计都是关心创造一种人为的产品废弃，但是产品废弃也制造了贬值，导致了孤立，最终是一种存在的焦虑。', '0', '2017-07-22 21:23:02', '25', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('26', '你们全身上下的行头多少钱？', '外套：50块迪卡侬
裤子：50块杂牌
鞋子：90块双11薅的
合计：190块', '0', '2017-07-22 21:23:02', '26', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('27', '明天周末，何干?', '每逢周末就头疼，有什么好的有意思的周末度过放发', '0', '2017-07-22 21:23:02', '27', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('28', '你最期待社区组织什么活动？', '尽管说，说不定实现了呢！哈哈', '0', '2017-07-22 21:23:02', '28', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('29', '30+ 的码农，出路是什么？', '30+的码农,工作是不是应该要转型或者转行...大龄程序员了……', '0', '2017-07-22 21:23:02', '29', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('30', '默认的头像太丑了，还不赶紧换头像！', '为什么不换头像！

你们不觉得这个头像太丑了吗？', '0', '2017-07-22 21:23:02', '30', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('31', '【新手指南】如何贴图', '光谷社区新图库，基于新浪微博图床。', '0', '2017-07-22 21:23:02', '31', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('32', '社区小建议', '已经浏览过某个帖子后，如果后面有人回复直接跳到上次回复时间最新的的位置，避免每次从头开始拉，因为社区貌似没做分页，一旦楼层盖高了，对部分看帖人不太友好，或者按时间倒叙排列呢', '0', '2017-07-22 21:23:02', '32', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`user` (`email`, `password`, `username`, `nickname`, `avatar`, `signature`, `location`, `website`, `company`, `role`, `balance`, `reputation`, `self_intro`, `created`, `updated`, `twitter`, `github`, `douban`, `last_login`) VALUES ('1413470138@qq.com', '123456', 'admin', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL, NULL, 'NULL', NOW(), NOW(), 'NULL', 'NULL', 'NULL', NOW());