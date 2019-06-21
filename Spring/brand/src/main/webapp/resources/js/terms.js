$(function() {
	
	var btnNext = $('.terms .agree');
	var agree1 = $('.terms input[name=agree1]');
	var agree2 = $('.terms input[name=agree2]');
	
	btnNext.click(function() {
		
		var rs1 = agree1.is(':checked');
		var rs2 = agree2.is(':checked');
		
		if(rs1 && rs2){
			location.href="/brand/member/register.do";
		}else{
			alert("회원으로 가입을 원하실 경우 동의가 필요합니다.");
		}
		
	});
	
});