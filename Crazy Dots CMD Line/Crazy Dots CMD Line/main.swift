// CRAZY DOTS for Swift v 1.0
// DOTS ARE CREATED HERE:

public struct Scheme {
    
    // MARK: YOUR CODE GOES HERE:
    
    /// When dots are initalized, they have a central location on the screen.
    /// Their connections are already made with connectTo
    /// However, we have to still 
    
    // CREATE YOUR DOTS:
    var king = Dot(dotName:"KING dot",
                   dotID: 0,
                   connectTo: [1]) /// making a king connected to queen.dotID : 0
    ///
    var queen = Dot(dotName: "QUEEN dot",
                    dotID: 1,
                    connectTo: [0]) /// making a queen connected to king.dotID: 1
    ///
    
    var vassalVania  = Dot(dotName: "Vania", dotID: 2, connectTo: [0])
    
    
    
    // MARK: move created dots HERE:
    /// by default all dots are initiated in center on top of each other
    init() {
        
        king.moveDot(direction: "Right") /// move king to the left x1
        queen.moveDot(direction: "Left") /// move queen to the right x1
        vassalVania.moveDot(direction: "Down")
        vassalVania.moveDot(direction: "Right")
    }
}

generateScheme()
/// generating the scheme;
saveToDesk()
/// saving the scheme on desktop as "test.scap" file;


    

