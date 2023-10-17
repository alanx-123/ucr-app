import Foundation

class CourseDatabaseManager {
    
    let apiKey = "AIzaSyANxeQSlGS-gIG-R49AC36yfCoENgdf1TI"
    let spreadsheetId = "1qiy_Oi8aFiPmL4QSTR3zHe74kmvc6e_159L1mAUUlU0"
    let sheetName = "Sheet1"
    
    func fetchData() {
        let urlString = "https://sheets.googleapis.com/v4/spreadsheets/\(spreadsheetId)/values/\(sheetName)?key=\(apiKey)"
        
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            if let data = data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        // Parse the JSON
                        if let values = json["values"] as? [[Any]] {
                            for row in values {
                                print("Row:")
                                for cell in row {
                                    print("Cell: \(cell)")
                                }
                            }
                        }
                    }
                } catch {
                    print("JSON parsing error: \(error)")
                }
            }
        }
        
        task.resume()
    }
}
