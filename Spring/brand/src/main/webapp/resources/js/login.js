$(function() {
			
			var inputId = $('input[name=uid]');
			var inputPw = $('input[name=pass]');
			
			$('input[type=submit]').click(function(e){
				e.preventDefault();
				
				var id = inputId.val();
				var pw = inputPw.val();
				
				if(id == '') {
					alert('아이디를 입력하세요.');
					return false;
				}
				
				if(pw == '') {
					alert('비밀번호를 입력하세요.')
					return false;
				}
				
				var data = {
						"bm_uid" :  id,
						"bm_pass" : pw
				}
				
				$.ajax({
					url:  '/brand/member/login.do',
					type: 'post',
					data: data,
					success: function( result ){
						
						if(result.bm_name != null) {
							alert(result.bm_name + '님 반갑습니다.');
							location.href= '/brand';
						} else {
							alert('일치하는 회원이 없습니다.');
							location.href= '/brand/member/login.do';
						}
					}
				});
			});
		});