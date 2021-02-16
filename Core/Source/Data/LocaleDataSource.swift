//
//  LocaleDataSource.swift
//  Core
//
//  Created by Moh Zinnur Atthufail Addausi on 11/02/21.
//

import Foundation
import Combine
 
public protocol LocaleDataSource {
    associatedtype Request
    associatedtype Response
    
    func list(request: Request?) -> AnyPublisher<[Response], Error>
    func add(entities: [Response]) -> AnyPublisher<Bool, Error>
    func get(id: Int) -> AnyPublisher<Response, Error>
    func update(id: Int) -> AnyPublisher<Response, Error>
}
