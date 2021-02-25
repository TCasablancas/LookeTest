//
//  OutletDefinition.swift
//  LookeTest
//
//  Created by Thyago on 25/02/21.
//

import UIKit
import SnapKit

class OutletDefinition: UIViewController {
    
    private lazy var container: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var textBox: TextBox = {
        let view = TextBox()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupAnswer()
        self.view.backgroundColor = .white
        title = "07. Outlet Definition"
    }
}

extension OutletDefinition {
    func setupAnswer() {
        textBox.title.text = "Defina IBOutlet no desenvolvimento de aplicações iOS."
        textBox.answer.text = "É um marcardor que liga uma propriedade da ViewController com um componente de interface, utilizado em storyboards e xibs.\n\n Ele é importante no caso de um desenvolvimento visual, tornando o mesmo mais ágil."
    }
}

extension OutletDefinition: ViewCode {
    func viewHierarchy() {
        self.view.addSubview(container)
        container.addSubview(textBox)
    }
    
    func setupConstraints() {
        container.snp.makeConstraints {
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
            $0.top.equalTo(130)
            $0.bottom.equalToSuperview()
        }
        
        textBox.snp.makeConstraints{
            $0.width.equalToSuperview()
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-30)
        }
    }
}
