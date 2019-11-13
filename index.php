<?php
include 'DBController.php';
$db_handle = new DBController();
?>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php 

$productResult = $db_handle->runQuery("SELECT * FROM tbl_products WHERE id = 2");
if (! empty($productResult)) {
    ?>
     
        <div id="product-view">
    <?php 
    $productImageResult = $db_handle->runQuery("SELECT * FROM tbl_product_image WHERE product_id = 2");
    if(! empty($productImageResult)) {
    ?> 
            <div class="preview-image">
            <div id="preview-enlarged">
            <img src="<?php echo $productImageResult[0]["preview_source"] ; ?>" />
            </div>
            
            <div id="thumbnail-container">
            <?php foreach($productImageResult as $key=>$value) { 
                $focused = "";
                if($key == 0) {
                    $focused = "focused";
                }
            ?>
                <img class="thumbnail <?php echo $focused; ?>" src="<?php echo $productImageResult[$key]["preview_source"] ; ?>" />
            <?php } ?>
            </div>
        </div>                                    
        <?php } ?>
    
<?php
}
?>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script>
$("#thumbnail-container img").click(function() {
	$("#thumbnail-container img").css("border", "1px solid #ccc");
    var src = $(this).attr("src");
    $("#preview-enlarged img").attr("src", src);
    $(this).css("border", "#fbb20f 2px solid");
    
});
</script>
</body>
</html>