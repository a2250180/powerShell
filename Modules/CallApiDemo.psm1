function QueryWebUrl
{
	param(
	 [Parameter()]
	 [string]$mode,

	 [Parameter()]
	 [string]$key
	)
  $mainUrl = "***"
	$url = "$($mainUrl)/$($mode)/$($key)"
	$data = Invoke-RestMethod $url
	write-host $$data
}
