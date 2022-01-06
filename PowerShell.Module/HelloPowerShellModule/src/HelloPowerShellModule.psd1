@{
	ModuleVersion = '0.0.0'

	RootModule = 'HelloPowerShellModule.psm1'
	NestedModules = @(
		'HelloPowerShellModule.Binary.dll'
	)

	PrivateData = @{
		PSData = @{
			LicenseUri   = 'https://github.com/matt9ucci/HelloPowerShellModule/blob/master/LICENSE'
			ProjectUri   = 'https://github.com/matt9ucci/HelloPowerShellModule'
			ReleaseNotes = 'Initial release'
		}
	}

	GUID = '12345678-9abc-def0-1234-56789abcdef0'

	Author    = 'Masatoshi Higuchi'
	Copyright = '(c) now-yyyy Masatoshi Higuchi. All rights reserved.'
}
