//
//  AddFramework.swift
//  LookeTest
//
//  Created by Thyago on 25/02/21.
//

import UIKit

class AddFramework: UIViewController {
    
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
        title = "10. Add Framework"
    }
}

extension AddFramework {
    func setupAnswer() {
        textBox.title.text = "Como adicionar um Framework em um projeto no Xcode."
        textBox.answer.text = "Pode ser feito de forma simples, via cocoapods, se o componente já existir no site. Também pode ser criado um cocoapod próprio, de acordo com as necessidades da aplicação.\n\n Também existe o método de arrastar e instalar manualmente no XCode, mas não é recomendado."
    }
}

extension AddFramework: ViewCode {
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
