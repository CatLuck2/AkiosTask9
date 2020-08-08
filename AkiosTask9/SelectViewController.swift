//
//  SelectViewController.swift
//  AkiosTask9
//
//  Created by Nekokichi on 2020/08/08.
//  Copyright © 2020 Nekokichi. All rights reserved.
//
/*
 戻ったとき、
 １、UserDefaultで
 */

import UIKit

class SelectViewController: UIViewController {
    
    var prefectureValue:String!
    
    //4つのボタンをまとめた
    @IBAction private func button(_ sender: UIButton) {
        prefectureValue = sender.titleLabel!.text!
        performSegue(withIdentifier: "exit", sender: nil)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
