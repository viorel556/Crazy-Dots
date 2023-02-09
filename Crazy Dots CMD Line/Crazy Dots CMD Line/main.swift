// CRAZY DOTS for Swift v 1.0

public struct Scheme {
    
    // MARK: CREATE YOUR DOTS HERE:
    var king = Dot(dotName:"KING dot", dotID: 0, connectTo: [1,2])
    var queen = Dot(dotName: "QUEN dot", dotID: 1, connectTo: [0,2])
    var child = Dot(dotName: "CHILD dot", dotID: 2, connectTo: [0,1,2])
    
    // MARK: move created dots HERE:
    /// by default all dots are initiated in center on top of each other
    init() {
        queen.moveDot(direction: "Right")
        child.moveDot(direction: "Down")
    }
}

generateScheme()
saveToDesk()

print(plot)


    

