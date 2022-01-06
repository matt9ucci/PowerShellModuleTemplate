#Requires -Module @{ ModuleName = 'Pester'; ModuleVersion = '5.3' }

BeforeAll {
	. $PSScriptRoot\Initialize-PesterEnvironment.ps1
}

Describe 'Initialize-PesterEnvironment' {
	It 'imports the HelloPowerShellModule module' {
		$module = Get-Module -Name HelloPowerShellModule

		$module.Name | Should -Be HelloPowerShellModule
		$module.ModuleType | Should -Be Script
	}
}
