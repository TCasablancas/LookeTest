//
//  Response.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import Foundation

enum Response<T> {
    case success(model: T)
    case serverError(description: ServerError)
    case timeOut(description: ServerError)
    case noConnection(description: ServerError)
}
