insert into	tbl_mem(mem_id,mem_pw,mem_nick,mem_sns,mem_cmt,mem_img,mem_date,mem_type)
values('juhee','0829','주희',null,null,null,sysdate,'1')

select * from tbl_mem

insert into	tbl_comm(mem_id,post_title,post_ctnt,post_date)
values('juhee','첫게시글','워우워우워',sysdate)

select count(*) from tbl_comm_cmt where mem_id = 'juhee' order by cmt_date desc

select * from tbl_comm where mem_id = 'juhee'

select count(*) from tbl_comm_cmt where mem_id = 'juhee' order by cmt_date desc

select count(*) from tbl_comm_cmt where mem_id = 'juhee' order by cmt_date desc