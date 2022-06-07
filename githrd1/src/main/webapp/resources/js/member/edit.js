$(documen).ready(function(){
	$('#msgClose').click(function(){
		$('#msgWin').css('display', 'none');
	});
	
		$('#ebtn').click(function(){
		// 할일
		// 데이터 유효성 검사	
		var spw = $('#pw').val();
		var spw2 = $('#repw').val();
		
		var pwBool = false;
		var mailBool = false;
		var telBool = false;
		var anoBool = false;
		
		if(spw != spw2){
			$('#repw').val('');
			$('#repw').focus();
			return;
		}
		
		if(!spw){
			// 비밀번호를 수정하지 않는 경우이므로 비밀번호는 전송하지 않는다.
			$('#pw').prop('disabled', true);
		} else{
			pwBool = true;
		}
		
		var samil = $('#mail').val();
		if(smail == $('#tmail').val() ){
			$('#mail').prop('disabled', true);
		} else{
			mailBool = true;
		}
		
		var stel = $('#tel').val();
		if(stel == $('#ttel').val() ){
			$('#tel').prop('disabled', true);
		} else {
			telBool = true;
		}
		
		var sno = $('[name="ano"]').val();
		if(sno == $('#tano').val() ){
			$('[name="ano"').prop('disabled', true);
		} else {
			anoBool = true;
		}
		
		if(!(pwBool || mailBool || telBool || anoBool)){
			// 수정 데이터가 없는 경우이므로 뷰로 돌려보낸다.
			$('#msgWin'>.css('display', 'block');
			return;
		}
		
		$('#frm').attr('action', '/www/member/infoEditProc.blp');
		$('#frm').submit();
	});
});