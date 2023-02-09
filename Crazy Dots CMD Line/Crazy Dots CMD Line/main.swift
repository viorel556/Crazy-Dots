import Foundation

// MARK: DECLARE DOTS HERE with Dot()
// PREFERABLY MOVE THEM RIGHT AWWAY with move <dotName>.moveDot(direction: )

var dot1 = Dot(dotName:"Test KING", dotID: 0, connectTo: [1])
var dot2 = Dot(dotName: "King's Child", dotID: 1, connectTo: [0])
dot2.moveDot(direction: "Down")


// MARK: ADD DOTS INTO THE SCHEME
scheme = ""

scheme.append(dot1.printDot())
scheme.append(dot2.printDot())

// MARK: Editing the file:
//  we already have a file in the map.
// we're telling swift to rewrite it;
//let fileManager = FileManager.default
//if let dir = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first {
//    let fileURL = dir.appendingPathComponent("test.scap")
//    do {
//        try plot.write(to: fileURL, atomically: false, encoding: .utf8)
//    } catch {
//        print("Was not able to export!")
//    }
//}

let fileManager = FileManager.default
if let dir = fileManager.urls(for: .desktopDirectory, in: .userDomainMask).first {
    let fileURL = dir.appendingPathComponent("test.scap")
    do {
        try plot.write(to: fileURL, atomically: false, encoding: .utf8)
    } catch {
        print("Was not able to export!")
    }
}
