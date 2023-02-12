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
    
    var state : Int = 0
    let theQuest = [
        Quest("You have crash landed on an island. What do you do?", "Search for Food", "Investigate the Crash", 1, 2),
        Quest("While searching for food, you discover a banana tree and a fishing rod. Which do you choose?", "Climb the Banana Tree", "Take the Fishing Rod", 3, 4),
        Quest("You search the wreckage for anything useful. You find some in-flight meals and a deployed inflatable raft, but can only carry one thing.", "Take the Food", "Take the Raft", 5, 6),
        Quest("GOOD END! The banana tree proves fruitful. These are super bananas that you can live off of for years if necessary! Your hunger is satiated long enough for rescue to arrive. You Live!", "Yay!", "Hooray!", 0, 0),
        Quest("You decide to take the fishing rod, but oh no! There's no bait here; Now what to do?", "Climb the Banana Tree", "Dig for Bait", 3, 7),
        Quest("You try to live off of cookies and peanuts, but unfortunately they are not exactly nutritious. Starvation will set in soon unless better food is found", "Search for Food", "Return to the Crash", 1, 2),
        Quest("You take the inflatable raft. It seems substantial enough to carry you and any food off the island in search of civilization. What do you do?", "Take Airline Food and escape!", "Stay on the island and search for better food", 8, 9),
        Quest("You begin to dig for bait, but to no avail. It seems fishing is not going to work in your favor.", "Fish without bait", "Just take the bananas", 10, 3),
        Quest("BAD END. You set off on the seven seas with a mountain of cookie crumbs and stale peanuts. Your fate remains unknown...", "That's ominous", "I see this as an absolute win!", 0, 0),
        Quest("While searching for food, you discover a banana tree and a fishing rod. Which do you choose?", "Climb the Banana Tree", "Take the Fishing Rod", 3, 11),
        Quest("BAD END. Unsurprisingly, nothing happens. Your refusal to eat bananas is resolute however, and you steadfastly remain fishing until you simply die of starvation.", "Bananas are disgusting :(", "Oh come on, surely a fish wouldve bitten EVENTUALLY", 0, 0),
        Quest("You pick up the fishing rod. You think to yourself, 'Hmm.. I dont think this will work without bait, perhaps I should find another food source?", "Fish without bait", "Take the bananas and run!", 10, 12),
        Quest("BAD END? Grabbing your bananas, you set off in time to see the form of a rescue boat arriving at the island you just left, and you are never found.", "Seriously?", "Arent these supposed to be super bananas?", 0, 13),
        Quest("GOOD END. Who told you that? I guess you're right... The rescue ship has a spyglass and scans the horizon. Luckily, they can see your raft in the distance! You're saved!", "That's what I thought. Hmph.", "Cool beans!", 0, 0)
        ]
    
    @IBAction func optionChosen(_ sender: UIButton) {
        let optionSubmitted = sender.titleLabel!.text!
        let isOptionOne = compareChoice(optionSubmitted)
        
        if isOptionOne {
            state = theQuest[state].cons1
            sender.backgroundColor = UIColor.green
        } else {
            state = theQuest[state].cons2
            sender.backgroundColor = UIColor.green
            
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    @objc func UpdateUI() {
        questLabel.text = theQuest[state].scene
        buttonOne.backgroundColor = UIColor.clear
        buttonTwo.backgroundColor = UIColor.clear
        buttonOne.setTitle(theQuest[state].choiceOne, for: .normal)
        buttonTwo.setTitle(theQuest[state].choiceTwo, for: .normal)
    }
    
    func compareChoice(_ choice: String) -> Bool {
        if (choice == theQuest[state].choiceOne) {
            return true
        } else {
            return false
        }
        
    }
        
        
}

