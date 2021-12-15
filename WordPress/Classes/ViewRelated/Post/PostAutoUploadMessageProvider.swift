import Foundation

class PostAutoUploadMessageProvider: AutoUploadMessageProvider {

    // MARK: - Cancelling

    static let changesWillNotBePublished = AppLocalizedString("We won't publish these changes.",
                                                             comment: "Title for notice displayed on canceling auto-upload published post")
    static let changesWillNotBeSaved = AppLocalizedString("We won't save the latest changes to your draft.",
                                                         comment: "Title for notice displayed on canceling auto-upload of a draft post")
    static let changesWillNotBeScheduled = AppLocalizedString("We won't schedule these changes.",
                                                             comment: "Title for notice displayed on canceling auto-upload of a scheduled post")
    static let changesWillNotBeSubmitted = AppLocalizedString("We won't submit these changes for review.",
                                                             comment: "Title for notice displayed on canceling auto-upload pending post")

    // MARK: - Online

    static let onlineUploadFailure = AppLocalizedString("Post failed to upload",
                                                              comment: "Title of notification displayed when a post has failed to upload.")

    // MARK: - Offline: First Try

    static let offlineDraftFailureFirstTry = AppLocalizedString("We'll save your draft when your device is back online.",
                                                               comment: "Text displayed in notice after the app fails to upload a draft.")
    static let offlinePrivateFailureFirstTry = AppLocalizedString("We'll publish your private post when your device is back online.",
                                                                 comment: "Text displayed in notice after the app fails to upload a private post.")
    static let offlinePublishFailureFirstTry = AppLocalizedString("We'll publish the post when your device is back online.",
                                                                 comment: "Text displayed in notice after a post if published while offline.")
    static let offlineScheduledFailureFirstTry = AppLocalizedString("We'll schedule your post when your device is back online.",
                                                                   comment: "Text displayed after the app fails to upload a scheduled post.")
    static let offlineSubmitFailureFirstTry = AppLocalizedString("We'll submit your post for review when your device is back online.",
                                                                comment: "Text displayed in notice after the app fails to upload a post, it will attempt to upload it later.")

    // MARK: - Offline: Retry

    static let onlineDefaultFailureRetry = AppLocalizedString("We couldn't complete this action, but we'll try again later.",
                                                             comment: "Text displayed after the app fails to upload a post, it will attempt to upload it later.")
    static let onlinePublishFailureRetry = AppLocalizedString("We couldn't publish this post, but we'll try again later.",
                                                             comment: "Text displayed in notice after the app fails to upload a post, it will attempt to upload it later.")
    static let onlinePrivateFailureRetry = AppLocalizedString("We couldn't publish this private post, but we'll try again later.",
                                                             comment: "Text displayed after the app fails to upload a private post, it will attempt to upload it later.")
    static let onlineScheduleFailureRetry = AppLocalizedString("We couldn't schedule this post, but we'll try again later.",
                                                              comment: "Text displayed after the app fails to upload a scheduled post, it will attempt to upload it later.")
    static let onlineSubmitFailureRetry = AppLocalizedString("We couldn't submit this post for review, but we'll try again later.",
                                                            comment: "Text displayed in notice after the app fails to upload a post, it will attempt to upload it later.")

    // MARK: - Offline: No Retry

    static let onlineDefaultFailureWithoutRetry = AppLocalizedString("We couldn't complete this action.",
                                                                    comment: "Text displayed after the app fails to upload a post, no new attempt will be made.")
    static let onlinePublishFailureWithoutRetry = AppLocalizedString("We couldn't complete this action, and didn't publish this post.",
                                                                    comment: "Text displayed in notice after the app fails to upload a post, not new attempt will be made.")
    static let onlinePrivateFailureWithoutRetry = AppLocalizedString("We couldn't complete this action, and didn't publish this private post.",
                                                                    comment: "Text displayed after the app fails to upload a private post, no new attempt will be made.")
    static let onlineScheduleFailureWithoutRetry = AppLocalizedString("We couldn't complete this action, and didn't schedule this post.",
                                                                     comment: "Text displayed after the app fails to upload a scheduled post, no new attempt will be made.")
    static let onlineSubmitFailureWithoutRetry = AppLocalizedString("We couldn't complete this action, and didn't submit this post for review.",
                                                                   comment: "Text displayed in notice after the app fails to upload a post, not new attempt will be made.")

    // MARK: - Failed Media

    static let failedMedia = AppLocalizedString("We couldn't upload this media.",
                                               comment: "Text displayed if a media couldnt be uploaded.")
    static let failedMediaForPublish = AppLocalizedString("We couldn't upload this media, and didn't publish the post.",
                                                         comment: "Text displayed if a media couldn't be uploaded for a published post.")
    static let failedMediaForPrivate = AppLocalizedString("We couldn't upload this media, and didn't publish this private post.",
                                                         comment: "Text displayed if a media couldn't be uploaded for a private post.")
    static let failedMediaForScheduled = AppLocalizedString("We couldn't upload this media, and didn't schedule this post.",
                                                           comment: "Text displayed if a media couldn't be uploaded for a scheduled post.")
    static let failedMediaForPending = AppLocalizedString("We couldn't upload this media, and didn't submit this post for review.",
                                                         comment: "Text displayed if a media couldn't be uploaded for a pending post.")
}
