<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../header.jsp" %>

    <div class="member">
      <div>
        <section class="register">
          <form action="/brand/member/register.do" method="post">
            <section>
              <table>
                <tr>
                  <th>아이디</th>
                  <td>
                    <input type="text" name="bm_uid" placeholder="아이디 입력" required />
                    <span class="msgId">영문, 숫자로 4~12자까지 설정해 주세요.</span>
                  </td>
                </tr>
                <tr>
                  <th>비밀번호</th>
                  <td>
                    <input type="password" name="bm_pass" placeholder="비밀번호 입력" required />
                    <span class="msgPass">영문, 숫자 특수문자를 조합하여 8~12자 까지 설정해 주세요.</span>
                  </td>
                </tr>
                <tr>
                  <th>비밀번호 확인</th>
                  <td>
                    <input type="password" name="bm_pass2" placeholder="비밀번호 확인" required />
                    <span class="msgPass">비밀번호 재입력</span>
                  </td>
                </tr>
              </table>
            </section>

            <section>
              <table>
                <tr>
                  <th>이름</th>
                  <td><input type="text" name="bm_name" placeholder="이름 입력" required /></td>
                </tr>
                <tr>
                  <th>성별</th>
                  <td>
                    <label><input type="radio" name="bm_gender" value="1" checked>&nbsp;남</label>
                    <label><input type="radio" name="bm_gender" value="2" >&nbsp;여</label>
                  </td>
                </tr>
                <tr>
                  <th>Email</th>
                  <td><input type="email" name="bm_email" placeholder="이메일 입력" required /></td>
                </tr>
                <tr>
                  <th>휴대폰</th>
                  <td>
                    <input type="text" name="bm_hp" maxlength="13" placeholder="휴대폰번호 입력" required />
                    <span class="msgHp"> - 포함 13자리를 입력하세요.</span>
                  </td>
                </tr>
                <tr class="addr">
                  <th>주소</th>
                  <td>
                    <div>
                      <input type="text" name="bm_zip" id="zip" placeholder="우편번호 입력 클릭" onclick="postcode();" readonly />
                    </div>
                    <div>
                      <input type="text" name="bm_addr1" id="addr1" size="50" placeholder="주소를 검색하세요." readonly />
                    </div>
                    <div>
                      <input type="text" name="bm_addr2" id="addr2" size="50" placeholder="상세주소를 입력하세요." />
                    </div>
                  </td>
                </tr>
              </table>
            </section>
            <div>
              <input type="submit" class="join" value="회원가입" />
            </div>
          </form>
        </section>
    </div>

    </div>

    </div>

<%@ include file="../footer.jsp" %>