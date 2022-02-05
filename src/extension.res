open VSCode

let activate = (context) => {
  let cmd = "rescript-vscode-extension-template.helloWorld"
  let showMessage = (msg) => Window.showInformationMessage(msg, [])
  let disposable = Commands.registerCommand(cmd, () => showMessage("Hello World!"))

  ExtensionContext.subscriptions(context)
  |> Js.Array.push(disposable)
}
