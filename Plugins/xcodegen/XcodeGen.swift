import Foundation
import PackagePlugin

@main
struct XcodeGen: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) throws {
        let tool = try context.tool(named: "xcodegen")
        let toolExec = URL(fileURLWithPath: tool.path.string)
        let process = try Process.run(toolExec, arguments: arguments)
        process.waitUntilExit()
    }
}
