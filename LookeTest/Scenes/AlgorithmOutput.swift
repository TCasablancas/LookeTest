//
//  AlgorithmOutput.swift
//  LookeTest
//
//  Created by Thyago on 23/02/21.
//

import UIKit
import SnapKit

class AlgorithmOutput: UIViewController {
    
    private lazy var container: UIView = {
        let view = UIView()
        return view
    }()
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.view.backgroundColor = .white
        
        doSomething(number)
    }
}

// MARK: - Algorithm

extension AlgorithmOutput {
    func doSomething(_ num: Int) -> Int {
        
        self.number = num
        
        if num <= 1 {
            return num
        } else {
            return num * doSomething(num - 1)
        }
    }
}

extension AlgorithmOutput: ViewCode {
    func viewHierarchy() {
        self.view.addSubview(container)
    }
    
    func setupConstraints() {
        container.snp.makeConstraints {
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
            $0.top.equalToSuperview().offset(50)
            $0.bottom.equalToSuperview().offset(-40)
        }
    }
}
