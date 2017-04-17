//
//  utility.swift
//  TapCars
//
//  Created by Rajeep Subedi on 23/03/17.
//  Copyright © 2017 Rajeep Subedi. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
struct colliderType {
    static let CAR_COLLIDER : UInt32 = 0
    static let CAR_COLLIDER_1 : UInt32 = 1
    static let ITEM_COLLIDER : UInt32 = 2
    static let ITEM_COLLIDER_1 : UInt32 = 3

}


class helper : NSObject {
    
    func randomBetweenNumbers(firstNum:CGFloat,secondNum:CGFloat)-> CGFloat{
        
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum,secondNum)
    }
    
    func setupAudioPlayerWithFile(_ file:NSString, type:NSString) -> AVAudioPlayer  {
        let url = Bundle.main.url(forResource: file as String, withExtension: type as String)
        var audioPlayer:AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url!)
        } catch {
            print("NO AUDIO PLAYER")
        }
        
        return audioPlayer!
    }

    
}
