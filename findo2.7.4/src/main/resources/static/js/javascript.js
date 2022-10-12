/**
 * 
 */
 
// signup.jsp
 
function signup_email_text_confirm() {
	var text = document.getElementById('signup_email_text').value;

	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	if (regEmail.test(text) === true) {
		alert('사용가능한 이메일입니다.');
	}
	if (!regEmail.test(text) === true) {
		alert('올바른 이메일형식이 아닙니다.');
	}
}

// signup.jsp

// singup_agreement.jsp

		var doc = document;
		var signup_agreement_form = doc.getElementById('signup_agreement_form');
		var inputs = signup_agreement_form.getElementsByTagName('INPUT');
		var signup_agreement_form_data = {
			"check1" : false,
			"check2" : false,
			"check3" : false
		};

		var check1 = doc.getElementById('check1');
		var check2 = doc.getElementById('check2');
		var check3 = doc.getElementById('check3');

		function checkboxListener() {
			signup_agreement_form_data[this.name] = this.checked;

			if (this.checked) {
				// submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분. 
				this.parentNode.style.color = "#000";
			}
		}

		check1.onclick = check2.onclick = check3.onclick = checkboxListener;

		var all = doc.getElementById('signup_agreement_select_all');

		all.onclick = function() {
			if (this.checked) {
				setCheckbox(signup_agreement_form_data, true);
			} else {
				setCheckbox(signup_agreement_form_data, false);
			}
		};

		function setCheckbox(obj, state) {
			for ( var x in obj) {
				obj[x] = state;

				for (var i = 0; i < inputs.length; i++) {
					if (inputs[i].type == "checkbox") {
						inputs[i].checked = state;
					}
				}

			}
		}

		signup_agreement_form.onsubmit = function(e) {
			e.preventDefault(); // 서브밋 될때 화면이 깜빡이지 않게 방지

			if (!signup_agreement_form_data['check1']) {
				alert('핀도 이용약관 동의를 하지 않았습니다');
				check1.parentNode.style.color = 'red';
				return false;
			}

			if (!signup_agreement_form_data['check2']) {
				alert('개인정보 수집 및 이용에 대한 안내를 선택하지 않았습니다.');
				check2.parentNode.style.color = 'red';
				return false;
			}
			
			if (signup_agreement_form_data['check1'] && signup_agreement_form_data['check2']) {
				 location.replace('/signup');
				return true;
			}

			this.submit();
		};

// singup_agreement_form
  