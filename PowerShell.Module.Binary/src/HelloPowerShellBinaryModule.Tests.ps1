#Requires -Module @{ ModuleName = 'Pester'; ModuleVersion = '5.3' }

BeforeAll {
	Import-Module $PSScriptRoot/../bin/Debug/net6.0/HelloPowerShellBinaryModule.psd1 -Force
}

Describe 'sample' {
	It 'gets the module' {
		Get-Module -Name HelloPowerShellBinaryModule | Should -HaveCount 1
	}
}
