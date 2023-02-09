// CRAZY DOTS for Swift v 1.0
// DOTS ARE CREATED HERE:

public struct Scheme {
    
    // MARK: YOUR CODE GOES HERE:
    
    // CREATE YOUR DOTS:
    var king = Dot(dotName:"KING dot", dotID: 0, connectTo: [0])
    /// making a king connected to queen.dotID - 0
    var queen = Dot(dotName: "QUEN dot", dotID: 1, connectTo: [1])
    /// making a queen connected to king.dotID - 1
    
    
    // MARK: move created dots HERE:
    /// by default all dots are initiated in center on top of each other
    init() {
        king.moveDot(direction: "Right") /// move king to the left x1
        queen.moveDot(direction: "Right") /// move queen to the right x1
    }
}

generateScheme()
/// generating the scheme;
saveToDesk()
/// saving the scheme on desktop as "test.scap" file;


    

