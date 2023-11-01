<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="newProduct.css">
<title>��ǰ����</title>
</head>
<body>
		    <main>
        <nav class="sidebar">
            <ul>
                <li><a href="/management_modify/customerFolder/customer-manage.html">�� ����</a></li>
                <li><a href="/management_modify/productFolder/product-manage.html">��ǰ ����</a></li>
                <li><a href="">����Ʈ ����</a></li>
            </ul>
        </nav>

        <div class="manager-section">
            <p>��ǰ ����</p>
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

        <div class="modal-bg">
            <div class="modal">
                <h3>��ǰ ���� ����</h3>
                <div class="exitBtn">
                    <img src="../image2/exitBtn.png">
                </div>
            
                <!-- <div class="customer-img">
                    <img src="/management_modify/imgFolder/customer.png">
                </div>
                 -->
                <table>
                    <tr>
                        <th>��ǰ�̸�</th>
                        <td><input type="text" class="md-product" disabled></td>
                        <td><button type="button"  class="product-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>�����̸�</th>
                        <td><input type="text" class="md-eng" disabled></td>
                        <td><button type="button"  class="eng-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>�ѱ��̸�</th>
                        <td><input type="text" class="md-kr" disabled></td>
                        <td><button type="button"  class="kr-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>����</th>
                        <td><input type="text" class="md-price" disabled></td>
                        <td><button type="button"  class="price-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>���</th>
                            <td>
                                <ul>
                                    <li><input type="text" class="md-stock"  placeholder="ml�Է�" disabled></li>
         
                                </ul>
                            </td>   
                        <td><button type="button"  class="stock-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>�귣��</th>
                        <td><input type="text" class="md-brand" disabled></td>
                        <td><button type="button"  class="brand-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>��</th>
                        <td><input type="text" class="md-scent" disabled></td>
                        <td><button type="button"  class="scent-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>ž</th>
                        <td><input type="text" class="md-top" disabled></td>
                        <td><button type="button"  class="top-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>�̵�</th>
                        <td><input type="text" class="md-middle" disabled></td>
                        <td><button type="button"  class="middle-reset">�����ϱ�</button></td>
                    </tr>
                    <tr>
                        <th>���̽�</th>
                        <td><input type="text" class="md-base" disabled></td>
                        <td><button type="button"  class="base-reset">�����ϱ�</button></td>
                    </tr>

                    <tr>
                        <th>�̹���</th>
                        <td><input type="file" class="md-file"></td>
                    </tr>
                
                </table>

                <div class="btn-group">
                    <button type="button" class="cancle-btn">���</button>
                    <button type="button" class="confirm-btn">Ȯ��</button>
                </div>
            </div>
        </div>    

            <div class="customer-tb">
                <table>
                    <thead>
                        <tr>
                            <th><button type="button" class="customer-delete">����</button></th>
                            <th>��ǰ�̸�</th>
                            <th>�����̸�</th>
                            <th>�ѱ��̸�</th>
                            <th>����</th>
                            <th>���</th>
                            <th>�귣��</th>
                            <th>��</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">flower-ode</td>
                            <td class="eng-name">roes</td>
                            <td class="kr-name">���</td>
                            <td class="pd-price">10,000</td>
                            <td class="pd-brand">������</td>
                            <td class="pd-scent">�����</td>
                            <td><button type=button class="info-rewrite">��������</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">�׽�Ʈ1</td>
                            <td class="eng-name">�׽�Ʈ2</td>
                            <td class="kr-name">�׽�Ʈ3</td>
                            <td class="pd-price">�׽�Ʈ4</td>
                            <td class="pd-brand">�׽�Ʈ5</td>
                            <td class="pd-scent">�׽�Ʈ5</td>
                            <td><button type=button class="info-rewrite">��������</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">�׽�Ʈ1</td>
                            <td class="eng-name">�׽�Ʈ2</td>
                            <td class="kr-name">�׽�Ʈ3</td>
                            <td class="pd-price">�׽�Ʈ4</td>
                            <td class="pd-brand">�׽�Ʈ5</td>
                            <td class="pd-scent">�׽�Ʈ5</td>
                            <td><button type=button class="info-rewrite">��������</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">�׽�Ʈ1</td>
                            <td class="eng-name">�׽�Ʈ2</td>
                            <td class="kr-name">�׽�Ʈ3</td>
                            <td class="pd-price">�׽�Ʈ4</td>
                            <td class="pd-brand">�׽�Ʈ5</td>
                            <td class="pd-scent">�׽�Ʈ5</td>
                            <td><button type=button class="info-rewrite">��������</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </main> 



    
    <script>

        //���â ����
        let infoRewrite = $('.info-rewrite');
        let modalBg = $('.modal-bg');
        
            for(let i=0; i < infoRewrite.length; i++){
                infoRewrite.eq(i).on('click',function(){
                    modalBg.addClass('show-modal');
                })
            }

        //���â �ݱ�
        document.querySelector('.exitBtn').addEventListener('click',function(){
            document.querySelector('.modal-bg').classList.remove('show-modal');
        })
        
        // ��ǰ�̸� ����
        let prdCount=1;
        let prdInput = document.querySelector('.md-product');
        let prdReset = document.querySelector('.product-reset');

        prdReset.addEventListener('click',function(){
            prdCount++;
            if(prdCount%2==0){
                prdInput.disabled = false;
            }
            else if(prdCount%2==1){
                prdInput.disabled = true;
            }
        })



        //�����̸�
        let engCount=1;
        let engInput = document.querySelector('.md-eng');
        let engReset = document.querySelector('.eng-reset');

        engReset.addEventListener('click',function(){
            engCount++;
            if(engCount%2==0){
                engInput.disabled = false;
            }
            else if(engCount%2==1){
                engInput.disabled = true;
            }
        })

        
        //�ѱ��̸�
        let krCount=1;
        let krInput = document.querySelector('.md-kr');
        let krReset = document.querySelector('.kr-reset');

        krReset.addEventListener('click',function(){
            krCount++;
            if(krCount%2==0){
                krInput.disabled = false;
            }
            else if(krCount%2==1){
                krInput.disabled = true;
            }
        })

         //����
        let prCount=1;
        let prInput = document.querySelector('.md-price');
        let prReset = document.querySelector('.price-reset');

        prReset.addEventListener('click',function(){
            prCount++;
            if(prCount%2==0){
                prInput.disabled = false;
            }
            else if(prCount%2==1){
                prInput.disabled = true;
            }
        })

        //���
        let stkCount=1;
        let stkInput = document.querySelector('.md-stock');
        let stkReset = document.querySelector('.stock-reset');

        stkReset.addEventListener('click',function(){
            stkCount++;
            if(stkCount%2==0){
                stkInput.disabled = false;
            }
            else if(stkCount%2==1){
                stkInput.disabled = true;
            }
        })

         //�귣��
        let brdCount=1;
        let brdInput = document.querySelector('.md-brand');
        let brdReset = document.querySelector('.brand-reset');

        brdReset.addEventListener('click',function(){
            brdCount++;
            if(brdCount%2==0){
                brdInput.disabled = false;
            }
            else if(brdCount%2==1){
                brdInput.disabled = true;
            }
        })

        //��
        let scCount=1;
        let scInput = document.querySelector('.md-scent');
        let scReset = document.querySelector('.scent-reset');

        scReset.addEventListener('click',function(){
            scCount++;
            if(scCount%2==0){
                scInput.disabled = false;
            }
            else if(scCount%2==1){
                scInput.disabled = true;
            }
        })

        //ž
        let topCount=1;
        let topInput = document.querySelector('.md-top');
        let topReset = document.querySelector('.top-reset');

        topReset.addEventListener('click',function(){
            topCount++;
            if(topCount%2==0){
                topInput.disabled = false;
            }
            else if(topCount%2==1){
                topInput.disabled = true;
            }
        })

        //�̵�
        let midCount=1;
        let midInput = document.querySelector('.md-middle');
        let midReset = document.querySelector('.middle-reset');

        midReset.addEventListener('click',function(){
            midCount++;
            if(midCount%2==0){
                midInput.disabled = false;
            }
            else if(midCount%2==1){
                midInput.disabled = true;
            }
        })

        //���̽�
        let bsCount=1;
        let bsInput = document.querySelector('.md-base');
        let bsReset = document.querySelector('.base-reset');

        bsReset.addEventListener('click',function(){
            bsCount++;
            if(bsCount%2==0){
                bsInput.disabled = false;
            }
            else if(bsCount%2==1){
                bsInput.disabled = true;
            }
        })




        // input ����
        let cancle = document.querySelector('.cancle-btn');
        let pdNull = document.querySelector('.md-product');
        let engNull = document.querySelector('.md-eng');
        let krNull = document.querySelector('.md-kr');
        let prNull = document.querySelector('.md-price');
        let stkNull = document.querySelector('.md-stock');
        let brdNull = document.querySelector('.md-brand');
        let scNull = document.querySelector('.md-scent');
        let topNull = document.querySelector('.md-top');
        let midNull = document.querySelector('.md-middle');
        let bsNull = document.querySelector('.md-base');

        cancle.addEventListener('click',function(){
         pdNull.value = null;
         engNull.value = null;
         krNull.value = null;
         prNull.value = null;
         stkNull.value = null;
         brdNull.value = null;
         scNull.value = null;
         topNull.value = null;
         midNull.value = null;    
         bsNull.value = null;
        })
        
        let conFirm = document.querySelector('.confirm-btn');

            conFirm.addEventListener('click',function(){
                alert('�����Ǿ����ϴ�.');
        })
        
    </script>
		
</body>
</html>