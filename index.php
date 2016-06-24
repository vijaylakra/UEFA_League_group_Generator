<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>UEFA League Group Stage</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

</head>
<?php  mysql_select_db("clubs",mysql_connect("localhost","root",""))or die(mysql_error()); ?>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<?php
								 $query_content = mysql_query("select * from teams where domestic_champion='YES' ")or die(mysql_error());
								 $query= mysql_query("select * from teams where domestic_champion='NO' ")or die(mysql_error());
								 $arr1=array();
								 $arr2=array();
								  while($row = mysql_fetch_array($query_content)) 
								       {$arr1[$row['name']]=$row['country'];}
									   
								while($row = mysql_fetch_array($query)) 
								       { $arr2[$row['name']]=$row['country'];}
			 ?>
	<center>
	<table  class="sp-league-table" >
      <tr> 
	  <td><b>Group A</td> <td><b>Group B</td>  <td><b>Group C</td> <td><b>Group D</td>
	  </tr>
	  <tr> <td><b>------</b></td> <td><b>------</b></td>  <td><b>------</b></td><td><b>------</b></td> </tr>

	  <tr>
<?php        

for($k=0;$k<8;$k++)
    {		
		   $group[$k]=array(); 
		   $rand_key=array_rand($arr1);  
		   $uniq_keys=array_unique($arr2);
		   $group[$k][$rand_key]=$arr1[$rand_key];
		   
/*remove from uniq selection team which contain same country as domestic champion(already chosen)    */
	     foreach($uniq_keys as $K=>$V)
              if($V==$arr1[$rand_key])
                     unset($uniq_keys[$K]);	
					  
			unset($arr1[$rand_key]);				   
			
	    for($x=0;$x<3;$x++)
		   {     
		       if($key=array_rand($uniq_keys))
			       {
				        $group[$k][$key]=$arr2[$key];
						unset($uniq_keys[$key],$arr2[$key]);
				   }
		   }   
	/* some times a group contain <4 team  then do the following operation*/		
		if(count($group[$k])<4)	
			 {  
			      $N=4-count($group[$k]);
				  $group_val=array_values($group[$k]); //taking all values of the group that contain <4 team  
				  
			$q=0;			
	          foreach($arr2 as $key=>$value)
				   { 
				      for($i=0;$i<3;$i++) //choose only 3 group  
							{    
							    $flag=0;  
							    $gpval=array_values($group[$i]);			 					
				
								if(!in_array($value,$gpval))  // match with arr2 country and check country exist in group A/B/C 
                                  {
								     $counter=0;
								      foreach($group[$i] as $ky=>$vl)
								       {    
								         ++$counter;
									      if($counter>1 && !in_array($vl,$group_val)) //skip first team and check country exist in group A/B/C 
										    {    	
												$group[$k][$ky]=$group[$i][$ky];
												$group[$i][$key]=$value;
												unset($group[$i][$ky],$arr2[$key]);
											    $q++; $flag=1;break; 
											} 
										}
									if($flag) break;	
							     }			 
						   }	
						   if($q==$N)break;
		       }		
			}		
	}
    
	/*Now filling the table */      
    for($i=0;$i<4;$i++)	
		{
		?><td>
		<?php
		 foreach($group[$i] as $key=>$val)
		       { 
				  $name = $key; 
		          $query = mysql_query("select * from teams where name='$name' ")or die(mysql_error());								 
				  $row = mysql_fetch_array($query); 			   
	 ?>  
     <br><span class="team-logo"><img width="105" height="128" src="<?php echo $row['logo']; ?>"></span><?php echo $name; ?></br>
	    <?php  
          }
       ?></td><?php }?>
		</tr>
	<tr> 
	  <td><br><b>Group E</td> <td><br><b>Group F</td>  <td><br><b>Group G</td> <td><br><b>Group H</td>
     </tr>
	 <tr>  <td><b>------</b></td> <td><b>------</b></td>  <td><b>------</b></td><td><b>------</b></td> </tr>	
	 <tr>
	<?php  for($i=4;$i<8;$i++)	{  ?>
	<td>
 	 <?php
    	 foreach($group[$i] as $key=>$val)
		       { 
				  $name = $key; 
		          $query = mysql_query("select * from teams where name='$name' ")or die(mysql_error());								 
				  $row = mysql_fetch_array($query); 			   
	 ?>  
    <br><span class="team-logo"><img width="105" height="128" src="<?php echo $row['logo']; ?>"></span><?php echo $name; ?></br>
	  <?php  }  ?>
	   </td>
	   <?php }?>
	   </tr>
</table>
	</center>	
</body>
</html>