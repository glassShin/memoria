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
                <li><a href="/management_modify/customerFolder/customer-manage.html">�� ����</a></li>
                <li><a href="/management_modify/productFolder/product-manage.html">��ǰ ����</a></li>
                <li><a href="">����Ʈ ����</a></li>
            </ul>
        </nav>

        <div class="manager-section">
            <p>�� ����</p>
            <div class="customer-search">
                <select name="customer-select">
                    <option value="none">����</option>
                    <option value="none">����</option>
                    <option value="none">����</option>
                    <option value="none">����</option>
                    <option value="none">����</option>
                </select>
                <input type="text" placeholder="�˻�">
                <button type="button">��ȸ�ϱ�</button>    
            </div>


            <div class="customer-tb">
                <table>
                    <thead>
                        <tr>
                            <th><button type="button" class="customer-delete">����</button></th>
                            <th>��ȣ</th>
                            <th>�̸���</th>
                            <th>�̸�</th>
                            <th>��й�ȣ</th>
                            <th>��ȭ��ȣ</th>
                            <th>�ּ�</th>
                            <th>������</th>
                            <th>����</th>
                            <th>ī�װ�</th>
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
                            <td class="customer-address">��õ�� �һ籸 ���赿</td>
                            <td class="customer-sign-date">23/10/26</td>
                            <td class="customer-authority">user</td>
                            <td class="customer-category">����</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="customer-order">1</td>
                            <td class="customer-email">noodle@abcd.com</td>
                            <td class="customer-pwd">1234</td>
                            <td class="customer-name">noodle</td>
                            <td class="customer-num">010-1234-5678</td>
                            <td class="customer-address">��õ�� �һ籸 ���赿</td>
                            <td class="customer-sign-date">23/10/26</td>
                            <td class="customer-authority">user</td>
                            <td class="customer-category">����</td>

                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td>�׽�Ʈ1</td>
                            <td>�׽�Ʈ2</td>
                            <td>�׽�Ʈ3</td>
                            <td>�׽�Ʈ4</td>
                            <td>�׽�Ʈ5</td>
                            <td>�׽�Ʈ2</td>
                            <td>�׽�Ʈ3</td>
                            <td>�׽�Ʈ4</td>
                            <td>�׽�Ʈ5</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td>�׽�Ʈ1</td>
                            <td>�׽�Ʈ2</td>
                            <td>�׽�Ʈ3</td>
                            <td>�׽�Ʈ4</td>
                            <td>�׽�Ʈ5</td>
                            <td>�׽�Ʈ2</td>
                            <td>�׽�Ʈ3</td>
                            <td>�׽�Ʈ4</td>
                            <td>�׽�Ʈ5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </main> 
        
    </script>
</body>
</html>