//
//  ViewController.swift
//  Plot Helper
//
//  Created by anyll on 5/15/20.
//  Copyright © 2020 Anyll Markevich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: - Functions
    func addPoint(at: storage.point){
        storage.listOfPoints.append(at)
        print("Added point \(pointToString(point: at)).")
        print("Added point \(pointToGoodString(point: at)).")
    }
    func pointToString(point: storage.point) -> String{
        let string = "plot \(point.plot), direction \(point.direction), distance \(point.distance), row \(point.row), column \(point.column), cover \(point.cover)"
        return string
    }
    func pointToGoodString(point: storage.point) -> String{
        let string = "plot \(point.plot), direction \(direction.titleForSegment(at: point.direction-1) ?? "nil"), distance \(distance.titleForSegment(at: point.direction-1) ?? "nil"), row \(point.row), column \(point.column), cover \(cover.titleForSegment(at: point.direction-1) ?? "nil")"
        return string
    }
    func figureSamples(){
        var sampleList = [storage.sample]()
        var iCount = 0
        var jCount = 0
        var matchFound = false
        for i in storage.listOfPoints{
            for j in sampleList{
                if i.plot == j.plot && i.direction == j.direction && i.distance == j.distance{
                    matchFound = true
                    let coverType = i.cover
                    if coverType == 1{sampleList[jCount].coverCheatgrass += 1}
                    if coverType == 2{sampleList[jCount].coverPlant += 1}
                    if coverType == 3{sampleList[jCount].coverLitter += 1}
                    if coverType == 4{sampleList[jCount].coverCheatgrassLitter += 1}
                    if coverType == 5{sampleList[jCount].coverGround += 1}
                }
                jCount += 1
            }
            if matchFound == false{
                let coverType = i.cover
                if coverType == 1{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 1, coverPlant: 0, coverLitter: 0, coverCheatgrassLitter: 0, coverGround: 0))
                }else if coverType == 2{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverPlant: 1, coverLitter: 0, coverCheatgrassLitter: 0, coverGround: 0))
                }else if coverType == 3{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverPlant: 0, coverLitter: 1, coverCheatgrassLitter: 0, coverGround: 0))
                }else if coverType == 4{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverPlant: 0, coverLitter: 0, coverCheatgrassLitter: 1, coverGround: 0))
                }else if coverType == 5{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverPlant: 0, coverLitter: 0, coverCheatgrassLitter: 0, coverGround: 1))
                }
            }
            matchFound = false
            iCount += 1
            jCount = 0
        }
        storage.listOfSamples = sampleList
        print("Figured Samples")
        print(sampleList)
    }
    func addActions(){
        addPoint(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
        figureSamples()
    }
    
    // MARK: - Connections and actions
    
    @IBOutlet weak var plot: UISegmentedControl!
    @IBAction func plotChanged(_ sender: Any) {
    }
    @IBOutlet weak var direction: UISegmentedControl!
    @IBAction func directionChanged(_ sender: Any) {
    }
    @IBOutlet weak var distance: UISegmentedControl!
    @IBAction func distanceChanged(_ sender: Any) {
    }
    @IBOutlet weak var row: UISegmentedControl!
    @IBAction func rowChanged(_ sender: Any) {
    }
    @IBOutlet weak var column: UISegmentedControl!
    @IBAction func columnChanged(_ sender: Any) {
    }
    @IBOutlet weak var cover: UISegmentedControl!
    @IBAction func coverChanged(_ sender: Any) {
    }
    @IBOutlet weak var autoSwitch: UISwitch!
    @IBAction func autoSwitchChanged(_ sender: Any) {
    }
    @IBOutlet weak var addEdit: UIButton!
    @IBAction func addEditChanged(_ sender: Any) {
        addActions()
    }
}

