
public class CalcMEI_Core {
    
    // Persistence
    private lazy var coreDataManager: CoreDataManaging = {
        return CoreDataManager()
    }()
    
    // Public Services
    public var consultService: ConsultServiceProtocol {
        return ConsultService(
            coreDataManager: coreDataManager
        )
    }
    
    public init() {}
}
