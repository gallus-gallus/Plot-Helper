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
    @IBOutlet weak var plot: UISegmentedControl!
    @IBAction func plotChanged(_ sender: Any) {
    }
    @IBOutlet weak var direction: UISegmentedControl!
    @IBAction func directionChanged(_ sender: Any) {
    }
    @IBOutlet weak var distance: UISegmentedControl!
    @IBAction func distanceChanged(_ sender: Any) {
    }
    @IBOutlet weak var cover: UISegmentedControl!
    @IBAction func coverChanged(_ sender: Any) {
    }
    @IBOutlet weak var input: UITextField!
    @IBAction func inputEdited(_ sender: Any) {
    }
    @IBOutlet weak var autoSwitch: UISwitch!
    @IBAction func autoSwitchChanged(_ sender: Any) {
    }
    @IBOutlet weak var fractional: UISegmentedControl!
    @IBAction func fractionalChanged(_ sender: Any) {
    }
    @IBOutlet weak var addEdit: UIButton!
    @IBAction func addEditPressed(_ sender: Any) {
    }
}

