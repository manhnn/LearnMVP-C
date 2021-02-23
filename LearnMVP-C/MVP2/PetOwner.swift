//
//  PetOwner.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation

class PetOwner {
    
    let pet: AnimalType

    init(pet: AnimalType) {
        self.pet = pet
    }
    
    func play() -> String {
        return "I'm playing with \(pet.name) -- \(pet.sound())"
    }
}
