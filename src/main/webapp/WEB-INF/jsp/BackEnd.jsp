<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Back End</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
     html, body
     {
        height: 100%;
        width: 100%;
     }

     .table1{
         width: auto;
         height: auto;
     }

     .table2{
         width: auto;
         height: auto;
     }

     tr{
       width: auto;
     }

     .table1 td{
      width: auto;
      padding: 1%;
      word-break: keep-all;
     }

     .table2 td{
      width: auto;
      padding: 1%;
      word-break: keep-all;
      vertical-align: middle;
      text-align: center;
     }

     a{
      color: black;
     }

     a:hover{
         cursor: pointer;
         color: blue;
         text-decoration:none;
     }

  </style>
<body>

<div class="container">
   <div style="width: 100%;height: 100%;" id="themsuathongtin">
      <h3>Thêm Tivi/Sửa thông tin</h3>
      <table class="table1">
         <tr>
            <td><label>Tên tivi </label></td> 
            <td><div class="form-group">
               <input type="text" name="tiviname" class="form-control">
               <p style="color: red;font-weight: bold;font-style: italic;"></p>
            </div></td>
         </tr>
          <tr>
            <td><label>Link ảnh </label></td> 
            <td><div class="form-group">
               <input type="text" name="linkanh" class="form-control">
               <p style="color: red;font-weight: bold;font-style: italic;"></p>
            </div></td>
         </tr>
         <tr>
            <td> <label>Hãng </label> </td>
            <td><select style="height: 32px;border: 2px solid black;">
                  <option value="LG" selected="selected">LG</option>
                  <option value="Sony">Sony</option>
                  <option value="Samsung">Samsung</option>
                  <option value="Lenovo">Lenovo</option>
               </select> </td>
         </tr>
         <tr>
            <td><label>Giá</label> </td>
            <td><div class="form-group" style="width: 400px;">
                  <input type="text" name="gia" class="form-control">
                   <p style="color: red;font-weight: bold;font-style: italic;"></p>
               </div></td>
         </tr>
         <tr>
            <td><label>Giảm giá </label> </td>
            <td><div class="form-group">
                <input type="text" name="giamgia" class="form-control">
                <p style="color: red;font-weight: bold;font-style: italic;"></p>
               </div></td>
         </tr>
         <tr>
            <td><label>Mô tả </label> </td>
            <td><div class="form-group">
               <textarea name="mota" class="form-control" style="max-width: 400px;min-width: 400px;min-height: 70px;"></textarea>
               <p style="color: red;font-weight: bold;font-style: italic;"></p>
               </div></td>
         </tr>
         <tr>
            <td><input type="button" class="btn btn-default" style="width: 300%;" value = "Submit"></td>
         </tr>
      </table>
   </div>

   <div style="width: 100%;height: 100%;margin-top: 5%;" id="danhsachtivi">
   <form action="searchProduct" method="Post">
      <h3>Danh sách Tivi</h3>
         <table class="table2">
            <tr>
               <td><label>Tên tivi </label></td> 
               <td><div class="form-group">
                  <input type="text" name="name" class="form-control">
                  <p style="color: red;font-weight: bold;font-style: italic;"></p>
               </div></td>
            </tr>
            <tr>
               <td> <label>Hãng </label> </td>
               <td><div class="form-group">
                  <input type="text" name="category" class="form-control">
                  <p style="color: red;font-weight: bold;font-style: italic;"></p>
                  </div></td>
            </tr>

        
            <tr>
               <td><label>Giá</label></td>
               <td style="min-width: 280px;">
                  <input type="number" name="minprice" class="form-control">
                  <p style="color: red;font-weight: bold;font-style: italic;"></p>
               </td>
               <td style="text-align: center;min-width: 80px;">
                  <div style="text-align: center;height: auto;">
                     <span style="font-size: 17px;"> ~ </span>
                  </div></td>
               <td style="min-width: 280px;">
                  <input type="number" name="maxprice" class="form-control" >
                  <p style="color: red; font-weight: bold;font-style: italic;"></p>
               </td>
            </tr>
          
            <tr>
               <td><label>Đã bán </label> </td>
               <td>
                  <input type="checkbox" value="checkedsell" name="sold" style="min-width: 60px;min-height: 30px;">
               </td>
            </tr>
            <tr>
             
               <td><input type="submit" class="btn btn-default"style="min-width: 170%;"value = "Tim kiem"></td>
               <td><input type="button" class="btn btn-default" style="margin-left: 20%;min-width: 45%;" value = "Thêm mới"></td>
            </tr>
         </table>  
         </form>
   </div>

   <div style="width: 100%;height: 100%;margin-top: 5%;">
      <table class="table table-bordered">
         <thead>
            <tr>
               <th style="background-color: #CC99FF;">Ti vi</th>
               <th style="background-color: #CC99FF;">Hãng</th>
               <th style="background-color: #CC99FF;">Giá</th>
               <th style="background-color: #CC99FF;">Người mua</th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td><a onclick="Update_record()">Smart Tivi LG 55 inch</a></td>
               <td>LG</td>
               <td>14000000</td>
               <td>Lee Nguyễn</td>
            </tr>
            <tr>
               <td></td>
               <td></td>
               <td></td>
               <td></td>
            </tr>
            <tr>
               <td></td>
               <td></td>
               <td></td>
               <td></td>
            </tr>
            <tr>
               <td></td>
               <td></td>
               <td></td>
               <td></td>
            </tr>
         </tbody>
      </table>
   </div>
</div>

  
</body>
</html>
    