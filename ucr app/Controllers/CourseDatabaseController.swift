import Foundation

class CourseDatabaseController {
    
    let courseDatabaseManager = CourseDatabaseManager()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        courseDatabaseManager.fetchData()
    }
    

}
