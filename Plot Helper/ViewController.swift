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
        updateOnChange()
    }
    // MARK: - Variables
    var currentPointIndex: Int? = nil
    var add = true
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
    
    
    
    //Function to figure out samples from points
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
        updateOnChange()
        if add == true{
            addPoint(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
            updateOnChange()
        }else{
            let currentPoint = pointExists(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
            storage.listOfPoints[currentPoint!].cover = cover.selectedSegmentIndex+1
            updateOnChange()
        }
    }
    
    func sampleExists(at: storage.sample) -> Int?{
        let sample = at
        figureSamples()
        var iterations = 0
        var match = false
        for i in storage.listOfSamples{
            if i.plot == sample.plot && i.direction == sample.direction && i.distance == sample.distance{
                match = true
                print("Found sample at plot \(iterations).")
                return iterations
            }
            iterations += 1
        }
        if match == false{
            return nil
        }
    }
    func numberOfPointsIn(sample: storage.sample) -> Int?{
        if sampleExists(at: sample) != nil{
            let s = storage.listOfSamples[sampleExists(at: sample)!]
            let sum = s.coverCheatgrass + s.coverCheatgrassLitter + s.coverGround + s.coverLitter + s.coverPlant
            print("Found \(sum) points in sample")
            return sum
        }else{
            print("Sample non-existant.")
            return nil
        }
    }
    func currentSample(plot: Int, direction: Int, distance: Int) -> storage.sample{
        return storage.sample(plot: plot, direction: direction, distance: distance, coverCheatgrass: 0, coverPlant: 0, coverLitter: 0, coverCheatgrassLitter: 0, coverGround: 0)
    }
    
    func updateOnChange(){
        let currentSamp = currentSample(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1)
        let numberOfPoints: Int? = numberOfPointsIn(sample: currentSamp)
        if numberOfPoints != nil{
            sampleLabel.text = String(numberOfPoints!)
        }else{
            sampleLabel.text = "0"
        }
        let currentPoint: Int? = pointExists(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
        currentPointIndex = currentPoint
        if currentPoint != nil{
            print(currentPoint!)
            addEdit.setImage(UIImage(named: "Edit"), for: .normal)
            add = false
        }else{
            addEdit.setImage(UIImage(named: "Add"), for: .normal)
            add = true
        }
    }
    
    func pointExists(at: storage.point) -> Int?{
        let point = at
        var iterations = 0
        for i in storage.listOfPoints{
            if i.plot == point.plot && i.direction == point.direction && i.distance == point.distance && i.row == point.row && i.column == point.column{
                print("Found point at \(iterations).")
                return iterations
            }
            iterations += 1
        }
        print("Point non-exsitant.")
        return nil
    }
    
    // MARK: - Connections and actions
    
    @IBOutlet weak var plot: UISegmentedControl!
    @IBAction func plotChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var direction: UISegmentedControl!
    @IBAction func directionChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var distance: UISegmentedControl!
    @IBAction func distanceChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var row: UISegmentedControl!
    @IBAction func rowChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var column: UISegmentedControl!
    @IBAction func columnChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var cover: UISegmentedControl!
    @IBAction func coverChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var autoSwitch: UISwitch!
    @IBAction func autoSwitchChanged(_ sender: Any) {
        updateOnChange()
    }
    @IBOutlet weak var addEdit: UIButton!
    @IBAction func addEditChanged(_ sender: Any) {
        addActions()
    }
    @IBOutlet weak var sampleLabel: UILabel!
}

