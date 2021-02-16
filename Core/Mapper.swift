//
//  File.swift
//  Core
//
//  Created by Moh Zinnur Atthufail Addausi on 11/02/21.
//

import Foundation

public protocol Mapper {
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    associatedtype PartDomain
    associatedtype PartEntity
    
    func transformResponseToEntity(response: Response) -> Entity
    func transformEntityToDomain(entity: Entity) -> Domain
    func transformPartEntityToDomain(result: PartEntity) -> PartDomain
}
