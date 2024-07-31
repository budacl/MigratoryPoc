public class PushUpdater {

	let client = MigratoryDataClient()
	let listener = Listener()

	public init() {

	}

	public func start() {
		print("--> \(type(of: self)).\(#function) || START")

		client?.setLogLevel(.LOG_TRACE)
		client?.setEncryption(false)
		client?.setEntitlementToken("some-token")

		client?.setListener(listener)

		client?.setServers([
			"127.0.0.1:8800"
		])

		client?.subscribe([
			"/server/status"
		])

		client?.connect()
	}

	class Listener: NSObject, MigratoryDataListener {

		func onMessage(_ message: MigratoryDataMessage?) {
			print("--> \(type(of: self)).\(#function) || message: \(message)")
		}

		func onStatus(_ status: String?, info: String?) {
			print("--> \(type(of: self)).\(#function) || status: \(status) || info: \(info)")
		}


	}

}
