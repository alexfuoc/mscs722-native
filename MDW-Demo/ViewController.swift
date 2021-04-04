//
//  ViewController.swift
//  MDW-Demo
//
//  Created by Alex Fuoco on 3/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gif: UIImageView!
    var scores: Array<Int> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gif.loadGif(name: "jr_dog")
    }

}
