<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="newProduct.css">
<title>상품관리</title>
</head>
<body>
		    <main>
        <nav class="sidebar">
            <ul>
                <li><a href="/management_modify/customerFolder/customer-manage.html">고객 관리</a></li>
                <li><a href="/management_modify/productFolder/product-manage.html">상품 관리</a></li>
                <li><a href="">사이트 관리</a></li>
            </ul>
        </nav>

        <div class="manager-section">
            <p>상품 관리</p>
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

        <div class="modal-bg">
            <div class="modal">
                <h3>상품 정보 수정</h3>
                <div class="exitBtn">
                    <img src="../image2/exitBtn.png">
                </div>
            
                <!-- <div class="customer-img">
                    <img src="/management_modify/imgFolder/customer.png">
                </div>
                 -->
                <table>
                    <tr>
                        <th>제품이름</th>
                        <td><input type="text" class="md-product" disabled></td>
                        <td><button type="button"  class="product-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>영문이름</th>
                        <td><input type="text" class="md-eng" disabled></td>
                        <td><button type="button"  class="eng-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>한글이름</th>
                        <td><input type="text" class="md-kr" disabled></td>
                        <td><button type="button"  class="kr-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td><input type="text" class="md-price" disabled></td>
                        <td><button type="button"  class="price-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>재고</th>
                            <td>
                                <ul>
                                    <li><input type="text" class="md-stock"  placeholder="ml입력" disabled></li>
         
                                </ul>
                            </td>   
                        <td><button type="button"  class="stock-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>브랜드</th>
                        <td><input type="text" class="md-brand" disabled></td>
                        <td><button type="button"  class="brand-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>향</th>
                        <td><input type="text" class="md-scent" disabled></td>
                        <td><button type="button"  class="scent-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>탑</th>
                        <td><input type="text" class="md-top" disabled></td>
                        <td><button type="button"  class="top-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>미들</th>
                        <td><input type="text" class="md-middle" disabled></td>
                        <td><button type="button"  class="middle-reset">수정하기</button></td>
                    </tr>
                    <tr>
                        <th>베이스</th>
                        <td><input type="text" class="md-base" disabled></td>
                        <td><button type="button"  class="base-reset">수정하기</button></td>
                    </tr>

                    <tr>
                        <th>이미지</th>
                        <td><input type="file" class="md-file"></td>
                    </tr>
                
                </table>

                <div class="btn-group">
                    <button type="button" class="cancle-btn">취소</button>
                    <button type="button" class="confirm-btn">확인</button>
                </div>
            </div>
        </div>    

            <div class="customer-tb">
                <table>
                    <thead>
                        <tr>
                            <th><button type="button" class="customer-delete">삭제</button></th>
                            <th>제품이름</th>
                            <th>영문이름</th>
                            <th>한글이름</th>
                            <th>가격</th>
                            <th>재고</th>
                            <th>브랜드</th>
                            <th>향</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">flower-ode</td>
                            <td class="eng-name">roes</td>
                            <td class="kr-name">장미</td>
                            <td class="pd-price">10,000</td>
                            <td class="pd-brand">조말랑</td>
                            <td class="pd-scent">장미향</td>
                            <td><button type=button class="info-rewrite">정보수정</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">테스트1</td>
                            <td class="eng-name">테스트2</td>
                            <td class="kr-name">테스트3</td>
                            <td class="pd-price">테스트4</td>
                            <td class="pd-brand">테스트5</td>
                            <td class="pd-scent">테스트5</td>
                            <td><button type=button class="info-rewrite">정보수정</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">테스트1</td>
                            <td class="eng-name">테스트2</td>
                            <td class="kr-name">테스트3</td>
                            <td class="pd-price">테스트4</td>
                            <td class="pd-brand">테스트5</td>
                            <td class="pd-scent">테스트5</td>
                            <td><button type=button class="info-rewrite">정보수정</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="customer-chk"></td>
                            <td class="product-name">테스트1</td>
                            <td class="eng-name">테스트2</td>
                            <td class="kr-name">테스트3</td>
                            <td class="pd-price">테스트4</td>
                            <td class="pd-brand">테스트5</td>
                            <td class="pd-scent">테스트5</td>
                            <td><button type=button class="info-rewrite">정보수정</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </main> 



    
    <script>

        //모달창 열기
        let infoRewrite = $('.info-rewrite');
        let modalBg = $('.modal-bg');
        
            for(let i=0; i < infoRewrite.length; i++){
                infoRewrite.eq(i).on('click',function(){
                    modalBg.addClass('show-modal');
                })
            }

        //모달창 닫기
        document.querySelector('.exitBtn').addEventListener('click',function(){
            document.querySelector('.modal-bg').classList.remove('show-modal');
        })
        
        // 제품이름 수정
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



        //영문이름
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

        
        //한글이름
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

         //가격
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

        //재고
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

         //브랜드
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

        //향
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

        //탑
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

        //미들
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

        //베이스
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




        // input 리셋
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
                alert('수정되었습니다.');
        })
        
    </script>
		
</body>
</html>