<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insurance</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/insurance.css" />

<style>
header {
	background-color: white; /* 헤더의 배경색을 흰색으로 설정합니다. */
}

.content-container {
    font-family: 'Noto Sans KR', sans-serif;
    overflow-x: scroll; /* 스크롤 가능하도록 설정 */
    white-space: nowrap;
    width: 100%; /* .content-container의 너비 100% 설정 */
    display: flex;
    flex-wrap: nowrap;
    justify-content: center; /* 가운데 정렬 */
    align-items: center;
}

.centered-image {
	display: block; /* 이미지를 인라인 블록 요소로 변경 */
	margin: 0 auto; /* 이미지와 텍스트 사이의 간격 조정 (원하는 값으로 변경) */
	border-radius: 10px;
	max-width: 30%;
	text-align: center;
}

.centered-image img {
	width: 100%; /* Set the width to 100% to fit within the container */
	height: auto;
	/* Automatically adjust the height to maintain aspect ratio */
}

p1 {
	font-size: 18px;
	margin-top: 10px;
	text-align: center;
}

.content-container>div {
	flex: 0 0 auto;
	max-width: 30%;
	margin-right: 50px; /* 각 요소 사이의 간격을 조절할 수 있습니다. */
	text-align: center;
}

</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<br>  
<br>
<br>
	<div class="content-container">
		<div style="max-width: 30%;">
			<a href="https://www.axa.co.kr/index_email_relay.jsp">
				<img src="/img/악사.jpg" alt="axa" class="centered-image" >
				<br>
				<p1>AXA 다이렉트 자동차보험</p1>
			</a>
		</div>	
		<div style="max-width: 30%;">
			<a href="https://store.meritzfire.com/auto-and-driver/direct-auto.do#!/contractPopup">
				<img src="/img/메리츠.jpg" alt="meritz" class="centered-image" >
				<br>
				<p1>메리츠 다이렉트 자동차보험</p1>
			</a>
		</div>	
		<div style="max-width: 30%;">
			<a href="https://direct.samsungfire.com/">
				<img src="/img/삼성화재.png" alt="samsung" class="centered-image" >
				<br>
				<p1>삼성화재 다이렉트 자동차보험</p1>
			</a>
		</div>	
		<div style="max-width: 30%;">
			<a href="https://www.carrotins.com/desktop/calculation/car/personal/?utm_campaign=car&utm_source=google_main_pc&utm_medium=search_keyword&utm_content=company-k&utm_term=%EC%BA%90%EB%A1%AF%EB%B3%B4%ED%97%98&afccd=PA00459&afcDtcd=GOOGLE1_SA_B_PC_EXACT&afcDtFlgcd=%EC%BA%90%EB%A1%AF%EB%B3%B4%ED%97%98&main=y&gad=1&gclid=CjwKCAjw4P6oBhBsEiwAKYVkqz6-aRy-Kl-4a_AD_6QJOvuB9tLiKn6swQKpd-G1WtrHZpwLuZvMlhoCoHgQAvD_BwE">
				<img src="/img/carr.jpg" alt="samsung" class="centered-image" >
				<br>
				<p1>캐롯 다이렉트 자동차보험</p1>
			</a>
		</div>
		<div style="max-width: 30%;">
			<a href="https://direct.kbinsure.co.kr/home/#/MAIN_0001M?pid=1090041&code=0022&utm_source=Google&utm_medium=google%20CPC(%EC%9D%BC%EB%B0%98_%EB%B8%8C%EB%9E%9C%EB%93%9CKW)&utm_term=KB%EB%8B%A4%EC%9D%B4%EB%A0%89%ED%8A%B8%EC%9E%90%EB%8F%99%EC%B0%A8%EB%B3%B4%ED%97%98&utm_campaign=0706_1231_google_sa&utm_content=10900410022&gclid=CjwKCAjwyY6pBhA9EiwAMzmfwWKBFftNu7lPPonI3C64BYD5TFinjOkjxZv5HuFrFFifc82G7RZEfxoCBq4QAvD_BwE">
				<img src="/img/KB.png" alt="kb" class="centered-image" >
				<br>
				<p1>KB 다이렉트 자동차보험</p1>
			</a>
		</div>
		<div style="max-width: 30%;">
			<a href="https://www.directdb.co.kr/product/at/pvuatarc/step1/formStepPre.do?src=adwords&kw=07C618&partner_code=C457&keyword=KGM964776&utm_source=google_pc&utm_medium=cpc&utm_campaign=nhnad&utm_term=DB%EB%8B%A4%EC%9D%B4%EB%A0%89%ED%8A%B8%EB%B3%B4%ED%97%98%28%EA%B5%AC%EB%AC%B8%29&nbsrc=adwords_g&nbkw=db%EB%8B%A4%EC%9D%B4%EB%A0%89%ED%8A%B8%EB%B3%B4%ED%97%98&gad=1&gclid=CjwKCAjwyY6pBhA9EiwAMzmfwcY4g4HltcX1YMhTq9cKaQgpJJdL0yFCqHtpFnZQbAoyThxre1OnjRoC8X4QAvD_BwE">
				<img src="/img/db.jpg" alt="db" class="centered-image" >
				<br>
				<p1>DB 다이렉트 자동차보험</p1>
			</a>
		</div>
	</div>		
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>