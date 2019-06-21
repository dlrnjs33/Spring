<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../header.jsp" %>

    <div class="board">
      <div>
        <section class="notice">
          <h1>공지사항</h1>
          <div class="list">
            <table>
              <tr>
                <td>${ bvo.bb_subject }</td>
              </tr>
              <tr>
                <td class="boardview">
                  ${ bvo.bb_comment }
                </td>
              </tr>
            </table>

        </section>
    </div>

    </div>

    </div>

<%@ include file="../footer.jsp" %>