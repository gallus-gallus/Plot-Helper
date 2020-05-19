//
//  storage.swift
//  Plot Helper
//
//  Created by anyll on 5/18/20.
//  Copyright © 2020 Anyll Markevich. All rights reserved.
//

import UIKit

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
        var coverPlant: Int
        var coverLitter: Int
        var coverCheatgrassLitter: Int
        var coverGround: Int
    }
    static var listOfPoints = [point]()
    static var listOfSamples = [sample]()
}
