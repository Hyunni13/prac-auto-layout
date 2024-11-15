//
//  Logger.swift
//  prac-auto-layout
//
//  Created by James on 10/11/24.
//

final class Logger {
    
    enum Log: String {
        case lifeCycle = "🛟"
        case others = "📌"
    }
    
    /**
     커스텀 로깅
     
     - Parameters message: 커스텀 로깅 내용
     */
    static func log(
        _ message: Any? = nil,
        type: Log = .others,
        filePath: String = #fileID,
        functionName: String = #function
    ) {
        let fileName = extractName(from: filePath)
        
        print("""
        \(type.rawValue) \(fileName) > \(functionName)
        ⎿ message: \(message ?? "nil")
        """)
    }
    
    private static func extractName(from filePath: String) -> String {
        return String(filePath.split(separator: "/")[1])
    }
    
}
