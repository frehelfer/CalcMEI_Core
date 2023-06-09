//
//  Count.swift
//  calcMEI
//
//  Created by Frédéric Helfer on 16/02/23.
//

import Foundation

public struct Count: Identifiable {
    public var id = UUID()
    public var date = Date()
    public var name: String?
    
    public var inServiceProvision: Double = 0
    public var inCommerce: Double = 0
    public var inPassengerTransport: Double = 0
    
    public var outExpenses: Double = 0
    
    // TODO: Change variable names
    public var receitaBrutaAnual: Double = 0
    public var lucroApurado: Double = 0
    public var rendimentoIsento: Double = 0
    public var rendimentoTributavel: Double = 0
    public var hasToDeclare: Bool = false
    
    public init(id: UUID = UUID(), date: Date = Date(), name: String? = nil, inServiceProvision: Double = 0, inCommerce: Double = 0, inPassengerTransport: Double = 0, outExpenses: Double = 0) {
        self.id = id
        self.date = date
        self.name = name
        self.inServiceProvision = inServiceProvision
        self.inCommerce = inCommerce
        self.inPassengerTransport = inPassengerTransport
        self.outExpenses = outExpenses
    }
}
