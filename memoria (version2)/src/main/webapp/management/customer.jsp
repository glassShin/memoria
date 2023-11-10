<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="customer.css">
<title>Insert title here</title>
</head>
<body>
 <main>
 <main>
        <nav class="sidebar">
            <ul>
                <li><a href="/management_modify/customerFolder/customer-manage.html">고객 관리</a></li>
                <li><a href="/management_modify/productFolder/product-manage.html">상품 관리</a></li>
                <li><a href="">사이트 관리</a></li>
            </ul>
        </nav>

        <div class="manager-section">
            <p>고객 관리</p>
            <div class="customer-search">
                <select name="customer-select">
                    <option value="none">선택</option>
                    <option value="none">선택</option>
                    <option value="none">선택</option>
                    <option value="none">선택</option>
                    <option value="none">선택</option>
                </select>
                <input type="text" placeholder="검색">
                <button type="button">조회하기</button>    
            </div>


            <div class="customer-tb">
                <table>
                    <thead>
                        <tr>
                            <th><button type="button" class="customer-delete">삭제</button></th>
                            <th>번호</th>
                            <th>이메일</th>
                            <th>이름</th>
                            <th>비밀번호</th>
                            <th>전화번호</th>
                            <th>주소</th>
                            <th>가입일</th>
                            <th>권한</th>
                            <th>카테고리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="customer-order">1</td>
                            <td class="customer-email">noodle@abcd.com</td>
                            <td class="customer-pwd">1234</td>
                            <td class="customer-name">noodle</td>
                            <td class="customer-num">010-1234-5678</td>
                            <td class="customer-address">부천시 소사구 동녘동</td>
                            <td class="customer-sign-date">23/10/26</td>
                            <td class="customer-authority">user</td>
                            <td class="customer-category">없음</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="customer-order">1</td>
                            <td class="customer-email">noodle@abcd.com</td>
                            <td class="customer-pwd">1234</td>
                            <td class="customer-name">noodle</td>
                            <td class="customer-num">010-1234-5678</td>
                            <td class="customer-address">부천시 소사구 동녘동</td>
                            <td class="customer-sign-date">23/10/26</td>
                            <td class="customer-authority">user</td>
                            <td class="customer-category">없음</td>

                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td>테스트1</td>
                            <td>테스트2</td>
                            <td>테스트3</td>
                            <td>테스트4</td>
                            <td>테스트5</td>
                            <td>테스트2</td>
                            <td>테스트3</td>
                            <td>테스트4</td>
                            <td>테스트5</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td>테스트1</td>
                            <td>테스트2</td>
                            <td>테스트3</td>
                            <td>테스트4</td>
                            <td>테스트5</td>
                            <td>테스트2</td>
                            <td>테스트3</td>
                            <td>테스트4</td>
                            <td>테스트5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </main> 
        
    </script>
</body>
</html>