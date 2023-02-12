//
//  ViewController.swift
//  Assignment4
//
//  Created by Caitlin Johnson on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UpdateUI()
    }


    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var questLabel: UILabel!
    
    var questlogic = QuestLogic()
    
    @IBAction func optionChosen(_ sender: UIButton) {
        let optionSubmitted = sender.titleLabel!.text!
        let isOptionOne = questlogic.compareChoice(optionSubmitted)
        
        if isOptionOne {
            questlogic.setState(questlogic.getConsequenceOne())
            sender.backgroundColor = UIColor.green
        } else {
            questlogic.setState(questlogic.getConsequenceTwo())
            sender.backgroundColor = UIColor.green
            
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    @objc func UpdateUI() {
        questLabel.text = questlogic.getScene()
        buttonOne.backgroundColor = UIColor.clear
        buttonTwo.backgroundColor = UIColor.clear
        buttonOne.setTitle(questlogic.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(questlogic.getChoiceTwo(), for: .normal)
    }
    

        
        
}

