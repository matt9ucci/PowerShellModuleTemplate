namespace ModuleName.Cmdlet;

[Cmdlet(Verbs.HelloWorld, "HelloWorld")]
public class HelloWorldCmdlet : System.Management.Automation.Cmdlet {

	[Parameter(Position = 0, Mandatory = true)]
	public string Message { get; init; } = string.Empty;

	protected override void ProcessRecord() {
		WriteObject($"Hello World {Message}");
	}
}
