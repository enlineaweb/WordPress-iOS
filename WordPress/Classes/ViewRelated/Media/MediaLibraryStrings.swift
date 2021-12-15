// MARK: - Strings specific to media pickers launched from the Media Library
extension String {
    static var takePhotoOrVideo: String {
        return AppLocalizedString("Take Photo or Video", comment: "Menu option for taking an image or video with the device's camera.")
    }

    static var importFromPhotoLibrary: String {
        return AppLocalizedString("Choose from My Device", comment: "Menu option for selecting media from the device's photo library.")
    }
}
