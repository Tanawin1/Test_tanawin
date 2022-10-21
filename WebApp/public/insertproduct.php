<form action="productsuccess.php" method="GET">
<p>
<label for="ProductID">รหัสสินค้า </label>
<input type="text" name="ProductID" id="ProductID" value=""/>
</p>
<p>
<label for="ProductName">ชื่อสินค้า</label>
<input type="text" name="ProductName" id="ProductName" value=""/>
</p>
<p>
<label for="Price">ราคา</label>
<input type="text" name="Price" id="Price" value="" />
</p>
<p>
<label for="CDate">วันผลิด</label>
<input type="date" name="CDate" id="CDate" value="" />
</p>
<p>
<label for="ModDate">วันหมดอายุ</label>
<input type="date" name="ModDate" id="ModDate" value="" />
</p>
<p>
<label for="Deleted">มีสินค้านี้ไหม</label>
<input type="int" name="Deleted" id="Deleted" value="" />
</p>

<p>
    <input type="submit">
</p>
</form>