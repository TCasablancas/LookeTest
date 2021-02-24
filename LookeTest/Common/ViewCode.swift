//
//  ViewCode.swift
//  LookeTest
//
//  Created by Thyago on 23/02/21.
//

protocol ViewCode {
    func setup()
    func viewHierarchy()
    func setupConstraints()
}

extension ViewCode {
    func setup() {
        viewHierarchy()
        setupConstraints()
    }
}
