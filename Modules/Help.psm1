function help
{
	$allScript = @("QueryWebUrl", "QueryAllWebUrlKey")
	ForEach ($script in $allScript)
	{
		$output = $output + $script + "`r`n"
	}
	write-host $output
}
