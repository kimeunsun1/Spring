$(document).ready(function(){
	$('#lbtn').click(function(){
		$(location).attr('href', '/www/member/login.blp');
	});
	$('#obtn').click(function(){
		$(location).attr('href', '/www/member/logout.blp');
	});
	
	$('#jbtn').click(function(){
		$(location).attr('href', '/www/member/join.blp');
	});
	
	/* 내 정보보기 버튼 클릭이벤트 */
	$('#ibtn').click(function(){
		$(location).attr('href', '/www/member/myInfo.blp');
	});
	
	/* 회원 목록 버튼 클릭 이벤트 */
	$('#mlbtn').click(function(){
		$(location).attr('href', '/www/member/memberList.blp');
	});
});