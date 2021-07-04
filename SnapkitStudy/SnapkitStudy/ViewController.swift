//
//  ViewController.swift
//  SnapkitStudy
//
//  Created by kakao on 2021/07/04.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var yellowView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .yellow
        return v
    }()
    
    lazy var blueView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .blue
        return v
    }()
    
    
    lazy var blackView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .black
        return v
    }()
    
    lazy var redView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .red
        return v
    }()
    
    lazy var greenView: UIView = {
        let v = UIView(frame: .zero)
        v.backgroundColor = .green
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(yellowView)
        self.view.addSubview(blueView)
        
        self.view.addSubview(blackView)
        self.view.addSubview(redView)
        redView.addSubview(greenView)
        
        yellowView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.top.equalTo(self.view)
            make.height.equalTo(100)
        }
        
        blueView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).inset(100)
            make.right.equalTo(self.view).inset(100)
            make.top.equalTo(yellowView.snp.bottom)
            make.height.equalTo(100)
        }

        blackView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            make.height.equalTo(100)
        }
        
        redView.snp.makeConstraints { make in
            make.top.equalTo(blueView.snp.bottom)
            make.right.equalTo(self.view)
            make.left.equalTo(self.view)
            make.bottom.equalTo(blackView.snp.top)
        }
        
        greenView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.edges.equalToSuperview().inset(50)
        }
    }


}
