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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        settingNavBar()
    }
    
    //4つのボタンをまとめた
    @IBAction private func button(_ sender: UIButton) {
        let ud = UserDefaults.standard
        ud.set(sender.titleLabel?.text, forKey: "prefectures")
        back()
    }
    
    private func settingNavBar() {
        let navBar = UINavigationBar()
        //ノッチありのデバイスにも対応
        navBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.safeAreaInsets.top)
        //Cancelボタン
        let navItem = UINavigationItem()
        navItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(back))
        navBar.pushItem(navItem, animated: true)
        self.view.addSubview(navBar)
    }
    
    @objc private func back() {
        self.dismiss(animated: true, completion: nil)
    }

}
