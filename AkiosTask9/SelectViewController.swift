//
//  SelectViewController.swift
//  AkiosTask9
//
//  Created by Nekokichi on 2020/08/08.
//  Copyright © 2020 Nekokichi. All rights reserved.
//
/*
問題点
 ・UIアイテムの値をそのまま渡すのはバグの温床に
 ・関連する値に依存すると、微細な変更に対応できない
 */

enum Prefecture {
    case tokyo
    case kanagawa
    case chiba
    case saitama
    
    var displayName: String {
        switch self {
        case .tokyo:
            return "東京都"
        case .kanagawa:
            return "神奈川"
        case .chiba:
            return "千葉"
        case .saitama:
            return "埼玉"
        }
    }
}

import UIKit

class SelectViewController: UIViewController {
    
    var selectedPrefecture: Prefecture!
    
    @IBAction func didTapTokyo(_ sender: Any) {
        selectedPrefecture = .tokyo
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    @IBAction func didTapKanagawa(_ sender: Any) {
        selectedPrefecture = .kanagawa
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    @IBAction func didTapChiba(_ sender: Any) {
        selectedPrefecture = .chiba
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    @IBAction func didTapSaiatama(_ sender: Any) {
        selectedPrefecture = .saitama
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
