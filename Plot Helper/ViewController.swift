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
    func addPoint(_: storage.point){
        
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
    }
}

