function pwdcError() {
    let pwdAlert = $("#pwConfirmMsg");
    pwdAlert.text("");
    if (pwdAlert.hasClass("error")) {
        pwdAlert.text("비밀번호가 일치하지 않습니다")
    }
}


$(document).on('click', function(event) {
    //alert('페이지의 아무 곳이나 클릭했습니다!')
    let pwd = $("#passwd").val();
    let pwdc = $("#passwd-confirm").val();
    //alert(pwd)
    if (pwdc!=pwd) {
        $("#pwConfirmMsg").addClass("error")
    }else {
        $("#pwConfirmMsg").removeClass("error")
    }
    pwdcError();
});


//유효 이메일 여부
//중복 검사 db에서.. 하던가말던가..

function isValidEmail(email) {
    // 이메일 정규 표현식
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailPattern.test(email);
}

function emailError() {
    let emailAlert = $("#emailMsg");
    emailAlert.text("");
    if (emailAlert.hasClass("error")) {
        emailAlert.text("유효하지 않은 이메일 형식입니다")
    }
}

$(document).on('click', function(event) {
    //alert('페이지의 아무 곳이나 클릭했습니다!')
    let email = $("#email").val();
    let emailAlert = $("#emailMsg");
    if (!email) {
        emailAlert.text("이메일을 입력하세요");
        return;
    }


    if (!isValidEmail(email)) {
        $("#emailMsg").addClass("error")
    }else {
        $("#emailMsg").removeClass("error")
    }
    emailError();
});

// 전체 동의


function allAgreeBtn() {

        // 전체 선택 체크박스 상태 확인
        const selectAllCheckbox = document.getElementById("AgreeAllCk");
        const checkboxes = document.querySelectorAll(".termCK");

        // 전체 선택 체크박스의 상태에 따라 개별 체크박스 선택/해제
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAllCheckbox.checked;
        });

}

function updateSelectAll() {
    const selectAllCheckbox = document.getElementById("AgreeAllCk");
    const checkboxes = document.querySelectorAll(".termCK");

    // 개별 체크박스 중 하나라도 체크 해제된 것이 있는지 확인
    const allChecked = Array.from(checkboxes).every((checkbox) => checkbox.checked);

    // 모든 개별 체크박스가 선택되어 있으면 전체 선택 체크, 아니면 해제
    selectAllCheckbox.checked = allChecked;
}


//회원가입 서브밋

function copy_join_btn(event) {

	let email = $("#email").val();
    let emailAlert = $("#emailMsg");
    if (!email) {
        emailAlert.text("이메일을 입력하세요");
        return;
    }

    if (!isValidEmail(email)) {
        $("#emailMsg").addClass("error")
    }else {
        $("#emailMsg").removeClass("error")
    }
    emailError();
	
	let pwd = $("#passwd").val();
    let pwdc = $("#passwd-confirm").val();
	let pwdcMsg = $("#pwConfirmMsg");
    //alert(pwd)
    if (pwdc!=pwd) {
        $("#pwConfirmMsg").addClass("error")
    }else {
        $("#pwConfirmMsg").removeClass("error")
    }
    pwdcError();
	
	

	let termO = $("#termCk").is(':checked');
	let privacyO = $("#privacyCk").is(':checked');
	let consignO = $("#consignCk").is(':checked');
	
		//회원가입 필수 입력창 체크
	let userIdO= $("#user_login_id").val();
	let userpwO= $("#passwd").val();
	let userpwcO= $("#passwd-confirm").val();
	let userNameO= $("#name").val();
	let userEmailO= $("#email").val();
	let userPhoneO= $("#phone").val();
	let userbirthyO= $("#birth-year").val();
	let userbirthmO= $("#birth-month").val();
	let userbirthdO= $("#birth-day").val();

//alert(userNameO)
//alert(userbirthdO)
	
	if( termO && privacyO && consignO ) {
		
		//alert("필수 체크 완료");
		} else {alert("필수 약관 동의가 필요합니다.") 
						return; }
		
	if(userIdO&&userpwO&&userpwcO&&userNameO&&userEmailO&&userPhoneO) {//필수항목 입력 체크
		//	alert("필수 입력 완료")	
		} else {alert("필수 항목을 입력하세요") 
					return;}
		
	if( userbirthyO >= 1900 && userbirthmO>=1 && userbirthmO<=12 &&  userbirthdO>=1 && userbirthdO<=31 ) {
		//alert("생일 입력 완료")	
	} else {alert("유효한 생일 형식이 아닙니다") 
				return;}
			
	if (emailAlert.hasClass("error")  || pwdcMsg.hasClass("error")){
					//alert("이메일 혹은 비밀번호 확인을 수정하세요")
					return;
				}else {
			
					alert("서브밋!")
					$("#joinForm").submit();
					}
}


//ID 중복 체크

function info_jungbok( types , vals ) {
   			alert(types , vals)
			inputType = types;
		    inputVal = vals;   
		     
			 $.ajax({
				 url:"/board/idcheck.ajax" , 
				 dataType:"json",
				 type:"GET",
				 data: { type : inputType , val : inputVal },
				 cache:false ,
				 //                              {  "count":1 } 
				 success: function ( data,  textStatus, jqXHR ){
					 if( data.count == 0 ){
						 $("#notice").css("color", "black").text("사용 가능한 ID입니다.");
					 }else{  // 1
						 $("#notice").css("color", "red").text("이미 사용 중인 ID입니다.");
					 }
					 
				 },
				 error:function (){
					 alert("에러~~~ ");
				 }
				 
			 });
	




}


