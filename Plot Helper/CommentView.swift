//
//  CommentView.swift
//  Plot Helper
//
//  Created by anyll on 5/19/20.
//  Copyright © 2020 Anyll Markevich. All rights reserved.
//

import UIKit

class CommentView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let comment = storage.openFileNamed("comments", type: "r", write: "")
        commentField.text = comment

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var commentField: UITextView!
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if isBeingDismissed {
            // TODO: Do your stuff here.
            let _ = storage.openFileNamed("comments", type: "w", write: commentField.text)
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
