alter table task_plan_detail add piecework tinyint(4) DEFAULT '1' after b_quality;
alter table task_content add piecework tinyint(4) DEFAULT '1' after font_color;
//更新已有的数据
SELECT tpd.id,tpd.task_number,tpd.task_content_id,tpd.state,tpd.begin_time,tpd.end_time,tpd.piecework,tp.task_date,tp.task_time , GROUP_CONCAT(tpd.task_content_id) as task_content_list,
GROUP_CONCAT(tpd.piecework) as task_content_count
FROM task_plan tp LEFT JOIN train_column AS tc ON(tc.id=tp.train_column) 
                    LEFT JOIN task_plan_detail tpd ON (tp.task_number = tpd.task_number)  WHERE (tp.state = 3 AND (
                                    CONCAT(DATE_FORMAT(`task_date`,'%Y-%m-%d'),' ',TIME_FORMAT(`task_time`,'%H:%i:%s'))
                                    BETWEEN '2018-08-12 08:00:00' AND '2018-08-15 08:00:00'
                                   ) ) 
group BY tpd.task_number