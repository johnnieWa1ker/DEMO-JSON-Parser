//
//  ViperViewController.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper

extension ViperViewController {
    
    func showDisconnect() {
        for view in self.view.subviews {
            if view.isKind(of: DisconnectView.self) {
                view.removeFromSuperview()
            }
        }
        self.view.layoutIfNeeded()
        self.tabBarController?.tabBar.isHidden = true
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.view.endEditing(true)
        
        let view = DisconnectView(frame: self.view.bounds)
        self.view.addSubview(view)
        view.delegate = self
    }
    
    func hideDisconnect() {
        for view in self.view.subviews {
            if view.isKind(of: DisconnectView.self) {
                view.removeFromSuperview()
                
                self.navigationController?.setNavigationBarHidden(false, animated: true)
                self.tabBarController?.tabBar.isHidden = false
            }
        }
    }
}

extension ViperViewController: DisconnectViewDelegate {
    func reload() {
        self._output?.reloadData()
    }
}
