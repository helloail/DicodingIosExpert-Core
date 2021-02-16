//
//  DataSource.swift
//  Core
//
//  Created by Moh Zinnur Atthufail Addausi on 11/02/21.
//

import Combine

public protocol DataSource {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
