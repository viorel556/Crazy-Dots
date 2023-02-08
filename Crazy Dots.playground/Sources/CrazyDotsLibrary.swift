//
//  CrazyDotsLibrary.swift
//  
//
//  Created by Viorel Harabaru  on 08.02.2023.
//

// MARK: Modeling a dot
public struct Dot {
    // MARK: DOT PROPERTIES
    // Properties used for Initialization
    var dotName: String
    var dotID: Int
    var connectTo: [Int] // using an array here sinc a dot can be connected to multiple dots
    
    // properties not used in intializer
    // every dot has a default start position (CENTER)
    var dotPosition:(Float, Float) = (650.00, 300.00)
    
    // MARK: DOT INITIALIZER
    public init(dotName: String, dotID: Int, connectTo: [Int]) {
        self.dotName = dotName
        self.dotID = dotID
        self.connectTo = connectTo
    }
    
    // MARK: DOT METHODS
     // Making a mutating method
    // this method will modify dotPosition property (will move the dot)
    public mutating func moveDot(direction: String){
        switch direction {
        case "Right": dotPosition.0 += 150 // moves dot +150 to right
        case "Left": dotPosition.0 -= 150
        case "Up": dotPosition.1 -= 50
        case "Down": dotPosition.1 += 50
        default: break
        }
    }
    
    // FUNCTION TO PRINT DOT IN XML FORMAT
    public func printDot() -> String {
        // Formating data for XML format:
        let position: String = "\(dotPosition.0), \(dotPosition.1)"
        let connections = connectTo.map(String.init).joined(separator: ",")
        
        // func returns created dot in Scapple XML format:
        return """
        <Note ID="\(dotID)" FontSize="12.0" Position="\(position)" Width="85.0">
            <Appearance>
                <Alignment>Center</Alignment>
            </Appearance>
            <String>\(dotName)</String>
            <ConnectedNoteIDs>\(connections)</ConnectedNoteIDs>
        </Note>
        """
    }
}

var scheme = ""
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





