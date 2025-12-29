//
//  LocalStorage Listener.swift
//  keep
//
//  Created by Florian Rogosch on 29.12.25.
//


import UIKit
import SwiftUI


func ButtonFeedback() {
        let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.success)
    }

func saveData() {
    let directory = URL.documentsDirectory
    print("directory \(directory.path())")
    let fileURL = directory.appendingPathComponent("data.txt")
    
    do {
        let data = datatext.data(using: .utf8)
        try data?.write(to: fileURL)
    } catch {
        print("Error saving data: \(error)")
    }
    
}
