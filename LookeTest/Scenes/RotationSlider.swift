//
//  RotationSlider.swift
//  LookeTest
//
//  Created by Thyago on 23/02/21.
//

import UIKit
import SnapKit

class RotationSlider: UIViewController {
    
    var mydata: Array = ["1", "2", "3", "4", "5"]
    
    private lazy var container: UIView = {
        let view = UIView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.view.backgroundColor = .white
    }
}

extension RotationSlider {
    
    func rotacaoEsquerda(_ numbers: [Array<Any>]) {
        let first = numbers[0]
        var arr = numbers
        for i in 0..<numbers.count - 1 {
            arr[i] = arr[i + 1]
        }
        arr[numbers.count - 1] = first
    }
    
    func callRotacao() {
        for number in 0...4 {
            rotacaoEsquerda([mydata])
        }
    }
}

extension RotationSlider: ViewCode {
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
