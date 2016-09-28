<?php
date_default_timezone_set('Asia/Manila'); // CDT
function formatSizeUnits($bytes)
{
    if ($bytes >= 1073741824)
    {
        $bytes = number_format($bytes / 1073741824, 2) . ' GB';
    }
    elseif ($bytes >= 1048576)
    {
        $bytes = number_format($bytes / 1048576, 2) . ' MB';
    }
    elseif ($bytes >= 1024)
    {
        $bytes = number_format($bytes / 1024, 2) . ' kB';
    }
    elseif ($bytes > 1)
    {
        $bytes = $bytes . ' bytes';
    }
    elseif ($bytes == 1)
    {
        $bytes = $bytes . ' byte';
    }
    else
    {
        $bytes = '0 bytes';
    }
    return $bytes;
}
//$directory="/var/www/html/Feeds_File/sample_feeds/";  // local directory
if($ssh = ssh2_connect('174.129.233.96', 22)) {
    if(ssh2_auth_password($ssh, 'masturiano', 'masturianousap1q2w')) 
    {
    	$sftp = ssh2_sftp($ssh);
		//if ($dirhandler = opendir($directory)) // local directory
		if ($dirhandler = opendir("ssh2.sftp://$sftp/data/aopi/feeds_longbow/output/dam_ci_details/latest/")) 
		{
			?>
			<table border=1>
				<tr>
					<td><b>FILENAME</b></td>
					<td><b>SIZE</b></td>
					<td><b>DATE CREATED</b></td>
					<td><b>TIME CREATED</b></td>
					<td><b>RECORD COUNT</b></td>
				</tr>
			<?php
			while ($file = readdir($dirhandler)) 
			{
				$file_explode_by_dot = explode('.',$file);
				$file_num_count = (count($file_explode_by_dot)-1);
				$file_extension = $file_explode_by_dot[$file_num_count ];
			    $file_extension = substr($file_extension,0,3);
			    $file_extension = strtolower($file_extension);
			    if($file_extension == "txt")
			    {
			    	?>
			    	<tr>
			    	<?php
			    	# File name
			    	$filename = $file;
			    	echo $filename;
			    	echo "<br/>";
			    	# File size
			    	$fileSize = filesize("ssh2.sftp://$sftp/data/aopi/feeds_longbow/output/dam_ci_details/
			    		latest/$file");
			    	echo $fileSize;
			    	//echo $fileSize = filesize("ssh2.sftp://$sftp/$file");
			    	echo $files[] = $file; // put in array.
			  		//echo $file_size = filesize($file);
					//$file_size_format = formatSizeUnits($file_size);
					//echo $file_size_format;
					?>
			    	</tr>
			    	<?php
				}
			}
			?>
			</table>
			<?php
			natsort($files); // sort by filename
			?>
			<table border=1>
				<tr>
					<td><b>FILENAME</b></td>
					<td><b>SIZE</b></td>
					<td><b>DATE CREATED</b></td>
					<td><b>TIME CREATED</b></td>
					<td><b>RECORD COUNT</b></td>
				</tr>
			<?php
			foreach($files as $file)
			{
				$file_name = $file;
				$location_file_name = $directory.$file;
				?>
				<tr>
					<td>
						<?php echo $file_name;?>					
					</td>
					<td>
						<?php 
							$file_size = filesize($location_file_name);
							$file_size_format = formatSizeUnits($file_size);
							echo $file_size_format;
						?>					
					</td>
					<td>
						<?php 
							$file_created_date = filectime($location_file_name);
							echo $file_created = date('F d, Y',$file_created_date);
						?>					
					</td>
					<td align='center'>
						<?php 
							$file_created_time = filemtime($location_file_name);
							echo $file_created = date('h:i:s a',$file_created_time);
						?>					
					</td>
					<td align='right'>
						<?php 
							$file_line_count = 0;
							$handle = fopen($location_file_name, "r");
							while(!feof($handle))
							{
								$line = fgets($handle);
								$file_line_count++;
							}
							fclose($handle);
							if($file_size_format == '0 bytes')
							{
								echo 0;
							}
							else
							{
								echo $file_line_count;
							}
							
						?>					
					</td>
				</tr>
				<?php
			}
			?>
			</table>
			<?php
		}
	}
}
?>