import SwiftUI


public class TeamViewRegistration {
    static var plugItemDict: [String: ((String) -> DkListItem)] = [:]
    static var plugScreenDict: [String: (String, (String) -> DkTabScreen)] = [:]
    
    public static func registerItemPlug(key: String, function: @escaping ((String) -> DkListItem)) {
        plugItemDict[key] = function
    }

    public static func registerScreenPlug(key: String, pair: (String, ((String) -> DkTabScreen))) {
        plugScreenDict[key] = pair
    }

    static func retrieveTabScreenTitle(key: String) -> String {
        return plugScreenDict[key]?.0 ?? "ERROR"
    }

    static func retrieveTabScreen(key: String) -> ((String) -> DkTabScreen) {
        return plugScreenDict[key]?.1 ?? defaultErrorPlugTabScreen
    }

    static func retrieveItem(key: String) -> ((String) -> DkListItem) {
        return plugItemDict[key] ?? defaultErrorPlugItem
    }


    static let defaultErrorPlugItem: (String) -> DkListItem = { _ in
        return DkListItem(content: AnyView(DefaultErrorDkListItem()))
    }
    
    static let defaultErrorPlugTabScreen: (String) -> DkTabScreen = { _ in
        return DkTabScreen(content: AnyView(DefaultErrorDkTabScreen()))
    }
}

