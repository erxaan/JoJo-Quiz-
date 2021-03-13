//
//  ResultsViewController.swift
//  Quiz Test
//
//  Created by Говоров Эрхаан on 28.08.2020.
//

import UIKit

class ResultsViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    // MARK: - Public properties
    var responses: [Answer]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    
    private func updateResult() {
        var frequencyOfCharacters: [CharacterType: Int] = [:]
        let characters = responses.map { $0.type }
        
        for character in characters {
            frequencyOfCharacters[character] = (frequencyOfCharacters[character] ?? 0) + 1
        }
        
        let sortedFrequencyOfCharacters = frequencyOfCharacters.sorted { $0.value > $1.value }
        guard let mostFrequencyCharacter = sortedFrequencyOfCharacters.first?.key else { return }
    
        updateUI(with: mostFrequencyCharacter)
    }
    
    private func updateUI(with character: CharacterType) {
        resultAnswerLabel.text = "Вы - \(character.rawValue)"
        resultDefinitionLabel.text = "\(character.definition)"
        
    }
}

