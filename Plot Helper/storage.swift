//
//  storage.swift
//  Plot Helper
//
//  Created by anyll on 5/18/20.
//  Copyright © 2020 Anyll Markevich. All rights reserved.
//

import UIKit

// MARK: - Storage Class

class storage: NSObject {
    struct point {
        var plot: Int
        var direction: Int
        var distance: Int
        var row: Int
        var column: Int
        var cover: Int
    }
    struct sample {
        var plot: Int
        var direction: Int
        var distance: Int
        var coverCheatgrass: Int
        var coverCheatgrassLitter: Int
        var coverGround: Int
        var coverLitter: Int
        var coverPlant: Int
    }
    enum contentTypes {
        case Default
        case UnburnedGround
        case BurnedGround
        case UnburnedBush
        case AliveBurnedBush
        case DeadBurnedBush
        case ScorchedGround
        case ScorchedBush
    }
    struct contents {
        var plot: Int
        var direction: Int
        var distance: Int
        var contents: contentTypes
    }
    static var listOfPoints = [point]()
    static var listOfSamples = [sample]()
    static var listOfContents = [contents]()
    
    static func openFileNamed(_ fileName: String, type: String, write: String) -> String?{  // Open a file and read or write to it
    // Write "w" to write, adn "r" read in type
    var returnText: String? = nil  /// assume output is nil
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let filePlacement = dir.appendingPathComponent(fileName)
            //writing
            if type == "w"{
                do {
                    try write.write(to: filePlacement, atomically: false, encoding: .utf8)
                    returnText = "[text not used]"
                    print("File named \(fileName) written to.")
                }
                catch {/* error handling here */}
            }
            //reading
            if type == "r"{
                do {
                    returnText = try String(contentsOf: filePlacement, encoding: .utf8)
                    print("File named \(fileName) read.")
                }
                catch {/* error handling here */}
            }
        }
    return returnText
    }
}
// MARK: - Extentsions

extension String {
    
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }
    
    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
    
}
extension String {
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
    func removingDots() -> String {
        return components(separatedBy: ".").joined()
    }
}

extension String{
    var removeProblemCharacters: String{  // remouve characters that could compromise files in saving colors file
        let originalString = self  // save the value of the string in "string".function
        var stringList = [String]()  // create a list
        for i in originalString{  // turn sting into list of sting characters
            stringList.append(String(i))
        }
        var it = 0  // iteration saver
        for i in stringList{  // for every character
            if i == "|" || i == "/"{  // if a character is problematic
                stringList.remove(at: it)  // remouve it at iteration
                it -= 1  // decrese iterations as there are fewer items now.
            }
            it += 1  // increase iterations
        }
        var returnString = ""
        for i in stringList{  // create a final clean string
            returnString += i
        }
        return returnString  // return it
    }
}

/*extension UIApplication {
    class var topViewController: UIViewController? { return getTopViewController() }
    private class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController { return getTopViewController(base: nav.visibleViewController) }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController { return getTopViewController(base: selected) }
        }
        if let presented = base?.presentedViewController { return getTopViewController(base: presented) }
        return base
    }

    private class func _share(_ data: [Any],
                              applicationActivities: [UIActivity]?,
                              setupViewControllerCompletion: ((UIActivityViewController) -> Void)?) {
        let activityViewController = UIActivityViewController(activityItems: data, applicationActivities: nil)
        setupViewControllerCompletion?(activityViewController)
        UIApplication.topViewController?.present(activityViewController, animated: true, completion: nil)
    }

    class func share(_ data: Any...,
                     applicationActivities: [UIActivity]? = nil,
                     setupViewControllerCompletion: ((UIActivityViewController) -> Void)? = nil) {
        _share(data, applicationActivities: applicationActivities, setupViewControllerCompletion: setupViewControllerCompletion)
    }
    class func share(_ data: [Any],
                     applicationActivities: [UIActivity]? = nil,
                     setupViewControllerCompletion: ((UIActivityViewController) -> Void)? = nil) {
        _share(data, applicationActivities: applicationActivities, setupViewControllerCompletion: setupViewControllerCompletion)
    }
}*/
