alter table task_plan_detail add piecework tinyint(4) DEFAULT '1' after b_quality;
alter table task_content add piecework tinyint(4) DEFAULT '1' after font_color;
//更新已有的数据