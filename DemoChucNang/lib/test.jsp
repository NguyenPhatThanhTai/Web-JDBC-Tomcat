<!DOCTYPE html>
<html>
<body>


<div class="form-group">
    <label style="color: white" class="control-label col-sm-2" for="1so">Tài khoản:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="1so" name="username1" placeholder="ví dụ: abcd0107">
        <p id="TK"></p>
    </div>
</div>

<div onclick="myFunction()" class="form-group">
    <label style="color: white" class="control-label col-sm-2" for="2so">Tài khoản:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="2so" name="username2" placeholder="ví dụ: abcd0107">
    </div>
</div>


<p>Nhấn vào nút bên trên để chạy hàm in ra chữ "Xin chào" trong thẻ p với id="demo".</p>

<script type="text/javascript">
    function myFunction() {

        if ( document.getElementById("1so").value == "" )
    {
            document.getElementById("TK").innerHTML = "Không được để trống";
        }
    }
</script>

</body>
</html>