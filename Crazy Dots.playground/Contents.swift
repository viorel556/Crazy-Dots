struct Dot {
    
    // properties used to initialize
    var dotName: String
    var dotID: Int
    var connectTo: [Int]
    
    // props not used in intializer | have a default value (CENTER)
    var dotPosition:(Float, Float) = (650.00, 300.00)
    
    // INITIALIZER
    init(dotName: String, dotID: Int, connectTo: [Int]) {
        self.dotName = dotName
        self.dotID = dotID
        self.connectTo = connectTo
    }
    
    // MAKING A MUTATING FUNCTION
    // this function will modify dotPosition property
    mutating func moveDot(direction: String){
        switch direction {
        case "Right": dotPosition.0 += 150
        case "Left": dotPosition.0 -= 150
        case "Up": dotPosition.1 -= 50
        case "Down": dotPosition.1 += 50
        default: dotPosition
        }
    }
    // Function to print stuff according to XML
    func printDot() -> String {
        // converting position from tupple to String:
        var position: String = "\(dotPosition.0), \(dotPosition.1)"
        var connections = connectTo.map(String.init).joined(separator: ",")
        
        return """
        <Note ID="\(dotID)" FontSize="15.0" Position="\(position)" Width="85.0" Shadow="Yes">
            <Appearance>
                <Alignment>Center</Alignment>
                <Border Weight="1" Style="Rounded"></Border>
            </Appearance>
            <String>\(dotName)</String>
            <ConnectedNoteIDs>\(connections)</ConnectedNoteIDs>
        </Note>
        """
    }
}

// Creating some dots
var dot0 = Dot(dotName: "THE KING", dotID: 0, connectTo: [1,2,3])

var dot1 = Dot(dotName: "Vasal 1", dotID: 1, connectTo: [0])
dot1.moveDot(direction: "Left")
dot1.moveDot(direction: "Down")

var dot2 = Dot(dotName: "Vasal 2", dotID: 2, connectTo: [0])
dot2.moveDot(direction: "")
dot2.moveDot(direction: "Down")

var dot3 = Dot(dotName: "Vasal 3 ", dotID: 3, connectTo: [0])
dot3.moveDot(direction: "Right")
dot3.moveDot(direction: "Down")


// test


var scheme = ""
scheme.append(dot0.printDot())
scheme.append(dot1.printDot())
scheme.append(dot2.printDot())
scheme.append(dot3.printDot())

// MARK: PLOTING AREA
var plot = """
<?xml version="1.0" encoding="UTF-8"?>
<ScappleDocument Version="1.2" ID="D95CC5C0-B4ED-42B0-ADC0-EBD32EAF3DAE">

    <Notes>
        \(scheme)
    </Notes>

    <BackgroundShapes></BackgroundShapes>
    <AutoFit>0-1</AutoFit>
    <NoteStyles>
        <Style Name="Bubble (Blue)" ID="7C894216-A874-4F18-9180-1FD156EDA5D5" AffectFontStyle="No" AffectAlignment="No" AffectTextColor="No" AffectNoteBody="Yes" AffectFade="No">
            <BorderThickness>1</BorderThickness>
            <BorderColor>0.668962 0.810287 0.895092</BorderColor>
            <FillColor>0.743291 0.900319 0.994547</FillColor>
        </Style>
        <Style Name="Bubble (Green)" ID="FE373343-83A3-42DB-94BE-8CCF27A5ACD6" AffectFontStyle="No" AffectAlignment="No" AffectTextColor="No" AffectNoteBody="Yes" AffectFade="No">
            <BorderThickness>1</BorderThickness>
            <BorderColor>0.669404 0.885265 0.567007</BorderColor>
            <FillColor>0.743783 0.983628 0.630008</FillColor>
        </Style>
        <Style Name="Bubble (Pink)" ID="DDABA2A5-5405-4426-8B9F-B163C8E0CF28" AffectFontStyle="No" AffectAlignment="No" AffectTextColor="No" AffectNoteBody="Yes" AffectFade="No">
            <BorderThickness>1</BorderThickness>
            <BorderColor>0.894547 0.707772 0.715904</BorderColor>
            <FillColor>0.989115 0.814114 0.999483</FillColor>
        </Style>
        <Style Name="Bubble (Red)" ID="D5AA367B-8A87-450E-8771-4D397C1B95A8" AffectFontStyle="No" AffectAlignment="No" AffectTextColor="No" AffectNoteBody="Yes" AffectFade="No">
            <BorderThickness>1</BorderThickness>
            <BorderColor>0.894547 0.707772 0.715904</BorderColor>
            <FillColor>0.993942 0.786413 0.795449</FillColor>
        </Style>
        <Style Name="Bubble (Yellow)" ID="2CA4600A-DD92-49C9-9C9E-9694C5DE702C" AffectFontStyle="No" AffectAlignment="No" AffectTextColor="No" AffectNoteBody="Yes" AffectFade="No">
            <BorderThickness>1</BorderThickness>
            <BorderColor>0.877748 0.828289 0.562126</BorderColor>
            <FillColor>0.975275 0.920321 0.624585</FillColor>
        </Style>
        <Style Name="Red Text" ID="37DEC0DD-8D62-436E-8C07-4573A7EDFF41" AffectFontStyle="No" AffectAlignment="No" AffectTextColor="Yes" AffectNoteBody="No" AffectFade="No">
            <TextColor>0.985954 0.0 0.02694</TextColor>
        </Style>
        <Style Name="Title Text" ID="E9E58A1E-56BE-42E3-B460-3537E47F4726" AffectFontStyle="Yes" AffectAlignment="Yes" AffectTextColor="No" AffectNoteBody="No" AffectFade="No">
            <FontSize>28.0</FontSize>
            <IsBold>Yes</IsBold>
        </Style>
    </NoteStyles>
    <UISettings>
        <BackgroundColor>0.999763 0.988395 0.949915</BackgroundColor>
        <DefaultFont>Helvetica</DefaultFont>
        <NoteXPadding>8.0</NoteXPadding>
    </UISettings>
    <PrintSettings PaperSize="595.0,842.0" LeftMargin="72.0" RightMargin="72.0" TopMargin="90.0" BottomMargin="90.0" PaperType="iso-a4" Orientation="Portrait" HorizontalPagination="Clip" VerticalPagination="Auto" ScaleFactor="1.0" HorizontallyCentered="Yes" VerticallyCentered="Yes" Collates="Yes" PagesAcross="1" PagesDown="1"></PrintSettings>
</ScappleDocument>
"""

print(plot)



