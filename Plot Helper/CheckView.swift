//
//  CommentView.swift
//  Plot Helper
//
//  Created by anyll on 5/19/20.
//  Copyright © 2020 Anyll Markevich. All rights reserved.
//

import UIKit

class CheckView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        var plotList = [0,0,0,0,0,0,0,0]
        for i in storage.listOfPoints{
            plotList[i.plot-1]+=1
        }
        var string = ""
        var iterations = 1
        for i in plotList{
            string += "Plot \(iterations) contains \(i) point samples.\n"
            iterations += 1
        }
        print(string)
        textWindow.text = string
    }
    
    @IBOutlet weak var textWindow: UITextView!
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if isBeingDismissed {
            // TODO: Do your stuff here.
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
