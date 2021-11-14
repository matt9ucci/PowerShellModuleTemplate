#Requires -Module @{ ModuleName = 'Pester'; ModuleVersion = '5.3' }

BeforeAll {
	Import-Module $PSScriptRoot/../HelloPowerShellScriptModule -Force
}

Describe 'sample' {
	It 'gets the module' {
		Get-Module -Name HelloPowerShellScriptModule | Should -HaveCount 1
	}
}
