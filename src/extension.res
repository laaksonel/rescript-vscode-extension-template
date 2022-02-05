
let activate = (context) => {
  let cmd = "extension-template.helloWorld"
  let showMessage = (msg) => Window.showInformationMessage(msg, [])
  let disposable = Commands.registerCommand(cmd, () => showMessage("Hello World!"))

  ExtensionContext.subscriptions(context)
  -> Js.Array.push(disposable)
}
