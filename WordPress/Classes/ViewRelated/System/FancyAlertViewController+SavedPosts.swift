import UIKit
import Gridicons

extension FancyAlertViewController {
    typealias ButtonConfig = FancyAlertViewController.Config.ButtonConfig

    private struct Strings {
        static let titleText = AppLocalizedString("Save Posts for Later", comment: "Title of alert informing users about the Reader Save for Later feature.")
        static let bodyText = AppLocalizedString("Save this post, and come back to read it whenever you'd like. It will only be available on this device — saved posts don't sync to other devices.", comment: "Body text of alert informing users about the Reader Save for Later feature.")
        static let okTitle = AppLocalizedString("OK", comment: "OK Button title shown in alert informing users about the Reader Save for Later feature.")
    }

    static func presentReaderSavedPostsAlertControllerIfNecessary(from origin: UIViewController & UIViewControllerTransitioningDelegate) {
        if !UserDefaults.standard.savedPostsPromoWasDisplayed {
            UserDefaults.standard.savedPostsPromoWasDisplayed = true

            let controller = FancyAlertViewController.makeReaderSavedPostsAlertController()
            controller.modalPresentationStyle = .custom
            controller.transitioningDelegate = origin

            origin.present(controller, animated: true)
        }
    }

    static func makeReaderSavedPostsAlertController() -> FancyAlertViewController {
        let dismissButton = ButtonConfig(Strings.okTitle) { controller, _ in
            controller.dismiss(animated: true)
        }

        let image = UIImage(named: "wp-illustration-mobile-save-for-later")

        let config = FancyAlertViewController.Config(titleText: Strings.titleText,
                                                     bodyText: Strings.bodyText,
                                                     headerImage: image,
                                                     dividerPosition: .top,
                                                     defaultButton: dismissButton,
                                                     cancelButton: nil,
                                                     dismissAction: {})

        let controller = FancyAlertViewController.controllerWithConfiguration(configuration: config)
        return controller
    }
}

// MARK: - User Defaults

extension UserDefaults {
    private enum Keys: String {
        case savedPostsPromoWasDisplayed = "SavedPostsV1PromoWasDisplayed"
    }

    var savedPostsPromoWasDisplayed: Bool {
        get {
            return bool(forKey: Keys.savedPostsPromoWasDisplayed.rawValue)
        }
        set {
            set(newValue, forKey: Keys.savedPostsPromoWasDisplayed.rawValue)
        }
    }
}
