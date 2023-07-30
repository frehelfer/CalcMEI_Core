
public class CalcMEI_Core {
    
    // Persistence
    private var coreDataManager: CoreDataManaging = {
        return CoreDataManager()
    }()
    
    // Public Services
    public var consultService: ConsultServiceProtocol {
        return ConsultService(
            coreDataManager: coreDataManager
        )
    }
    
    public var analyticsService: AnalyticsServiceProtocol {
        return AnalyticsService()
    }
    
    public init() {}
}
