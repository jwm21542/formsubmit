<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "./../header.jsp"%>
<%
	if(mb == null){
		%>
			<script type = "text/javascript">
				alert("먼저 로그인해야 됩니다.")
				location.href = "<%= conPath%>" + "/login.jsp";
			</script>	
		<%
	} else{
%>


<section id="page-content" class="page-wrapper section" style = "margin-top: 50px;">
 <div class="message-box-section mt--50 mb-80">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
							  <div class="container mt-5">
							        <h1>이메일 보내기</h1>
							        <form class="row g-3" action="https://formsubmit.co/4e83b678342ad521db9868ab5b20a21b" method="POST">
							          <!-- Honeypot -->
							          <input type="text" name="_honey" style="display: none;">
							
							          <!-- Disable Captcha -->
							          <input type="hidden" name="_captcha" value="false">
							
							          <input type="hidden" name="_next" value="https://haydn5.github.io/formsubmitdemo/success.html" >
							
							          <div class="col-md-6">
							            <label for="firstName" class="form-label">성함</label>
							            <input type="text" class="form-control" name="name" id="firstName" required>
							          </div>
							          <div class="col-md-8">
							            <label for="emailInfo" class="form-label">이메일</label>
							            <input type="email" class="form-control" name="email" id="emailInfo" required>
							          </div>
							          <div class="col-md-4">
							            <label for="phoneNumber" class="form-label">전화번호</label>
							            <input type="text" class="form-control" name="phone" id="phoneNumber" placeholder="+82 (010) 1234-4567">
							          </div>
							           <div class="col-md-8">
							            <label for="firstName" class="form-label">제목</label>
							            <input type="text" class="form-control" name="title" id="title" required>
							          </div>
							          <div class="col-md-12">
							            <label for="comments" class="form-label">질문 / 문의사항</label>
							            <textarea class="form-control" id="comments" name="comments" rows="3" required></textarea>
							          </div>
							          <div class="col-md-12">
							            <button type="submit" class="submit-btn-1 mt-30 btn-hover-1">보내기</button>
							          </div>
							        </form>
							    </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- MESSAGE BOX SECTION END -->
        </section>
<%} %>
        
<%@ include file = "./../footer.jsp"%>
<script src="<%=conPath %>/js/ajax-mail.js"></script>
