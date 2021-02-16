//
//  UseCase.swift
//  Core
//
//  Created by Moh Zinnur Atthufail Addausi on 11/02/21.
//

import Combine
 
public protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
