  <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card mb-4" style="background-color : #d9ffb3;">
            <h5 class="card-header" style="background-color : #bfff80;">Search</h5>
            <div class="card-body" style="background-color : #d9ffb3;">
                   <form name="search" action="search.php" method="post">
              <div class="input-group">
           
        <input type="text" name="searchtitle" class="form-control" placeholder="Search for..." required>
                <span class="input-group-btn">
                  <button class="btn btn-success" type="submit">Go!</button>
                </span>
              </form>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4"  style="border-width : thick; background-color:#ffb366; border-color :grey;">
            <h5 class="card-header" style="background-color : #ff9933;  border-color :grey; border-width : thick;">Categories</h5>
            <div class="card-body" style="background-color : #ffb366;  border-color :grey; ">
              <div class="row" style="background-color : #ff9933;">
                <div class="col-lg-12" >
                  <ul class="list-unstyled mb-0">
<?php $query=mysqli_query($con,"select id,CategoryName from tblcategory");
while($row=mysqli_fetch_array($query))
{
?>

                    <li class="list-group-item list-group-item-warning">
                      <a href="category.php?catid=<?php echo htmlentities($row['id'])?>"><?php echo htmlentities($row['CategoryName']);?></a>
                    </li>
<?php } ?>
                  </ul>
                </div>
       
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4" style="background-color : #cce6ff">
            <h5 class="card-header" style="background-color : #99ceff">Recent News</h5>
            <div class="card-body" style="background-color : #cce6ff">
                      <ul class="mb-0">
<?php

$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 8");
$count = 0;
while ($row=mysqli_fetch_array($query)) {
	if($count < 5)
	{

?>

                    <li>
                      <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><?php echo htmlentities($row['posttitle']);?></a>
                    </li>
            <?php $count++;
	}
	} ?>
          </ul>
            </div>
          </div>

        </div>
