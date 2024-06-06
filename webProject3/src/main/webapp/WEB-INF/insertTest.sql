insert into tbl_user_info 
	(id, passwd, name, nickname, phone_number, gender, addr, profile_image) 
		values('admin', '1234', '홍길동', '없어도됨', '010-1111-2222', 0, '나중에 지도 탭에서 추가할듯', '이건협의필요');

insert into tbl_user_verified (phone_number, code) values ('010-1111-2222', 345345);