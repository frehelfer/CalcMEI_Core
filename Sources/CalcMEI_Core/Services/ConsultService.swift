//
//  ConsultService.swift
//  calcMEI
//
//  Created by Frédéric Helfer on 23/03/23.
//

import Foundation
import CoreData

public protocol ConsultServiceProtocol {
    func createFetchedResultsController() -> NSFetchedResultsController<Consult>?
    func createConsult(count: Count)
    func deleteConsult(consult: Consult)
}

class ConsultService: ConsultServiceProtocol {
    
    private let coreDataManager: CoreDataManaging
    
    init(coreDataManager: CoreDataManaging) {
        self.coreDataManager = coreDataManager
    }
    
    func createFetchedResultsController() -> NSFetchedResultsController<Consult>? {
        NSFetchedResultsController(
            fetchRequest: allConsults,
            managedObjectContext: coreDataManager.viewContext,
            sectionNameKeyPath: nil,
            cacheName: nil
        )
    }
    
    func createConsult(count: Count) {
        let newConsult = Consult(context: coreDataManager.viewContext)
        newConsult.id = count.id
        newConsult.name = count.name
        newConsult.hasToDeclare = count.hasToDeclare
        newConsult.date = count.date
        newConsult.inServiceProvision = count.inServiceProvision
        newConsult.inCommerce = count.inCommerce
        newConsult.inPassengerTransport = count.inPassengerTransport
        newConsult.outExpenses = count.outExpenses
        newConsult.receitaBrutaAnual = count.receitaBrutaAnual
        newConsult.lucroApurado = count.lucroApurado
        newConsult.rendimentoIsento = count.rendimentoIsento
        newConsult.rendimentoTributavel = count.rendimentoTributavel
        
        coreDataManager.saveContext()
        print(#function)
    }
    
    func deleteConsult(consult: Consult) {
        let context = coreDataManager.viewContext
        
        context.delete(consult)
        
        coreDataManager.saveContext()
        print(#function)
    }
    
}

// MARK: - Fetch Requests
private extension ConsultService {

    var allConsults: NSFetchRequest<Consult> {
        let fetchRequest: NSFetchRequest<Consult> = Consult.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "date", ascending: true)]
        return fetchRequest
    }
}
