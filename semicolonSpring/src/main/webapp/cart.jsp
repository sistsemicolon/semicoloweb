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
<body>
    <div class="container">
        <h3>Buy Fruit</h3>    
        <table class="table table-bordered" id="tbl-product">
            <colgroup>
                <col style="width: 20%;" />
                <col style="width: 20%" />
                <col style="width: 20%" />
                <col style="width: 20%" />
                <col style="width: 20%" />
            </colgroup>
            <tr>             
                <th>checkbox</th>   
                <th>�ڵ�</th>   
                <th>ǰ��</th>
                <th>����</th>
                <th>����</th>
            </tr>
            <tr>                
                <td><input type="checkbox" name="fruit"></td>
                <td>1</td>
                <td>���</td>
                <td>500</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
            <tr>       
                <td><input type="checkbox" name="fruit"></td>         
                <td>2</td>
                <td>�ٳ���</td>
                <td>1500</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
            <tr>         
                <td><input type="checkbox" name="fruit"></td>       
                <td>3</td>
                <td>����</td>
                <td>1000</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
        </table>
        <div style="text-align: right;margin-bottom: 20px;">
            <button type="button" class="btn btn-primary" id="btn-delete">����</button>
        </div>                
        <table class="table table-bordered" id="tbl-order" style="display: none;">            
            <thead>                
                <th>ǰ��</th>
                <th>����</th>
                <th>����</th>
                <th>�ݾ�</th>
            </thead>
            <tbody></tbody>
        </table>        
        <table class="table table-bordered" id="tbl-total">
            <thead>
                <tr>
                    <th>�Ѽ���</th>
                    <th>�ѱݾ�</th>
                </tr>
            </thead>
            <tbody>
                <td><input type="number" readonly="readonly" id="total-qty" value="0"></td>
                <td><input type="number" readonly="readonly" id="total-amt" value="0"></td>
            </tbody>            
        </table>
    </div>    
</body>
<script>
$(document).ready(function(){

    // check box ������ ��� ���� ����ִ� ����
    var cart = {
        buyList : [],
        init : function() {
            //buyList �ʱ�ȭ
            this.buyList = [];
        },
        getBuyList : function(obj) {
            return this.buyList;
        },
        getFindIndex : function(cd) {
            //�迭 �ߺ� �˻�
            var fIdx = -1;
            this.buyList.forEach(function(item, idx, ary) {
                if(item.code == cd) {
                    fIdx = idx;
                }
            });
            return fIdx;
        },
        addBuyList : function(obj) {
            var fIdx = this.getFindIndex(obj.code);
            if(fIdx == -1) {
                this.buyList.push(obj);
            } else {
                this.buyList[fIdx] = obj;
            }
            this.render();
        },
        deleteBuyList : function(cd) {
            this.buyList.splice(this.getFindIndex(cd), 1);
            this.render();
        },
        getTotalPay : function() {
            //�� �����ݾ� ���
            var totalQty = 0;
            var totalPrice = 0;
            
            this.buyList.forEach(function(item, idx, ary) {
                totalQty += Number(item.qty);
                totalPrice += Number(item.price)*Number(item.qty);
            });
            return {
                totalQty : totalQty,
                totalPrice : totalPrice
            };
        },
        render : function() {            
            // �ֹ� table �׸���
            var order = $('#tbl-order tbody');
            if(this.buyList.length > 0) {
                var html = [];
                this.buyList.forEach(function(item, idx, ary) {
                    html.push([
                        '<tr data-cd="', item.cd ,'">',                        
                        '<td>', item.title, '</td>',
                        '<td>', item.price, '</td>',
                        '<td>', item.qty, '</td>',
                        '<td>', Number(item.price)*Number(item.qty), '</td>',
                        '</tr>'
                    ].join(''));
                });
                order.html(html);

                // �� �����ݾ�&���� table �׸���
                var total = this.getTotalPay();
                $('#total-qty').val(total.totalQty);
                $('#total-amt').val(total.totalPrice);
                $('#tbl-order').show();                

            } else {
                // �ֹ����� table �����
                $('#tbl-order').hide();                
     
                // �ֹ����� �����
                order.empty();
     
                // �� �������� �����
                $('#total-qty').val(0);
                $('#total-amt').val(0);
            }            
        }
    };

    // ���� Ŭ�� ��
    $('.edt-qty').on('change', function() {
        var tr = $(this).closest('tr');
        var code = tr.children('td:eq(1)').text();
        var title = tr.children('td:eq(2)').text();
        var price = Number(tr.children('td:eq(3)').text());
        var qty = Number(tr.children('td:eq(4)').find('input').val());

        // ������ 0 �ʰ��ϴ� ��� buyList�� �߰� 
        // ������ 0 ������ ��� buyList���� ����
        if(qty > 0) {
            var obj = {
                code : code,
                title : title,
                price : price,
                qty : qty
            }
            cart.addBuyList(obj);
        } else {
            cart.deleteBuyList(code);
        }
        console.log(cart.getBuyList());
    });

    // ���� ��ư Ŭ�� ��
    $('#btn-delete').on('click', function() {

        var chkList = $('input[name="fruit"]:checked');        
        var cd;

        // chcekd �� product row ����
        // order row ����
        for(var i = chkList.length-1; i > -1; i--) {
            cd = chkList.eq(i).closest('tr').find('td:eq(1)').text();            
            chkList.eq(i).closest('tr').remove();
            cart.deleteBuyList(cd);
        }     
    });

}); //end document ready

$.fn.serializeObject = function() {
    "use strict";
    
    var result = {};
    var extend = function(i, element) {
        var node = result[element.name];

        if ('undefined' !== typeof node && node !== null) {
            if ($.isArray(node)) {
                node.push(element.value);
            } else {
                result[element.name] = [ node, element.value ];
            }
        } else {
            result[element.name] = element.value;
        }
    };

    $.each(this.serializeArray(), extend);
    return result;
};
</script>
</html>
