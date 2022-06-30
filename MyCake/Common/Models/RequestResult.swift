//
//  RequestResult.swift
//  MyCake
//
//  Created by Петр Постников on 28.06.2022.
//

import Foundation

enum RequestResult<T> {
    case success(T)
    case failure
}
