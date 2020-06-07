<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    table th, td{ 
        text-align: center;
    }
</style>
<script>
$(document).ready(function(){
		$("tr[lang='product'] td").css("vertical-align","middle");
	$("button#btn-submit").click(function(){
		if(confirm('���� �����Ͻðڽ��ϱ�?')){
		$("form").submit();
		}
	}); 
});
</script>

<body>
<form action="inforeserveProcess.do" method="post" > 

<input type="hidden" value="${id }" name="id"/>
<input type="hidden" value="${date }" name="date"/>
<input type="hidden" value="${count }" name="count"/>
<input type="hidden" value="${pno }" name="pno"/>


    <div class="container">
    <hr>
        <h3>�ֹ�����</h3>    
        <br>
        <ul>
        <li><h5>�ֹ��Ͻð��� �ϴ� ��ǰ�� ������ �ٽ��ѹ� Ȯ���Ͽ� �ֽʽÿ�.</h5></li>
        <li><h5> �ֹ������� ���������� �ٽ��ѹ� Ȯ���� �ּ���.</h5></li>
        </ul>
        <table class="table table-bordered" id="tbl-product">
            <colgroup>
                <col style="width: 20%;" />
                <col style="width: 20%" />
                <col style="width: 20%" />
                <col style="width: 20%" />
                <col style="width: 20%" />
            </colgroup>
            <tr style="background-color:#d3d3d3 ">             
                      
                <th  colspan="2">��ǰ��</th>
                <th>�̿볯¥</th>
                <th>����</th>
                <th>�����ο�</th>
            </tr>
            <tr lang="product">                
                <td><img width="200px" src="/team/semiupload/${spb.pfilename }"></td>
                <td>${spb.pname }</td>
                <td>${date }</td>
                <td>${spb.pPrice }</td>
                <td>${count }</td>
            </tr>
           
            <tr style="background-color:#FF7F00 ">                
                <td colspan="2">������ ����Ʈ : 30 ��</td>
                
                <td colspan="3">�� �ֹ��ݾ� : ${spb.pPrice }-30 = ${spb.pPrice - 30} ��</td>
                
            </tr>
           
        </table>
                
        <table class="table table-bordered" id="tbl-order" style="display: none;">            
            <thead>                
                <th>ǰ��</th>
                <th>����</th>
                <th>����</th>
                <th>�ݾ�</th>
            </thead>
            <tbody>
            
            </tbody>
        </table>        
        <hr>
        <h1>01</h1><h3>������ ����</h3>
        <div style="padding:50px;margin:10px;border:2px solid black ">
        <table class="table table-bordered" id="tbl-total">
           
            <tbody>
	            <tr>
	                <td>������</td>
	                <td>${member.name }</td>
	            </tr>
	            <tr>
	                <td>�ּ�</td>
	                <td>${member.address }</td>
	            </tr>
	            <tr>
	                <td>�̸���</td>
	                <td>${member.email }</td>
	            </tr>
	            <tr>
	                <td>����ó</td>
	                <td>${member.tel }</td>
	            </tr>
	            
            </tbody>            
        </table>
        </div>
        <hr>
        <h1>02</h1><h3>�Ǹ��� ����</h3>
        <div style="padding:50px;margin:10px;border:2px solid black ">
        <table class="table table-bordered" id="tbl-total">
            <tbody>
	            <tr>
	                <td>��ü��</td>
	                <td>${company.cname }</td>
	            </tr>
	            <tr>
	                <td>����ó</td>
	                <td>${company.ctel }</td>
	            </tr>
	            <tr>
	                <td>�ּ�</td>
	                <td>${company.cadd }</td>
	            </tr>
            </tbody>            
        </table>
        </div>
        <hr>
        <h1>03</h1><h3>���� �ݾ�</h3>
        <div style="padding:50px;margin:10px;border:2px solid black ">
        <table class="table table-bordered" id="tbl-total">
          
            
            <tbody>
            <tr>
                <td>��ǰ�ݾ�</td>
                <td>${spb.pPrice }</td>
             </tr>
            <tr>
                <td>���� ����Ʈ ����</td>
                <td><font color="red">30</font></td>
             </tr>
            <tr style="font-weight:bold;background-color:#FF7F00 ">
                <td>�� ���� �ݾ�</td>
                <td><font size="3">${spb.pPrice }-30 = ${spb.pPrice - 30}</font></td>
             </tr>

            </tbody>            
        </table>
        </div>
        <hr>
        <h1>04</h1><h3>������� ����</h3>
        <div style="padding:50px;margin:10px;border:2px solid black ">
        <table class="table table-bordered" id="tbl-total">
           
            <tbody style="text-align:left">
            <tr>
                <td>�Աݰ��� ����</td>
                <td><select name="account">
                	<option value="�������">������� 152-124512-12-512</option>
                	<option value="��������">�������� 120-354-561782</option>
                	<option value="��������">�������� 121-21-5123-123</option>
                </select></td>
            </tr>
            <tr>
                <td>�Ա��ڸ�</td>
                <td><input type="text" value=""></td>
            </tr>
            <tr>
                <td>�Աݱݾ�</td>
                <td style="font-weight:bold">133,350�� (���� �ݾ�)</td>
            </tr>
            <tr style="border-style:none">
        	<td colspan="2" style="font-weight:bold;text-align:right;border-style:none">������ �Ա��� ��� �Ա�Ȯ���� �� �� ���� ����� ����˴ϴ�.     </td>
            </tr>   
            </tbody>         
        </table>
        </div>
    </div>  
    <br>
      
       <div style="text-align: right;margin-bottom: 20px; margin-right:250px">
            <button type="button" class="btn btn-primary" id="btn-submit">�����ϱ�</button>
        </div>     
</form>
</body>
</html>
