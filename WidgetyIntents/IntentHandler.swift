//
//  IntentHandler.swift
//  WidgetyIntents
//
//  Created by Guilherme Rambo on 07/09/20.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    
    func resolveCharacters(for intent: ConfigurationIntent, with completion: @escaping ([GameCharacterResolutionResult]) -> Void) {
        completion([
            .success(with: GameCharacter(identifier: "1", display: "Character A")),
            .success(with: GameCharacter(identifier: "2", display: "Character B")),
            .success(with: GameCharacter(identifier: "3", display: "Character C"))
        ])
    }
    
    func provideCharactersOptionsCollection(for intent: ConfigurationIntent, with completion: @escaping (INObjectCollection<GameCharacter>?, Error?) -> Void) {
        completion(INObjectCollection(items: [
            GameCharacter(identifier: "1", display: "Character A"),
            GameCharacter(identifier: "2", display: "Character B"),
            GameCharacter(identifier: "3", display: "Character C")
        ]), nil)
    }
    
    override func handler(for intent: INIntent) -> Any { self }
    
}
