//
//  NotificationCenter.swift
//  LookeTest
//
//  Created by Thyago on 25/02/21.
//

import UIKit

class NotificationCenter: UIViewController {
    
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
        title = "08. Notfication Center"
    }
}

extension NotificationCenter {
    func setupAnswer() {
        textBox.title.text = "Qual a diferença entre o KVO e NotificationCenter."
        textBox.answer.text = "Pode ser a forma de trackear uma diferença bem específica em algum obejto (e seu receptor), já que o Notification Center funciona de uma forma genérica e o KVO específica - como a mudança em um objeto, dentro de um observer."
    }
}

extension NotificationCenter: ViewCode {
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
