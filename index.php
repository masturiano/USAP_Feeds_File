<?php
# Set default time zone
date_default_timezone_set('Asia/Manila'); // CDT
# Format file size
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
# Start ssh2 connection to server
if($ssh = ssh2_connect('174.129.233.96', 22)) 
{
	# Start ssh2 connection credentials
    if(ssh2_auth_password($ssh, 'masturiano', 'masturianousap1q2w')) 
    {
    	# ssh2 sftp connection
    	$sftp = ssh2_sftp($ssh);
    	# account folder location
    	$dam_ci_details_folder_location = 'data/aopi/feeds_longbow/output/dam_ci_details/latest';
    	# open account folder location
		if ($dir_handler = opendir("ssh2.sftp://$sftp/$dam_ci_details_folder_location/")) 
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
			while ($file = readdir($dir_handler)) 
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
			    	#file name
			    	$filename = $file;
			    	?>
			    		<td><?=$filename;?></td>
			    	<?php
			    	# file info
			    	$file_info = "ssh2.sftp://$sftp/$dam_ci_details_folder_location/$file";
			    	# file size
			    	$file_size = filesize($file_info);
			    	# file created
			    	$file_created = filemtime($file_info);
			    	# file date created
			    	$file_date_created = date('F d, Y',($file_created));
			    	# file time created
			    	$file_time_created = date('h:i:s A',($file_created));
			    	# file line count
			    	$file_line_count = 0;
					$file_handler = fopen($file_info, "r");
					while(!feof($file_handler))
					{
						$line = fgets($file_handler);
						$file_line_count++;
					}
					fclose($file_handler);
					if($file_size == '0 bytes')
					{
						$file_line_count = 0;
					}
					else
					{
						$file_line_count = (int)$file_line_count - 1;
					}

			    	?>
			    		<td><?=formatSizeUnits($file_size);?></td>
			    		<td><?=$file_date_created;?></td>
			    		<td><?=$file_time_created;?></td>
			    		<td><?=$file_line_count;?></td>
			    	<?php
					?>
			    	</tr>
			    	<?php
				}
			}
			?>
				</table>
			<?php
		}
		else
		{
			echo "Failed to open the directory.";
    		echo "<br/>";
		}
	}
	else
	{
		echo "Failed to connect using the account.";
	}
}
else
{
	echo "Failed to connect to remote server.";
}

?>