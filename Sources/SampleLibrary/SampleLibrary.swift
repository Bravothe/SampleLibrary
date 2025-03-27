import Foundation

// Protocol for showing the popup
public protocol PopupPresentable {
    func showPopup(with message: String)
}

public struct SampleLibrary {
    public var text = "Hello I am Allan Thembo Ndungu"
    
    public init() {}
    
    public func HelloToYou() -> String {
        return "Hello to You"
    }
    
    // Function to combine the messages and trigger the popup
    public func showMessage(delegate: PopupPresentable) {
        let combinedMessage = "\(text) \(HelloToYou())"
        delegate.showPopup(with: combinedMessage)
    }
}
