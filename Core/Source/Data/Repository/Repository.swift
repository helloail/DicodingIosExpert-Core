//
//  Repository.swift
//  Core
//
//  Created by Moh Zinnur Atthufail Addausi on 11/02/21.
//

import Foundation

import Combine
 
public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
