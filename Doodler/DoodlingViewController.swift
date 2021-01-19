//
//  DoodlingViewController.swift
//  Doodler
//
//  Created by Dariya Bengraf on 08.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import UIKit
import SnapKit

class DoodlingViewController: UIViewController {
    
    var mode: DrawMode {
        return modeControl.mode
    }
    
    var selectedDrawView: DrawView {
        let dv = mode.view()
        return dv
    }
    
    var drawLavbel: UILabel = {
        let label = UILabel()
        label.text = "Doodle"
        label.font =  UIFont.boldSystemFont(ofSize: 50.0)
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    var phraseLavbel: UILabel = {
        let label = UILabel()
        label.text = "What shapes do you like more?"
        label.font =  UIFont.boldSystemFont(ofSize: 20.0)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    
    var modeControl: DrawModeControl = {
        let control = DrawModeControl()
        control.addTarget(self, action: #selector(selectDrawArea(_:)), for: .valueChanged)
        
        return control
    }()
    
    public let drawContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .yellow
        return container
    }()
   
    let deleteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "yellowButton"), for: .normal)
        button.setImage(UIImage(named: "grayButton"), for: .highlighted)
        button.addTarget(self, action: #selector(clear), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(deleteButton)
        view.addSubview(drawContainer)
        view.addSubview(modeControl)
        view.addSubview(drawLavbel)
        view.addSubview(phraseLavbel)
        
        setupDrawArea()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let maskView = UIView(frame: CGRect(
            x: 0,
            y: 0,
            width: drawContainer.frame.width,
            height: drawContainer.frame.height
        ))
        maskView.backgroundColor = .black
        drawContainer.mask = maskView
    }
    
    @objc func clear (_ sender: UIButton!){
        selectedDrawView.clear()
        setupDrawArea()
    }
    
    @objc func selectDrawArea (_ sender: UIButton!){
        setupDrawArea()
    }
    
    func setupViews() {
        drawLavbel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.leading.equalToSuperview().offset(50)
        }
        
        phraseLavbel.snp.makeConstraints { make in
            make.top.equalTo(drawLavbel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(50)
        }
        
        modeControl.snp.makeConstraints { make in
            make.top.equalTo(phraseLavbel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(50)
        }
        
        drawContainer.snp.makeConstraints { make in
            make.top.equalTo(modeControl.snp.bottom).offset(5)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(deleteButton.snp.top)
        }
        
        deleteButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview().offset(-30)
            make.height.equalTo(70)
            make.width.equalTo(70)
        }
    }
    
    func setupDrawArea() {
        let drawView = selectedDrawView
        drawContainer.addSubview(drawView)
        drawView.snp.makeConstraints { make in
            make.top.equalTo(drawContainer)
            make.leading.equalTo(drawContainer)
            make.trailing.equalTo(drawContainer)
            make.bottom.equalTo(drawContainer)
        }        
    }
}
