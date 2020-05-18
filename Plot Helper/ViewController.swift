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
    }
    func pointToString(point: storage.point) -> String{
        let string = "plot \(point.plot), direction \(point.direction), distance \(point.distance), row \(point.row), column \(point.column), cover \(point.cover)"
        return string
    }
    func addActions(){
        addPoint(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
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

