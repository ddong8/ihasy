TRUNCATE `ihasy`.`plane`;
TRUNCATE `ihasy`.`node`;
TRUNCATE `ihasy`.`topic`;

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

INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('17', '美食', 'car','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('18', '影视剧', 'digit','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('19', '阅读', 'finance','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('20', '旅行', 'life','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('21', '运动', 'legal','4');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('22', '二次元', 'pre-boss','4');

INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('23', '摄影', 'photo','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('24', '音乐', 'music','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('25', '设计创意', 'idea','5');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('26', '爱美丽', 'makeup','5');

INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('27', '你问我答', 'questions','6');
INSERT INTO `ihasy`.`node` (`id`, `name`, `slug`,`plane_id`) VALUES ('28', '同城活动', 'citymeeting','6');
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


INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('1', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '1', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('2', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '2', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('3', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '3', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('4', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '4', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('5', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '5', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');

INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('6', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '6', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('7', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '7', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('8', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '8', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('9', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '9', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('10', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '10', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');

INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('11', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '11', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('12', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '12', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('13', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '13', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('14', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '14', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('15', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '15', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');

INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('16', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '16', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('17', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '17', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('18', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '18', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('19', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '19', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('20', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '20', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');

INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('21', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '21', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('22', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '22', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('23', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '23', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('24', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '24', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('25', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '25', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');

INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('26', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '26', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('27', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '27', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('28', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '28', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('29', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '29', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('30', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '30', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');

INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('31', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '31', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');
INSERT INTO `ihasy`.`topic` (`id`, `title`, `content`, `hits`, `created`, `node_id`, `author_id`, `reply_count`, `last_replied_by`, `last_replied_time`, `last_touched`) VALUES ('32', 'hello world!', '正式打开了生活', '0', '2017-07-22 21:23:02', '32', '169', '0', '169', '2017-07-22 22:00:47', '2017-07-22 22:00:47');