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
        //let _ = storage.openFileNamed("listSave", type: "w", write: "1,1,1,1,1,3,!")
        let decodedListString = """
4,1,1,1,1,5
4,1,1,1,2,5
4,1,1,1,3,4
4,1,1,1,4,3
4,1,1,1,5,5
4,1,1,2,1,5
4,1,1,2,2,4
4,1,1,2,3,3
4,1,1,2,4,4
4,1,1,2,5,3
4,1,1,3,1,3
4,1,1,3,2,3
4,1,1,3,3,4
4,1,1,3,4,5
4,1,1,3,5,5
4,1,1,4,1,3
4,1,1,4,2,4
4,1,1,4,3,5
4,1,1,4,4,5
4,1,1,4,5,5
4,1,1,5,1,5
4,1,1,5,2,5
4,1,1,5,3,5
4,1,1,5,4,5
4,1,1,5,5,5
4,1,2,1,1,4
4,1,2,1,2,4
4,1,2,1,3,4
4,1,2,1,4,4
4,1,2,1,5,4
4,1,2,2,1,5
4,1,2,2,2,5
4,1,2,2,3,4
4,1,2,2,4,5
4,1,2,2,5,4
4,1,2,3,1,5
4,1,2,3,2,5
4,1,2,3,3,3
4,1,2,3,4,4
4,1,2,3,5,5
4,1,2,4,1,5
4,1,2,4,2,4
4,1,2,4,3,4
4,1,2,4,4,4
4,1,2,4,5,5
4,1,2,5,1,5
4,1,2,5,2,4
4,1,2,5,3,4
4,1,2,5,4,4
4,1,2,5,5,3
4,1,3,1,1,5
4,1,3,1,2,4
4,1,3,1,3,5
4,1,3,1,4,5
4,1,3,1,5,5
4,1,3,2,1,5
4,1,3,2,2,4
4,1,3,2,3,4
4,1,3,2,4,3
4,1,3,2,5,5
4,1,3,3,1,5
4,1,3,3,2,5
4,1,3,3,3,4
4,1,3,3,4,5
4,1,3,3,5,5
4,1,3,4,1,4
4,1,3,4,2,5
4,1,3,4,3,5
4,1,3,4,4,4
4,1,3,4,5,5
4,1,3,5,1,5
4,1,3,5,2,5
4,1,3,5,3,3
4,1,3,5,4,3
4,1,3,5,5,3
4,1,4,1,1,4
4,1,5,1,1,4
4,1,5,1,2,4
4,1,5,1,3,3
4,1,5,1,4,5
4,1,5,1,5,5
4,1,5,2,1,3
4,1,5,2,2,3
4,1,5,2,3,3
4,1,5,2,4,5
4,1,5,2,5,5
4,1,5,3,1,3
4,1,5,3,2,3
4,1,5,3,3,3
4,1,5,3,4,3
4,1,5,3,5,5
4,1,5,4,1,3
4,1,5,4,2,3
4,1,5,4,3,3
4,1,5,4,4,3
4,1,5,4,5,5
4,1,5,5,1,3
4,1,5,5,2,3
4,1,5,5,3,3
4,1,5,5,4,3
4,1,5,5,5,4
4,2,1,1,1,4
4,2,1,1,2,4
4,2,1,1,3,4
4,2,1,1,4,4
4,2,1,1,5,4
4,2,1,2,1,4
4,2,1,2,2,4
4,2,1,2,3,4
4,2,1,2,4,4
4,2,1,2,5,4
4,2,1,3,1,4
4,2,1,3,2,4
4,2,1,3,3,4
4,2,1,3,4,4
4,2,1,3,5,4
4,2,1,4,1,4
4,2,1,4,2,4
4,2,1,4,3,4
4,2,1,4,4,4
4,2,1,4,5,4
4,2,1,5,1,4
4,2,1,5,2,4
4,2,1,5,3,4
4,2,1,5,4,4
4,2,1,5,5,4
4,2,3,1,1,5
4,2,3,1,2,3
4,2,3,1,3,3
4,2,3,1,4,1
4,2,3,1,5,5
4,2,3,2,1,5
4,2,3,2,2,4
4,2,3,2,3,4
4,2,3,2,4,5
4,2,3,2,5,3
4,2,3,3,1,4
4,2,3,3,2,4
4,2,3,3,3,3
4,2,3,3,4,4
4,2,3,3,5,4
4,2,3,4,1,4
4,2,3,4,2,5
4,2,3,4,3,4
4,2,3,4,4,3
4,2,3,4,5,3
4,2,3,5,1,4
4,2,3,5,2,4
4,2,3,5,3,5
4,2,3,5,4,3
4,2,3,5,5,3
4,2,5,1,1,4
4,2,5,1,2,4
4,2,5,1,3,4
4,2,5,1,4,3
4,2,5,1,5,4
4,2,5,2,1,3
4,2,5,2,2,4
4,2,5,2,3,3
4,2,5,2,4,4
4,2,5,2,5,4
4,2,5,3,1,4
4,2,5,3,2,4
4,2,5,3,3,5
4,2,5,3,4,4
4,2,5,3,5,4
4,2,5,4,1,3
4,2,5,4,2,5
4,2,5,4,3,5
4,2,5,4,4,5
4,2,5,4,5,5
4,2,5,5,1,5
4,2,5,5,2,5
4,2,5,5,3,5
4,2,5,5,4,5
4,2,5,5,5,5
1,1,4,1,1,4
4,1,4,1,2,4
4,1,4,1,3,4
4,1,4,1,4,5
4,1,4,1,5,5
4,1,4,2,1,4
4,1,4,2,2,4
4,1,4,2,3,5
4,1,4,2,4,5
4,1,4,2,5,5
1,1,4,1,2,4
1,1,4,1,3,4
1,1,4,1,4,5
1,1,4,1,5,5
1,1,4,2,1,4
1,1,4,2,2,4
1,1,4,2,3,5
1,1,4,2,4,5
1,1,4,2,5,5
1,1,4,3,1,5
1,1,4,3,2,4
1,1,4,3,3,5
1,1,4,3,4,5
1,1,4,3,5,5
1,1,4,4,1,4
1,1,4,4,2,5
1,1,4,4,3,5
1,1,4,4,4,5
1,1,4,4,5,5
1,1,4,5,1,5
1,1,4,5,2,5
1,1,4,5,3,5
1,1,4,5,4,5
1,1,4,5,5,4
1,1,2,1,1,4
1,1,2,1,2,4
1,1,2,1,3,4
1,1,2,1,4,4
1,1,2,1,5,4
1,1,2,2,1,5
1,1,2,2,2,5
1,1,2,2,3,4
1,1,2,2,4,5
1,1,2,2,5,4
1,1,2,3,1,5
1,1,2,3,2,5
1,1,2,3,3,3
1,1,2,3,4,4
1,1,2,3,5,5
1,1,2,4,1,5
1,1,2,4,2,4
1,1,2,4,3,4
1,1,2,4,4,4
1,1,2,4,5,5
1,1,2,5,1,5
1,1,2,5,2,4
1,1,2,5,3,4
1,1,2,5,4,4
1,1,2,5,5,3
4,3,1,1,1,5
4,3,1,1,2,5
4,3,1,1,3,3
4,3,1,1,4,3
4,3,1,1,5,3
4,3,1,2,1,4
4,3,1,2,2,5
4,3,1,2,3,3
4,3,1,2,4,3
4,3,1,2,5,3
4,3,1,3,1,3
4,3,1,3,2,4
4,3,1,3,3,5
4,3,1,3,4,5
4,3,1,3,5,5
4,3,1,4,1,4
4,3,1,4,2,5
4,3,1,4,3,4
4,3,1,4,4,3
4,3,1,4,5,3
4,3,1,5,1,5
4,3,1,5,2,5
4,3,1,5,3,5
4,3,1,5,4,3
4,3,1,5,5,3
4,3,3,1,1,3
4,3,3,1,2,4
4,3,3,1,3,5
4,3,3,1,4,4
4,3,3,1,5,4
4,3,3,2,1,3
4,3,3,2,2,4
4,3,3,2,3,5
4,3,3,2,4,5
4,3,3,2,5,3
4,3,3,3,1,3
4,3,3,3,2,5
4,3,3,3,3,5
4,3,3,3,4,5
4,3,3,3,5,5
4,3,3,4,1,5
4,3,3,4,2,5
4,3,3,4,3,3
4,3,3,4,4,4
4,3,3,4,5,5
4,3,3,5,1,5
4,3,3,5,2,4
4,3,3,5,3,5
4,3,3,5,4,4
4,3,3,5,5,4
4,3,5,1,1,3
4,3,5,1,2,4
4,3,5,1,3,4
4,3,5,1,4,3
4,3,5,1,5,4
4,3,5,2,1,4
4,3,5,2,2,3
4,3,5,2,3,5
4,3,5,2,4,5
4,3,5,2,5,5
4,3,5,3,1,4
4,3,5,3,2,4
4,3,5,3,3,5
4,3,5,3,4,3
4,3,5,3,5,3
4,3,5,4,1,3
4,3,5,4,2,3
4,3,5,4,3,5
4,3,5,4,4,3
4,3,5,4,5,3
4,3,5,5,1,5
4,3,5,5,2,4
4,3,5,5,3,4
4,3,5,5,4,3
4,3,5,5,5,5
4,2,4,1,1,3
4,2,4,1,2,5
4,2,4,1,3,4
4,2,4,1,4,3
4,2,4,1,5,4
4,2,4,2,1,4
4,2,4,2,2,4
4,2,4,2,3,5
4,2,4,2,4,5
4,2,4,2,5,5
4,2,4,3,1,4
4,2,4,3,2,5
4,2,4,3,3,5
4,2,4,3,4,5
4,2,4,3,5,4
4,2,4,4,1,4
4,2,4,4,2,5
4,2,4,4,3,5
4,2,4,4,4,5
4,2,4,4,5,4
4,2,4,5,1,3
4,2,4,5,2,3
4,2,4,5,3,5
4,2,4,5,4,5
4,2,4,5,5,3
4,2,2,1,1,4
4,2,2,1,2,4
4,2,2,1,3,4
4,2,2,1,4,3
4,2,2,1,5,5
4,2,2,2,1,5
4,2,2,2,2,5
4,2,2,2,3,3
4,2,2,2,4,4
4,2,2,2,5,5
4,2,2,3,1,4
4,2,2,3,2,3
4,2,2,3,3,4
4,2,2,3,4,5
4,2,2,3,5,4
4,2,2,4,1,3
4,2,2,4,2,5
4,2,2,4,3,3
4,2,2,4,4,3
4,2,2,4,5,4
4,2,2,5,1,5
4,2,2,5,2,5
4,2,2,5,3,5
4,2,2,5,4,3
4,2,2,5,5,5
4,4,1,1,1,4
4,4,1,1,2,3
4,4,1,1,3,3
4,4,1,1,4,5
4,4,1,1,5,5
4,4,1,2,1,5
4,4,1,2,2,5
4,4,1,2,3,5
4,4,1,2,4,5
4,4,1,2,5,3
4,4,1,3,1,5
4,4,1,3,2,5
4,4,1,3,3,4
4,4,1,3,4,5
4,4,1,3,5,4
4,4,1,4,1,3
4,4,1,4,2,3
4,4,1,4,3,5
4,4,1,4,4,3
4,4,1,4,5,4
4,4,1,5,1,5
4,4,1,5,2,5
4,4,1,5,3,3
4,4,1,5,4,3
4,4,1,5,5,4
4,4,3,1,1,4
4,4,3,1,2,5
4,4,3,1,3,3
4,4,3,1,4,5
4,4,3,1,5,3
4,4,3,2,1,5
4,4,3,2,2,3
4,4,3,2,3,3
4,4,3,2,4,3
4,4,3,2,5,4
4,4,3,3,1,3
4,4,3,3,2,3
4,4,3,3,3,3
4,4,3,3,4,3
4,4,3,3,5,3
4,4,3,4,1,3
4,4,3,4,2,3
4,4,3,4,3,3
4,4,3,4,4,3
4,4,3,4,5,5
4,4,3,5,1,3
4,4,3,5,2,4
4,4,3,5,3,4
4,4,3,5,4,4
4,4,3,5,5,4
4,4,5,1,1,4
4,4,5,1,2,3
4,4,5,1,3,3
4,4,5,1,4,5
4,4,5,1,5,4
4,4,5,2,1,3
4,4,5,2,2,5
4,4,5,2,3,4
4,4,5,2,4,3
4,4,5,2,5,4
4,4,5,3,1,4
4,4,5,3,2,5
4,4,5,3,3,5
4,4,5,3,4,4
4,4,5,3,5,4
4,4,5,4,1,4
4,4,5,4,2,5
4,4,5,4,3,4
4,4,5,4,4,4
4,4,5,4,5,4
4,4,5,5,1,3
4,4,5,5,2,4
4,4,5,5,3,5
4,4,5,5,4,5
4,4,5,5,5,4
4,3,4,1,1,5
4,3,4,1,2,5
4,3,4,1,3,5
4,3,4,1,4,5
4,3,4,1,5,3
4,3,4,2,1,5
4,3,4,2,2,3
4,3,4,2,3,4
4,3,4,2,4,5
4,3,4,2,5,3
4,3,4,3,1,4
4,3,4,3,2,3
4,3,4,3,3,3
4,3,4,3,4,5
4,3,4,3,5,5
4,3,4,4,1,4
4,3,4,4,2,3
4,3,4,4,3,3
4,3,4,4,4,5
4,3,4,4,5,4
4,3,4,5,1,4
4,3,4,5,2,5
4,3,4,5,3,3
4,3,4,5,4,3
4,3,4,5,5,5
4,3,2,1,1,3
4,3,2,1,2,5
4,3,2,1,3,3
4,3,2,1,4,5
4,3,2,1,5,5
4,3,2,2,1,5
4,3,2,2,2,5
4,3,2,2,3,3
4,3,2,2,4,3
4,3,2,2,5,5
4,3,2,3,1,5
4,3,2,3,2,4
4,3,2,3,3,5
4,3,2,3,4,3
4,3,2,3,5,4
4,3,2,4,1,4
4,3,2,4,2,5
4,3,2,4,3,4
4,3,2,4,4,4
4,3,2,4,5,5
4,3,2,5,1,5
4,3,2,5,2,5
4,3,2,5,3,5
4,3,2,5,4,3
4,3,2,5,5,3
4,5,1,1,1,3
4,5,1,1,2,4
4,5,1,1,3,5
4,5,1,1,4,5
4,5,1,1,5,5
4,5,1,2,1,5
4,5,1,2,2,3
4,5,1,2,3,3
4,5,1,2,4,5
4,5,1,2,5,5
4,5,1,3,1,5
4,5,1,3,2,3
4,5,1,3,3,3
4,5,1,3,4,5
4,5,1,3,5,5
4,5,1,4,1,3
4,5,1,4,2,5
4,5,1,4,3,4
4,5,1,4,4,5
4,5,1,4,5,3
4,5,1,5,1,5
4,5,1,5,2,5
4,5,1,5,3,1
4,5,1,5,4,4
4,5,1,5,5,4
4,5,3,1,1,5
4,5,3,1,2,5
4,5,3,1,3,5
4,5,3,1,4,4
4,5,3,1,5,4
4,5,3,2,1,5
4,5,3,2,2,1
4,5,3,2,3,5
4,5,3,2,4,5
4,5,3,2,5,5
4,5,3,3,1,3
4,5,3,3,2,3
4,5,3,3,3,5
4,5,3,3,4,5
4,5,3,3,5,1
4,5,3,4,1,3
4,5,3,4,2,3
4,5,3,4,3,3
4,5,3,4,4,3
4,5,3,4,5,4
4,5,3,5,1,4
4,5,3,5,2,4
4,5,3,5,3,5
4,5,3,5,4,4
4,5,3,5,5,4
1,5,3,2,2,1
4,5,5,1,1,4
4,5,5,1,2,3
4,5,5,1,3,3
4,5,5,1,4,4
4,5,5,1,5,4
4,5,5,2,1,5
4,5,5,2,2,1
4,5,5,2,3,4
4,5,5,2,4,4
4,5,5,2,5,3
4,5,5,3,1,5
4,5,5,3,2,1
4,5,5,3,3,4
4,5,5,3,4,4
4,5,5,3,5,4
4,5,5,4,1,1
4,5,5,4,2,4
4,5,5,4,3,5
4,5,5,4,4,5
4,5,5,4,5,5
4,5,5,5,1,4
4,5,5,5,2,5
4,5,5,5,3,5
4,5,5,5,4,5
4,5,5,5,5,4
4,4,4,1,1,5
4,4,4,1,2,4
4,4,4,1,3,5
4,4,4,1,4,5
4,4,4,1,5,5
4,4,4,2,1,5
4,4,4,2,2,5
4,4,4,2,3,4
4,4,4,2,4,5
4,4,4,2,5,5
4,4,4,3,1,4
4,4,4,3,2,5
4,4,4,3,3,5
4,4,4,3,4,5
4,4,4,3,5,5
4,4,4,4,1,5
4,4,4,4,2,3
1,4,4,4,2,3
4,4,4,4,3,5
4,4,4,4,4,3
4,4,4,4,5,5
4,4,4,5,1,5
4,4,4,5,2,5
4,4,4,5,3,5
4,4,4,5,4,4
4,4,4,5,5,5
4,4,2,1,1,5
4,4,2,1,2,5
4,4,2,1,3,3
4,4,2,1,4,3
4,4,2,1,5,3
4,4,2,2,1,4
4,4,2,2,2,3
4,4,2,2,3,3
4,4,2,2,4,3
4,4,2,2,5,3
4,4,2,3,1,5
4,4,2,3,2,4
4,4,2,3,3,3
4,4,2,3,4,3
4,4,2,3,5,3
4,4,2,4,1,3
4,4,2,4,2,4
4,4,2,4,3,5
4,4,2,4,4,5
4,4,2,4,5,3
4,4,2,5,1,5
4,4,2,5,2,4
4,4,2,5,3,5
4,4,2,5,4,3
4,4,2,5,5,5
4,6,1,1,1,3
4,6,1,1,2,3
4,6,1,1,3,3
4,6,1,1,4,3
4,6,1,1,5,3
4,6,1,2,1,4
4,6,1,2,2,3
4,6,1,2,3,3
4,6,1,2,4,3
4,6,1,2,5,3
4,6,1,3,1,3
4,6,1,3,2,3
4,6,1,3,3,3
4,6,1,3,4,3
4,6,1,3,5,3
4,6,1,4,1,4
4,6,1,4,2,3
4,6,1,4,3,4
4,6,1,4,4,4
4,6,1,4,5,4
4,6,1,5,1,3
4,6,1,5,2,3
4,6,1,5,3,4
4,6,1,5,4,4
4,6,1,5,5,4
4,6,3,1,1,5
4,6,3,1,2,5
4,6,3,1,3,4
4,6,3,1,4,3
4,6,3,1,5,5
4,6,3,2,1,3
4,6,3,2,2,5
4,6,3,2,3,5
4,6,3,2,4,3
4,6,3,2,5,4
4,6,3,3,1,5
4,6,3,3,2,4
4,6,3,3,3,3
4,6,3,3,4,3
4,6,3,3,5,5
4,6,3,4,1,3
4,6,3,4,2,4
4,6,3,4,3,5
4,6,3,4,4,4
4,6,3,4,5,5
4,6,3,5,1,3
4,6,3,5,2,3
4,6,3,5,3,3
4,6,3,5,4,4
4,6,3,5,5,5
4,6,5,1,1,4
4,6,5,1,2,4
4,6,5,1,3,4
4,6,5,1,4,4
4,6,5,1,5,4
4,6,5,2,1,4
4,6,5,2,2,4
4,6,5,2,3,4
4,6,5,2,4,4
4,6,5,2,5,4
4,6,5,3,1,4
4,6,5,3,2,4
4,6,5,3,3,4
4,6,5,3,4,4
4,6,5,3,5,4
4,6,5,4,1,4
4,6,5,4,2,4
4,6,5,4,3,4
4,6,5,4,4,4
4,6,5,4,5,4
4,6,5,5,1,4
4,6,5,5,2,4
4,6,5,5,3,4
4,6,5,5,4,4
4,6,5,5,5,4
4,5,4,1,1,4
4,5,4,1,2,5
4,5,4,1,3,3
4,5,4,1,4,5
4,5,4,1,5,4
4,5,4,2,1,3
4,5,4,2,2,3
4,5,4,2,3,3
4,5,4,2,4,5
4,5,4,2,5,4
4,5,4,3,1,5
4,5,4,3,2,5
4,5,4,3,3,3
4,5,4,3,4,3
4,5,4,3,5,3
4,5,4,4,1,5
4,5,4,4,2,3
4,5,4,4,3,5
4,5,4,4,4,5
4,5,4,4,5,5
4,5,4,5,1,3
4,5,4,5,2,4
4,5,4,5,3,4
4,5,4,5,4,5
4,5,4,5,5,5
4,5,2,1,1,3
4,5,2,1,2,3
4,5,2,1,3,3
4,5,2,1,4,3
4,5,2,1,5,3
4,5,2,2,1,3
4,5,2,2,2,3
4,5,2,2,3,3
4,5,2,2,4,3
4,5,2,2,5,3
4,5,2,3,1,5
4,5,2,3,2,3
4,5,2,3,3,5
4,5,2,3,4,3
4,5,2,3,5,4
4,5,2,4,1,4
4,5,2,4,2,5
4,5,2,4,3,4
4,5,2,4,4,4
4,5,2,4,5,5
4,5,2,5,1,4
4,5,2,5,2,5
4,5,2,5,3,3
4,5,2,5,4,4
4,5,2,5,5,3
4,7,1,1,1,3
4,7,1,1,2,3
4,7,1,1,3,4
4,7,1,1,4,3
4,7,1,1,5,5
4,7,1,2,1,5
4,7,1,2,2,3
4,7,1,2,3,5
4,7,1,2,4,3
4,7,1,2,5,5
4,7,1,3,1,4
4,7,1,3,2,4
4,7,1,3,3,5
4,7,1,3,4,5
4,7,1,3,5,5
4,7,1,4,1,4
4,7,1,4,2,4
4,7,1,4,3,5
4,7,1,4,4,5
4,7,1,4,5,5
4,7,1,5,1,5
4,7,1,5,2,5
4,7,1,5,3,3
4,7,1,5,4,5
4,7,1,5,5,5
4,7,3,1,1,5
4,7,3,1,2,5
4,7,3,1,3,4
4,7,3,1,4,5
4,7,3,1,5,4
4,7,3,2,1,3
4,7,3,2,2,5
4,7,3,2,3,5
4,7,3,2,4,4
4,7,3,2,5,4
4,7,3,3,1,5
4,7,3,3,2,5
4,7,3,3,3,4
4,7,3,3,4,5
4,7,3,3,5,4
4,7,3,4,1,5
4,7,3,4,2,3
4,7,3,4,3,3
4,7,3,4,4,5
4,7,3,4,5,4
4,7,3,5,1,5
4,7,3,5,2,4
4,7,3,5,3,5
4,7,3,5,4,4
4,7,3,5,5,3
4,7,5,1,1,4
4,7,5,1,2,4
4,7,5,1,3,5
4,7,5,1,4,5
4,7,5,1,5,3
4,7,5,2,1,4
4,7,5,2,2,4
4,7,5,2,3,5
4,7,5,2,4,5
4,7,5,2,5,5
4,7,5,3,1,5
4,7,5,3,2,5
4,7,5,3,3,5
4,7,5,3,4,4
4,7,5,3,5,5
4,7,5,4,1,5
4,7,5,4,2,3
4,7,5,4,3,4
4,7,5,4,4,5
4,7,5,4,5,4
4,7,5,5,1,5
4,7,5,5,2,5
4,7,5,5,3,5
4,7,5,5,4,5
4,7,5,5,5,3
4,6,4,1,1,5
4,6,4,1,2,5
4,6,4,1,3,5
4,6,4,1,4,5
4,6,4,1,5,3
4,6,4,2,1,1
4,6,4,2,2,1
4,6,4,2,3,3
4,6,4,2,4,5
4,6,4,2,5,5
4,6,4,3,1,5
4,6,4,3,2,5
4,6,4,3,3,5
4,6,4,3,4,3
4,6,4,3,5,3
4,6,4,4,1,5
4,6,4,4,2,4
4,6,4,4,3,5
4,6,4,4,4,5
4,6,4,4,5,3
4,6,4,5,1,5
4,6,4,5,2,5
4,6,4,5,3,5
4,6,4,5,4,5
4,6,4,5,5,5
4,6,2,1,1,5
4,6,2,1,2,4
4,6,2,1,3,4
4,6,2,1,4,4
4,6,2,1,5,5
4,6,2,2,1,5
4,6,2,2,2,4
4,6,2,2,3,5
4,6,2,2,4,3
4,6,2,2,5,5
4,6,2,3,1,4
4,6,2,3,2,5
4,6,2,3,3,4
4,6,2,3,4,3
4,6,2,3,5,3
4,6,2,4,1,5
4,6,2,4,2,5
4,6,2,4,3,3
4,6,2,4,4,3
4,6,2,4,5,5
4,6,2,5,1,5
4,6,2,5,2,4
4,6,2,5,3,3
4,6,2,5,4,4
4,6,2,5,5,5
4,8,1,1,1,4
4,8,1,1,2,5
4,8,1,1,3,5
4,8,1,1,4,5
4,8,1,1,5,5
4,8,1,2,1,3
4,8,1,2,2,3
4,8,1,2,3,3
4,8,1,2,4,5
4,8,1,2,5,3
4,8,1,3,1,5
4,8,1,3,2,5
4,8,1,3,3,5
4,8,1,3,4,5
4,8,1,3,5,5
4,8,1,4,1,5
4,8,1,4,2,5
4,8,1,4,3,5
4,8,1,4,4,4
1,8,1,4,4,4
4,8,1,4,5,4
4,8,1,5,1,5
4,8,1,5,2,3
4,8,1,5,3,3
4,8,1,5,4,5
4,8,1,5,5,4
4,8,3,1,1,5
4,8,3,1,2,4
4,8,3,1,3,4
4,8,3,1,4,4
4,8,3,1,5,4
4,8,3,2,1,5
4,8,3,2,2,5
4,8,3,2,3,5
4,8,3,2,4,4
4,8,3,2,5,4
4,8,3,3,1,5
4,8,3,3,2,5
4,8,3,3,3,5
4,8,3,3,4,4
4,8,3,3,5,4
4,8,3,4,1,5
4,8,3,4,2,5
4,8,3,4,3,5
4,8,3,4,4,5
4,8,3,4,5,4
4,8,3,5,1,5
4,8,3,5,2,5
4,8,3,5,3,5
4,8,3,5,4,4
4,8,3,5,5,5
4,8,5,1,1,4
4,8,5,1,2,3
4,8,5,1,3,4
4,8,5,1,4,4
4,8,5,1,5,4
4,8,5,2,1,4
4,8,5,2,2,4
4,8,5,2,3,3
4,8,5,2,4,4
4,8,5,2,5,4
4,8,5,3,1,4
4,8,5,3,2,4
4,8,5,3,3,3
4,8,5,3,4,3
4,8,5,3,5,5
4,8,5,4,1,5
4,8,5,4,2,4
4,8,5,4,3,3
4,8,5,4,4,5
4,8,5,4,5,5
4,8,5,5,1,4
4,8,5,5,2,4
4,8,5,5,3,5
4,8,5,5,4,5
4,8,5,5,5,4
4,7,4,1,1,5
4,7,4,1,2,5
4,7,4,1,3,4
4,7,4,1,4,5
4,7,4,1,5,5
4,7,4,2,1,4
4,7,4,2,2,5
4,7,4,2,3,5
4,7,4,2,4,5
4,7,4,2,5,5
4,7,4,3,1,3
4,7,4,3,2,5
4,7,4,3,3,5
4,7,4,3,4,5
4,7,4,3,5,5
4,7,4,4,1,5
4,7,4,4,2,5
4,7,4,4,3,4
4,7,4,4,4,5
4,7,4,4,5,3
4,7,4,5,1,5
4,7,4,5,2,5
4,7,4,5,3,4
4,7,4,5,4,5
4,7,4,5,5,3
4,7,2,1,1,3
4,7,2,1,2,3
4,7,2,1,3,3
4,7,2,1,4,3
4,7,2,1,5,4
4,7,2,2,1,3
4,7,2,2,2,5
4,7,2,2,3,4
4,7,2,2,4,4
4,7,2,2,5,4
4,7,2,3,1,3
4,7,2,3,2,4
4,7,2,3,3,3
4,7,2,3,4,4
4,7,2,3,5,4
4,7,2,4,1,4
4,7,2,4,2,4
4,7,2,4,3,4
4,7,2,4,4,4
4,7,2,4,5,4
4,7,2,5,1,4
4,7,2,5,2,4
4,7,2,5,3,4
4,7,2,5,4,4
4,7,2,5,5,4
4,8,2,1,1,5
4,8,2,1,2,3
4,8,2,1,3,3
4,8,2,1,4,3
4,8,2,1,5,3
4,8,2,2,1,5
4,8,2,2,2,4
4,8,2,2,3,3
4,8,2,2,4,1
4,8,2,2,5,3
4,8,2,3,1,5
4,8,2,3,2,5
4,8,2,3,3,5
4,8,2,3,4,4
4,8,2,3,5,3
4,8,2,4,1,4
4,8,2,4,2,5
4,8,2,4,3,4
4,8,2,4,4,3
4,8,2,4,5,5
4,8,2,5,1,4
4,8,2,5,2,5
4,8,2,5,3,5
4,8,2,5,4,5
4,8,2,5,5,3
4,8,4,1,1,5
4,8,4,1,2,5
4,8,4,1,3,5
4,8,4,1,4,5
4,8,4,1,5,5
4,8,4,2,1,5
4,8,4,2,2,5
4,8,4,2,3,5
4,8,4,2,4,5
4,8,4,2,5,5
4,8,4,3,1,5
4,8,4,3,2,5
4,8,4,3,3,5
4,8,4,3,4,5
4,8,4,3,5,5
4,8,4,4,1,5
4,8,4,4,2,5
4,8,4,4,3,5
4,8,4,4,4,5
4,8,4,4,5,5
4,8,4,5,1,5
4,8,4,5,2,5
4,8,4,5,3,5
4,8,4,5,4,5
4,8,4,5,5,5
4,1,4,3,1,5
4,1,4,3,2,4
4,1,4,3,3,5
4,1,4,3,4,5
4,1,4,3,5,5
4,1,4,4,1,4
4,1,4,4,2,5
4,1,4,4,3,5
4,1,4,4,4,5
4,1,4,4,5,5
4,1,4,5,1,5
4,1,4,5,2,5
4,1,4,5,3,5
4,1,4,5,4,5
4,1,4,5,5,4
"""
        
        
        print("Read code \(decodedListString)")
        let dataList = readTheCSV(string: decodedListString)
        
        
        
        
        
        shouldWrite = false
        updateOnChange()
        shouldWrite = true
    }
    // MARK: - Variables
    var shouldWrite = false
    var currentPointIndex: Int? = nil
    var autoSwitchSave = storage.point(plot: 1, direction: 1, distance: 1, row: 1, column: 1, cover: 1)
    var add = true
    // MARK: - Functions
    func readTheCSV(string: String) -> [[String]]{
        var inputedData = string
        inputedData += "\n"
        var returnList = [[String]]()
        var sublist = [String]()
        var tempstring1 = ""
        var tempstring2 = ""
        for i in inputedData{
            if i != "\n"{
                tempstring1 += String(i)
            }else{
                for j in tempstring1{
                    if j != ","{
                        tempstring2 += String(j)
                    }else{
                        sublist.append(tempstring2)
                        tempstring2 = ""
                    }
                }
                sublist.append(tempstring2)
                returnList.append(sublist)
                sublist = []
                tempstring1 = ""
                tempstring2 = ""
            }
        }
        print(returnList)
        return returnList
    }
    
    func addPoint(at: storage.point){
        storage.listOfPoints.append(at)
        print("Added point \(pointToString(point: at)).")
        print("Added point \(pointToGoodString(point: at)).")
    }
    func addContent(at: storage.contents){
        storage.listOfContents.append(at)
        print("Added content \(contentToString(content: at)).")
        //print("Added content \(contentToGoodString(point: at)).")
    }
    func pointToString(point: storage.point) -> String{
        let string = "plot \(point.plot), direction \(point.direction), distance \(point.distance), row \(point.row), column \(point.column), cover \(point.cover)"
        return string
    }
    func contentToString(content: storage.contents) -> String{
        let string = "plot \(content.plot), direction \(content.direction), distance \(content.distance), content \(content.contents)"
        return string
    }
    func pointToGoodString(point: storage.point) -> String{
        let string = "plot \(point.plot), direction \(direction.titleForSegment(at: point.direction-1) ?? "nil"), distance \(distance.titleForSegment(at: point.distance-1) ?? "nil"), row \(point.row), column \(point.column), cover \(cover.titleForSegment(at: point.cover-1) ?? "nil")"
        return string
    }
    /*func contentToGoodString(content: storage.contents) -> String{
        let string = "plot \(content.plot), direction \(direction.titleForSegment(at: point.direction-1) ?? "nil"), distance \(distance.titleForSegment(at: point.distance-1) ?? "nil"), row \(point.row), column \(point.column), cover \(cover.titleForSegment(at: point.cover-1) ?? "nil")"
        return string
    }*/
    
    func updateSampleContents(sample: storage.sample, value: storage.contents){
        print("Updating contents.")
        let content: Int? = contentExists(at: storage.contents(plot: sample.plot, direction: sample.direction, distance: sample.distance, contents: storage.contentTypes.Default))
        if content != nil{
            storage.listOfContents[content!] = value
            print("Updated existing content.")
        }else{
            storage.listOfContents.append(value)
            print("Added new content")
        }
    }
    
    func addActions(){
        if add == true{
            updateOnChange()
            autoSwitch.isEnabled = true
            addPoint(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
            if autoSwitch.isOn == true{
                autoStep()
            }
            updateOnChange()
        }else{
            let currentPoint = pointExists(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
            storage.listOfPoints[currentPoint!].cover = cover.selectedSegmentIndex+1
            updateOnChange()
        }
        let currentSamp = currentSample(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1)
        updateSampleContents(sample: currentSamp, value: storage.contents(plot: currentSamp.plot, direction: currentSamp.direction, distance: currentSamp.distance, contents: inputToContent(input: Content.selectedSegmentIndex+1)))
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
    
    func contentExists(at: storage.contents) -> Int?{
        let content = at
        var iterations = 0
        var match = false
        for i in storage.listOfContents{
            if i.plot == content.plot && i.direction == content.direction && i.distance == content.distance{
                match = true
                print("Found content at plot \(iterations).")
                return iterations
            }
            iterations += 1
        }
        if match == false{
            return nil
        }
    }
    
    func inputToContent(input: Int) -> storage.contentTypes {
        var value = storage.contentTypes.Default
        if input == 1{
            value = storage.contentTypes.Default
        }else if input == 2{
            value = storage.contentTypes.UnburnedGround
        }else if input == 3{
            value = storage.contentTypes.BurnedGround
        }else if input == 4{
            value = storage.contentTypes.UnburnedBush
        }else if input == 5{
            value = storage.contentTypes.AliveBurnedBush
        }else if input == 6{
            value = storage.contentTypes.DeadBurnedBush
        }else if input == 7{
            value = storage.contentTypes.ScorchedGround
        }else if input == 8{
            value = storage.contentTypes.ScorchedBush
        }else if input == 9{
            value = storage.contentTypes.Tree
        }
        return value
    }
    
    func contentToInput(input: storage.contentTypes) -> Int {
        var value = 1
        if input == storage.contentTypes.Default{
            value = 1
        }else if input == storage.contentTypes.UnburnedGround{
            value = 2
        }else if input == storage.contentTypes.BurnedGround{
            value = 3
        }else if input == storage.contentTypes.UnburnedBush{
            value = 4
        }else if input == storage.contentTypes.AliveBurnedBush{
            value = 5
        }else if input == storage.contentTypes.DeadBurnedBush{
            value = 6
        }else if input == storage.contentTypes.ScorchedGround{
            value = 7
        }else if input == storage.contentTypes.ScorchedBush{
            value = 8
        }else if input == storage.contentTypes.Tree{
            value = 9
        }
        return value
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
        return storage.sample(plot: plot, direction: direction, distance: distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 0, coverPlant: 0)
    }
    
    func updateOnChange(){
        let currentSamp = currentSample(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1)
        let numberOfPoints: Int? = numberOfPointsIn(sample: currentSamp)
        if numberOfPoints != nil{
            sampleLabel.text = "\(numberOfPoints!) points"
        }else{
            sampleLabel.text = "0 points"
        }
        let currentPoint: Int? = pointExists(at: storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1))
        currentPointIndex = currentPoint
        if currentPoint != nil{
            print(currentPoint!)
            addEdit.setImage(UIImage(named: "Edit"), for: .normal)
            add = false
            cover.selectedSegmentIndex = storage.listOfPoints[currentPoint!].cover-1
        }else{
            addEdit.setImage(UIImage(named: "Add"), for: .normal)
            add = true
        }
        let currentContent = contentExists(at: storage.contents(plot: currentSamp.plot, direction: currentSamp.direction, distance: currentSamp.distance, contents: storage.contentTypes.Default))
        if currentContent != nil{
            print("Current content is \(currentContent ?? -999)")
            Content.selectedSegmentIndex = contentToInput(input: storage.listOfContents[currentContent!].contents)-1
            print("Content type is \(contentToInput(input: storage.listOfContents[currentContent!].contents))")
        }else{
            Content.selectedSegmentIndex = 0
        }
        if shouldWrite == true{
            let _ = storage.openFileNamed("listSave", type: "w", write: codeList())
            let _ = storage.openFileNamed("contentSave", type: "w", write: codeContentList())
        }
        
        if (direction.selectedSegmentIndex+1)%2 == 0{
            distance.setTitle("29m", forSegmentAt: 0)
        }else{
            distance.setTitle("17m", forSegmentAt: 0)
        }
        /*updateSampleContents(sample: currentSamp, value: storage.contents(plot: currentSamp.plot, direction: currentSamp.direction, distance: currentSamp.distance, contents: inputToContent(input: Content.selectedSegmentIndex+1)))*/
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
    
    func contentExists(at: storage.point) -> Int?{
        let content = at
        var iterations = 0
        for i in storage.listOfContents{
            if i.plot == content.plot && i.direction == content.direction && i.distance == content.distance{
                print("Found point at \(iterations).")
                return iterations
            }
            iterations += 1
        }
        print("Point non-exsitant.")
        return nil
    }
    
    func autoStep(){
        updateOnChange()
        if column.selectedSegmentIndex<4{
            column.selectedSegmentIndex += 1
        }else if row.selectedSegmentIndex<4{
            row.selectedSegmentIndex += 1
            column.selectedSegmentIndex = 0
        }else if distance.selectedSegmentIndex<4{
            distance.selectedSegmentIndex += 1
            column.selectedSegmentIndex = 0
            row.selectedSegmentIndex = 0
        }else if direction.selectedSegmentIndex<7{
            direction.selectedSegmentIndex += 1
            column.selectedSegmentIndex = 0
            row.selectedSegmentIndex = 0
            distance.selectedSegmentIndex = 0
        }else if plot.selectedSegmentIndex<7{
            plot.selectedSegmentIndex += 1
            column.selectedSegmentIndex = 0
            row.selectedSegmentIndex = 0
            distance.selectedSegmentIndex = 0
            direction.selectedSegmentIndex = 0
        }
        print("Finished Auto-step.")
    }
    
    
    // MARK: - Figure Samples Function
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
                    if coverType == 5{sampleList[jCount].coverPlant += 1}
                    if coverType == 4{sampleList[jCount].coverLitter += 1}
                    if coverType == 2{sampleList[jCount].coverCheatgrassLitter += 1}
                    if coverType == 3{sampleList[jCount].coverGround += 1}
                }
                jCount += 1
            }
            if matchFound == false{
                let coverType = i.cover
                if coverType == 1{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 1, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 0, coverPlant: 0))
                }else if coverType == 2{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 1, coverGround: 0, coverLitter: 0, coverPlant: 0))
                }else if coverType == 3{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 1, coverLitter: 0, coverPlant: 0))
                }else if coverType == 4{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 1, coverPlant: 0))
                }else if coverType == 5{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 0, coverPlant: 1))
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
    
    // MARK: - File Related Functions
    func codeList() -> String{
        var string = ""
        if storage.listOfPoints.count > 0 {
            for i in storage.listOfPoints{
                string += "\(i.plot),\(i.direction),\(i.distance),\(i.row),\(i.column),\(i.cover),!"
            }
        }else{
            string = ""
        }
        print("Generated code: \(string)")
        return string
    }
    
    func codeContentList() -> String{
        var string = ""
        if storage.listOfContents.count > 0 {
            for i in storage.listOfContents{
                string += "\(i.plot),\(i.direction),\(i.distance),\(contentToInput(input: i.contents)),!"
            }
        }else{
            string = ""
        }
        print("Generated content code: \(string)")
        return string
    }
    
    func decodeList(string: String) -> [storage.point]{
        var storageString = ""
        var listOfStrings = [storage.point]()
        var currentInfo = 1
        var storePlot = 0
        var storeDirection = 0
        var storeDistance = 0
        var storeRow = 0
        var storeColumn = 0
        var storeCover = 0
        for i in string{
            if i != "," && i != "!"{
                storageString += String(i)
            }else if i == ","{
                if currentInfo == 1{
                    storePlot = Int(storageString)!
                }else if currentInfo == 2{
                    storeDirection = Int(storageString)!
                }else if currentInfo == 3{
                    storeDistance = Int(storageString)!
                }else if currentInfo == 4{
                    storeRow = Int(storageString)!
                }else if currentInfo == 5{
                    storeColumn = Int(storageString)!
                }else if currentInfo == 6{
                    storeCover = Int(storageString)!
                }
                currentInfo += 1
                storageString = ""
            }else if i == "!"{
                currentInfo = 1
                listOfStrings.append(storage.point(plot: storePlot, direction: storeDirection, distance: storeDistance, row: storeRow, column: storeColumn, cover: storeCover))
                storageString = ""
            }
        }
        return listOfStrings
    }
    
    func decodeContentList(string: String) -> [storage.contents]{
        var storageString = ""
        var listOfStrings = [storage.contents]()
        var currentInfo = 1
        var storePlot = 0
        var storeDirection = 0
        var storeDistance = 0
        var storeCover = storage.contentTypes.Default
        for i in string{
            if i != "," && i != "!"{
                storageString += String(i)
            }else if i == ","{
                if currentInfo == 1{
                    storePlot = Int(storageString)!
                }else if currentInfo == 2{
                    storeDirection = Int(storageString)!
                }else if currentInfo == 3{
                    storeDistance = Int(storageString)!
                }else if currentInfo == 4{
                    storeCover = inputToContent(input: Int(storageString)!)
                }
                currentInfo += 1
                storageString = ""
            }else if i == "!"{
                currentInfo = 1
                listOfStrings.append(storage.contents(plot: storePlot, direction: storeDirection, distance: storeDistance, contents: storeCover))
                storageString = ""
            }
        }
        return listOfStrings
    }
    
    // MARK: - Overrides
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)?) {
        super.dismiss(animated: flag, completion: completion)

        updateOnChange()
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
    @IBOutlet weak var Content: UISegmentedControl!
    @IBAction func ContentChanged(_ sender: Any) {
        let currentSamp = currentSample(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1)
        updateSampleContents(sample: currentSamp, value: storage.contents(plot: currentSamp.plot, direction: currentSamp.direction, distance: currentSamp.distance, contents: inputToContent(input: Content.selectedSegmentIndex+1)))
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
        //updateOnChange()
    }
    @IBOutlet weak var autoSwitch: UISwitch!
    @IBAction func autoSwitchChanged(_ sender: Any) {
        updateOnChange()
        if autoSwitch.isOn == true{
            plot.selectedSegmentIndex = autoSwitchSave.plot-1
            direction.selectedSegmentIndex = autoSwitchSave.direction-1
            distance.selectedSegmentIndex = autoSwitchSave.distance-1
            row.selectedSegmentIndex = autoSwitchSave.row-1
            column.selectedSegmentIndex = autoSwitchSave.column-1
        }else{
            autoSwitchSave = storage.point(plot: plot.selectedSegmentIndex+1, direction: direction.selectedSegmentIndex+1, distance: distance.selectedSegmentIndex+1, row: row.selectedSegmentIndex+1, column: column.selectedSegmentIndex+1, cover: cover.selectedSegmentIndex+1)
        }
        updateOnChange()
    }
    @IBOutlet weak var addEdit: UIButton!
    @IBAction func addEditChanged(_ sender: Any) {
        addActions()
    }
    @IBOutlet weak var sampleLabel: UILabel!
}

