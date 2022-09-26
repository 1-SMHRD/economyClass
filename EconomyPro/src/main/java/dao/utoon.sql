insert into	tbl_mem(mem_id,mem_pw,mem_nick,mem_sns,mem_cmt,mem_img,mem_date,mem_type)
values('juhee','0829','주희',null,null,null,sysdate,'1')

select * from tbl_mem

insert into	tbl_comm(mem_id,post_title,post_ctnt,post_date)
values('juhee','첫게시글','워우워우워',sysdate)

select count(*) from tbl_comm_cmt where mem_id = 'juhee' order by cmt_date desc

select * from tbl_comm where mem_id = 'juhee'

select count(*) from tbl_comm_cmt where mem_id = 'juhee' order by cmt_date desc

select count(*) from tbl_comm_cmt where mem_id = 'juhee' order by cmt_date desc

select * from tbl_wtoon


insert into	tbl_scrap(wt_id,mem_id)
values(4,'juhee')

select * from tbl_plat


insert into	tbl_comm(mem_id,post_title,post_ctnt,post_date)
values('juhee','꿀잼','크헥헥헥헥헥',sysdate)

insert into	tbl_comm(mem_id,post_title,post_ctnt,post_date)
values('juhee','개꿀잼','ㅋㅋㅋㅋㅋㅋㅋ',sysdate)

insert into	tbl_comm(mem_id,post_title,post_ctnt,post_date)
values('juhee','대유잼','저 죽어요',sysdate)

insert into	tbl_comm(mem_id,post_title,post_ctnt,post_date)
values('juhee','딸기잼','살려줘',sysdate)