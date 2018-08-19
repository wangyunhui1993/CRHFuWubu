-- ----------------------------
-- Table structure for `piece_workbase`
-- ----------------------------
DROP TABLE IF EXISTS `piece_workbase`;
CREATE TABLE `piece_workbase` (
  `train_column` int(11) NOT NULL,
  `task_contentid` int(11) NOT NULL,
  `piecebase` int(11) NOT NULL,
  PRIMARY KEY (`train_column`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table task_plan_detail add piecework tinyint(4) DEFAULT '1' after b_quality;
alter table task_plan_detail add idef int(11) DEFAULT NULL after piecework;
alter table task_plan add tpidef int(11) DEFAULT NULL after state;