foreach ($cmdlet in (Get-ChildItem -Path $PSScriptRoot\Cmdlet, $PSScriptRoot\Function -Filter *.ps1)) {
	. $cmdlet.FullName
}
