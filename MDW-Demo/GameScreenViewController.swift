//
//  GameScreenViewController.swift
//  MDW-Demo
//
//  Created by Alex Fuoco on 3/4/21.
//

import UIKit
import Foundation


class GameScreenViewController: UIViewController {

    @IBOutlet weak var JumpLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var jumpGif: UIImageView!
    

    var jumpCounter = 0;
    var timer = Timer()
    var runCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jumpGif.loadGif(name: "jr_potato")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func jumpAction(_ sender: Any) {
        if(jumpCounter == 0){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
            jumpCounter = jumpCounter + 1
            JumpLabel.text = "\(jumpCounter) jumps!"
            timerLabel.text = "\(15 - runCount) seconds left"
        }else if(jumpCounter >= 1){
            if(runCount >= 15){ //Time Ends
                timer.invalidate()
            }else {
                jumpCounter = jumpCounter + 1
                JumpLabel.text = "\(jumpCounter) jumps!"
            }
        }
    }
    
    @objc func fireTimer() {
        print("Timer fired!")
        runCount += 1
        timerLabel.text = "\(15 - runCount) seconds left"
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
