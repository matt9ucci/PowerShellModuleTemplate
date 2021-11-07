using System.Management.Automation.Provider;

namespace HelloWorldProvider.Provider;

/// <summary>
/// PowerShell provider.
/// </summary>
/// <remarks>
/// HelloWorld PowerShell provider.
/// </remarks>
[CmdletProvider("HelloWorld", ProviderCapabilities.None)]
public class HelloWorldProvider : NavigationCmdletProvider {

	#region override DriveCmdletProvider

	protected override Collection<PSDriveInfo> InitializeDefaultDrives() {
		var drive = new PSDriveInfo(
			"HelloWorld",
			ProviderInfo,
			string.Empty,
			"HelloWorld PSDrive",
			null
		);

		return new Collection<PSDriveInfo> { drive };
	}

	protected override PSDriveInfo NewDrive(PSDriveInfo drive) {
		return new HelloWorldDriveInfo(drive);
	}

	#endregion

	#region override ItemCmdletProvider

	protected override bool IsValidPath(string path) {
		throw new PSNotImplementedException();
	}

	#endregion
}

class HelloWorldDriveInfo : PSDriveInfo {
	internal HelloWorldDriveInfo(PSDriveInfo driveInfo) : base(driveInfo) {
	}
}
