//
//  FinalViewController.swift
//  Questionnaire
//
//  Created by Рамил Гаджиев on 22.08.2021.
//

import UIKit

class FinalViewController: UIViewController {
    
    
    @IBOutlet var resultTitleLabel: UILabel!
    @IBOutlet var resultDescriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let maxAnimal = getMaxChosenAnimal ()
        updateUI(with: maxAnimal)
    }
}

extension FinalViewController {
    
    //MARK: - Private
    
    private func getMaxChosenAnimal () -> AnimalType {
        var answersAnimalsType: [AnimalType:Int] = [:]
        let animals = answers!.map{$0.type}
        
        for animal in animals {
            if let animalDictValue = answersAnimalsType[animal] {
                answersAnimalsType.updateValue(animalDictValue + 1, forKey: animal)
            } else {
                answersAnimalsType[animal] = 1
            }
        }
        guard let maxChosenAnimal = answersAnimalsType.sorted(by: { $0.value > $1.value }).first else { return .unknown}
        return maxChosenAnimal.key
    }
    
    private func updateUI(with animalType: AnimalType){
        resultTitleLabel.text = "Вы - \(animalType.rawValue)!"
        resultDescriptionLabel.text = "\(animalType.definition)"
    }
}

