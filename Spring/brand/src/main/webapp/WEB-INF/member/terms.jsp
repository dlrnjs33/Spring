<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../header.jsp" %>

    <div class="member">
      <div>
        <section class="terms">
            <section>
              <h3><span class="essential">(필수)</span>BRAND 이용약관</h3>
              <textarea class="terms" readonly>${ tvo.bm_terms }</textarea>
              <label><input type="checkbox" name="agree1" />동의합니다.</label>
            </section>
            <section>
              <h3><span class="essential">(필수)</span>BRAND 개인정보 수집 및 이용 동의</h3>
              <textarea class="privacy" readonly>${ tvo.bm_privacy }</textarea>
              <label><input type="checkbox" name="agree2" />동의합니다.</label>
            </section>
            <div>
              <input type="button" class="agree" value="동의하기" />
            </div>
        </section>
    </div>

    </div>

    </div>

<%@ include file="../footer.jsp" %>