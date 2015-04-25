# typeahead-mvc-model
Extends Twitter's typeahead.js to work with MVC 5 models

This package extends upon the Twitter.Typeahead library and the Twitter.Typeahead.MVC library by hooking typeahead to MVC models. With a few configuration tweaks, you'll be connecting typeahead.js to your model in minutes!

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 15">
<meta name=Originator content="Microsoft Word 15">
<link rel=File-List
href="How%20to%20Setup%20Twitter%20Typeahead%20MVC%20Models_files/filelist.xml">
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>Tim Wilson</o:Author>
  <o:LastAuthor>Tim Wilson</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>766</o:TotalTime>
  <o:Created>2015-04-25T06:43:00Z</o:Created>
  <o:LastSaved>2015-04-25T06:43:00Z</o:LastSaved>
  <o:Pages>4</o:Pages>
  <o:Words>869</o:Words>
  <o:Characters>4954</o:Characters>
  <o:Company>Provision Ministry Group</o:Company>
  <o:Lines>41</o:Lines>
  <o:Paragraphs>11</o:Paragraphs>
  <o:CharactersWithSpaces>5812</o:CharactersWithSpaces>
  <o:Version>15.00</o:Version>
 </o:DocumentProperties>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->
<link rel=themeData
href="How%20to%20Setup%20Twitter%20Typeahead%20MVC%20Models_files/themedata.thmx">
<link rel=colorSchemeMapping
href="How%20to%20Setup%20Twitter%20Typeahead%20MVC%20Models_files/colorschememapping.xml">
<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:SpellingState>Clean</w:SpellingState>
  <w:GrammarState>Clean</w:GrammarState>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="371">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"/>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"/>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"/>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"/>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"/>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"/>
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;
	mso-font-charset:2;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:0 268435456 0 0 -2147483648 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1073750139 0 0 415 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-536870145 1073786111 1 0 415 0;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-520092929 1073806591 9 0 415 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
h1
	{mso-style-priority:9;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-link:"Heading 1 Char";
	mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	line-height:107%;
	mso-pagination:widow-orphan lines-together;
	page-break-after:avoid;
	mso-outline-level:1;
	font-size:16.0pt;
	font-family:"Calibri Light",sans-serif;
	mso-ascii-font-family:"Calibri Light";
	mso-ascii-theme-font:major-latin;
	mso-fareast-font-family:"Times New Roman";
	mso-fareast-theme-font:major-fareast;
	mso-hansi-font-family:"Calibri Light";
	mso-hansi-theme-font:major-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:major-bidi;
	color:#2E74B5;
	mso-themecolor:accent1;
	mso-themeshade:191;
	mso-font-kerning:0pt;
	font-weight:normal;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParagraphCxSpFirst
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListParagraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagraphCxSpLast
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:"Heading 1";
	mso-ansi-font-size:16.0pt;
	mso-bidi-font-size:16.0pt;
	font-family:"Calibri Light",sans-serif;
	mso-ascii-font-family:"Calibri Light";
	mso-ascii-theme-font:major-latin;
	mso-fareast-font-family:"Times New Roman";
	mso-fareast-theme-font:major-fareast;
	mso-hansi-font-family:"Calibri Light";
	mso-hansi-theme-font:major-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:major-bidi;
	color:#2E74B5;
	mso-themecolor:accent1;
	mso-themeshade:191;}
span.SpellE
	{mso-style-name:"";
	mso-spl-e:yes;}
span.GramE
	{mso-style-name:"";
	mso-gram-e:yes;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:1128821765;
	mso-list-type:hybrid;
	mso-list-template-ids:-1744151986 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1288049404;
	mso-list-type:hybrid;
	mso-list-template-ids:1211546128 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:1738548050;
	mso-list-type:hybrid;
	mso-list-template-ids:-276395256 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin-top:0in;
	mso-para-margin-right:0in;
	mso-para-margin-bottom:8.0pt;
	mso-para-margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=EN-US link="#0563C1" vlink="#954F72" style='tab-interval:.5in'>

<div class=WordSection1>

<h1>How to Setup Twitter Typeahead.js to work with MVC Models</h1>

<p class=MsoNormal><i style='mso-bidi-font-style:normal'><span
style='font-size:8.0pt;line-height:107%'>(Note: to use the Entity Framework
queries in this document, you will need to install the Adventure Works database
from here: <a href="https://msftdbprodsamples.codeplex.com/releases/view/55330">https://msftdbprodsamples.codeplex.com/releases/view/55330</a>.
If you don’t need to connect to a database or have a database connection, skip
ahead.<span style='mso-spacerun:yes'>  </span>Likewise, if you already have a
model you would like to connect to <span class=SpellE>typeahead</span>, skip
right ahead.)<o:p></o:p></span></i></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Edit ~\Views\Shared\_<span class=SpellE>Layout.cshtml</span>
to load the typeahead.js bundle, <span class=SpellE>Typeahead</span> stylesheet
and <span class=SpellE>javascript</span> that connects <span class=SpellE>Typeahead</span>
to your MVC 5 model</p>

<p class=MsoListParagraphCxSpLast style='margin-left:1.0in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>a.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add the line to load the <span class=SpellE>Typeahead</span>
stylesheet</p>

<p class=MsoNormal style='margin-left:1.0in'>In ~\Views\Shared\_<span
class=SpellE>Layout.cshtml</span>, add the following line before the close of
the head tag:<o:p></o:p></p>

<p class=MsoNormal style='margin-top:0in;margin-right:0in;margin-bottom:0in;
margin-left:1.0in;margin-bottom:.0001pt;line-height:normal;mso-layout-grid-align:
none;text-autospace:none'><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>&lt;</span><span
style='font-size:9.5pt;font-family:Consolas;color:maroon;background:white;
mso-highlight:white'>link</span><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'> </span><span class=SpellE><span
style='font-size:9.5pt;font-family:Consolas;color:red;background:white;
mso-highlight:white'>rel</span></span><span style='font-size:9.5pt;font-family:
Consolas;color:blue;background:white;mso-highlight:white'>=&quot;stylesheet&quot;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span style='font-size:9.5pt;font-family:Consolas;
color:red;background:white;mso-highlight:white'>type</span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>=&quot;text/<span class=SpellE>css</span>&quot;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span class=SpellE><span style='font-size:9.5pt;
font-family:Consolas;color:red;background:white;mso-highlight:white'>href</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>=&quot;~/Content/typeahead.css&quot;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>/&gt;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:1.0in'><span style='font-size:9.5pt;
line-height:107%;font-family:Consolas;color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:1.0in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>b.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add the line to load the <span class=SpellE>Typeahead</span>
MVC bundle <span class=SpellE>javascript</span> and <span class=SpellE>Typeahead</span>
MVC Model <span class=SpellE>javascript</span> (that connects <span
class=SpellE>Typeahead</span> to your MVC model):<o:p></o:p></p>

<p class=MsoNormal style='margin-left:1.0in'>In ~\Views\Shared\_<span
class=SpellE>Layout.cshtml</span>, add the following line after <span
class=SpellE>jquery</span> and bootstrap are both loaded:</p>

<p class=MsoNormal style='margin-top:0in;margin-right:0in;margin-bottom:0in;
margin-left:.5in;margin-bottom:.0001pt;text-indent:.5in;line-height:normal;
mso-layout-grid-align:none;text-autospace:none'><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>    </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:yellow;
mso-highlight:yellow'>@</span><span class=SpellE><span style='font-size:9.5pt;
font-family:Consolas;color:#2B91AF;background:white;mso-highlight:white'>Scripts</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>.Render</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'>(</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:#A31515;background:white;
mso-highlight:white'>&quot;~/bundles/<span class=SpellE>typeahead</span>&quot;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:1.0in'><span style='font-size:9.5pt;
line-height:107%;font-family:Consolas;color:black;background:white;mso-highlight:
white'><span style='mso-spacerun:yes'>    </span></span><span style='font-size:
9.5pt;line-height:107%;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>&lt;</span><span style='font-size:9.5pt;line-height:107%;
font-family:Consolas;color:maroon;background:white;mso-highlight:white'>script</span><span
style='font-size:9.5pt;line-height:107%;font-family:Consolas;color:black;
background:white;mso-highlight:white'> </span><span class=SpellE><span
style='font-size:9.5pt;line-height:107%;font-family:Consolas;color:red;
background:white;mso-highlight:white'>src</span></span><span style='font-size:
9.5pt;line-height:107%;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>=&quot;~/Scripts/typeahead.mvc.model.js&quot;</span><span
style='font-size:9.5pt;line-height:107%;font-family:Consolas;color:black;
background:white;mso-highlight:white'> </span><span style='font-size:9.5pt;
line-height:107%;font-family:Consolas;color:blue;background:white;mso-highlight:
white'>/&gt;</span><span style='font-size:9.5pt;line-height:107%;font-family:
Consolas;color:black'><o:p></o:p></span></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add a new Model to your project</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>a.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Right-click on the Models folder and choose Add
&gt; New Item…</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>b.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For the Name, type <span class=SpellE>HelloWorld.cs</span>
and click Add</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>c.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>In the Editor, add 3 new properties to the
class. Hit F6 to Save and Build your project</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-top:0in;margin-right:0in;
margin-bottom:0in;margin-left:.75in;margin-bottom:.0001pt;mso-add-space:auto;
line-height:normal;mso-layout-grid-align:none;text-autospace:none'><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'><span style='mso-spacerun:yes'>        </span></span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>public</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span class=SpellE><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>int</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> <span class=SpellE>HelloWorldId</span> { </span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>get</span><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'>; </span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>set</span><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'>; }<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-top:0in;margin-right:0in;
margin-bottom:0in;margin-left:.75in;margin-bottom:.0001pt;mso-add-space:auto;
line-height:normal;mso-layout-grid-align:none;text-autospace:none'><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'><span style='mso-spacerun:yes'>        </span></span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>public</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>string</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> Message { </span><span style='font-size:9.5pt;font-family:
Consolas;color:blue;background:white;mso-highlight:white'>get</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>; </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>set</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>; }<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-top:0in;margin-right:0in;
margin-bottom:0in;margin-left:.75in;margin-bottom:.0001pt;mso-add-space:auto;
line-height:normal;mso-layout-grid-align:none;text-autospace:none'><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'><span style='mso-spacerun:yes'>        </span></span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>public</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>string</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> Person { </span><span style='font-size:9.5pt;font-family:
Consolas;color:blue;background:white;mso-highlight:white'>get</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>; </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>set</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>; }<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-top:0in;margin-right:0in;
margin-bottom:0in;margin-left:.75in;margin-bottom:.0001pt;mso-add-space:auto;
line-height:normal;mso-layout-grid-align:none;text-autospace:none'><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'><span style='mso-spacerun:yes'>        </span></span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>public</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span class=SpellE><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>int</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> <span class=SpellE>PersonId</span> { </span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>get</span><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'>; </span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>set</span><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'>; }<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;line-height:normal;mso-layout-grid-align:none;
text-autospace:none'><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add the Entity Framework for AdventureWorks2012
to your project.</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>a.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Right-click on your project and choose Add &gt;
New Item…</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>b.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Choose “ADO.NET Entity Data Model”. For Name,
type “<span class=SpellE>AWModel</span>.” Click Add</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>c.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Choose “EF Designer from data…” Click Next &gt;</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>d.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Click New Connection…</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>e.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For Server name, type the name of the server you
attached the AdventureWorks2012 database to. For “Select or enter a database
name”, choose AdventureWorks2012. Click Ok</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>f.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For “Save connection settings in <span
class=SpellE>Web.Config</span> as”, type <span class=SpellE>AWEntities</span>.
Click Next &gt;</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>g.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Expand Tables and Person. Choose Person</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>h.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For Model Namespace, type <span class=SpellE>AWModel</span>.
Click Finish</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>i.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For some reason, Entity Framework does not like
it when an entity’s primary key does not match the entity name. To fix this,
open up <span class=SpellE>AWModel.edmx</span></p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpLast style='margin-left:1.0in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>j.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Rename the <span class=SpellE>BusinessEntityId</span>
column to <span class=SpellE>PersonId</span>. Hit F6 to Save and Build your
project</p>

<p class=MsoNormal style='margin-top:0in;margin-right:0in;margin-bottom:0in;
margin-left:1.0in;margin-bottom:.0001pt;line-height:normal;mso-layout-grid-align:
none;text-autospace:none'><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>4.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add a new <span class=SpellE>Scaffolded</span>
Item to your project</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>a.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Right-click on the Controllers folder and choose
Add &gt; New <span class=SpellE>Scaffolded</span> Item…</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>b.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Choose “MVC 5 Controller with views, using
Entity Framework”. Click Add</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>c.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For the Model class, choose HelloWorld ([Project
Name].Models)</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>d.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For the Data context class, choose the data
context you created earlier, <span class=SpellE>AWEntities</span> ([Project
Name])</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>e.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For the Controller name, <span class=SpellE>HelloWorldController</span>.
Click Add</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>5.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>You now have a Controller, Model and View. It’s
time to get to work!</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>6.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Open up <span class=SpellE>HelloWorldController.cs</span>.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>7.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Near the top of the file, add the using
statements for Entity Framework exceptions:</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle><span class=GramE><span style='font-size:
9.5pt;line-height:107%;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>using</span></span><span style='font-size:9.5pt;
line-height:107%;font-family:Consolas;color:black;background:white;mso-highlight:
white'> <span class=SpellE>System.Data.Entity.Core</span>;</span><span
style='font-size:9.5pt;line-height:107%;font-family:Consolas;color:black'><o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpLast style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>8.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add code to get people out of the
AdventureWorks2012 database using Entity Framework:</p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>        </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>private</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> </span><span
style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;background:white;
mso-highlight:white'>List</span><span style='font-size:9.5pt;font-family:Consolas;
color:black;background:white;mso-highlight:white'>&lt;</span><span
style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;background:white;
mso-highlight:white'>Autocomplete</span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'>&gt; _<span
class=SpellE>GetPeople</span>(</span><span style='font-size:9.5pt;font-family:
Consolas;color:blue;background:white;mso-highlight:white'>string</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> query)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>        </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span></span><span style='font-size:9.5pt;
font-family:Consolas;color:#2B91AF;background:white;mso-highlight:white'>List</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>&lt;</span><span style='font-size:9.5pt;font-family:Consolas;
color:#2B91AF;background:white;mso-highlight:white'>Autocomplete</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>&gt; people = </span><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>new</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> </span><span style='font-size:9.5pt;font-family:Consolas;
color:#2B91AF;background:white;mso-highlight:white'>List</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>&lt;</span><span style='font-size:9.5pt;font-family:Consolas;
color:#2B91AF;background:white;mso-highlight:white'>Autocomplete</span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:black;
background:white;mso-highlight:white'>&gt;(</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>);<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>try</span></span><span style='font-size:9.5pt;font-family:
Consolas;color:black;background:white;mso-highlight:white'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span></span><span class=SpellE><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>var</span></span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> results = (</span><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>from</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> p </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>in</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> <span class=SpellE>db.People</span><o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                               </span></span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>where</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> (<span class=SpellE>p.FirstName</span> + </span><span
style='font-size:9.5pt;font-family:Consolas;color:#A31515;background:white;
mso-highlight:white'>&quot; &quot;</span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> + <span
class=SpellE>p.LastName</span>).Contains(query)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                               </span></span><span
class=SpellE><span class=GramE><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>orderby</span></span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> <span class=SpellE>p.FirstName,p.LastName</span><o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                               </span></span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>select</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> p).Take(10).<span class=SpellE>ToList</span>();<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span></span><span class=SpellE><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>foreach</span></span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> (</span><span class=SpellE><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>var</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> r </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>in</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> results)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                    </span></span><span
style='font-size:9.5pt;font-family:Consolas;color:green;background:white;
mso-highlight:white'>// create objects</span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                    </span></span><span
style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;background:white;
mso-highlight:white'>Autocomplete</span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> person
= </span><span style='font-size:9.5pt;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>new</span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> </span><span
class=GramE><span style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;
background:white;mso-highlight:white'>Autocomplete</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>(</span></span><span style='font-size:9.5pt;font-family:
Consolas;color:black;background:white;mso-highlight:white'>);<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                    </span><span class=SpellE>person.Name</span>
= </span><span class=SpellE><span class=GramE><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>string</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>.Format</span></span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>(</span></span><span style='font-size:9.5pt;font-family:
Consolas;color:#A31515;background:white;mso-highlight:white'>&quot;{0}
{1}&quot;</span><span style='font-size:9.5pt;font-family:Consolas;color:black;
background:white;mso-highlight:white'>, <span class=SpellE>r.FirstName</span>, <span
class=SpellE>r.LastName</span>);<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                    </span><span class=SpellE>person.Id</span>
= <span class=SpellE>r.PersonId</span>;<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                    </span><span class=SpellE><span
class=GramE>people.Add</span></span><span class=GramE>(</span>person);<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span>}<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span>}<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>catch</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> (</span><span
class=SpellE><span style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;
background:white;mso-highlight:white'>EntityCommandExecutionException</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> <span class=SpellE>eceex</span>)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>if</span></span><span style='font-size:9.5pt;font-family:
Consolas;color:black;background:white;mso-highlight:white'> (<span
class=SpellE>eceex.InnerException</span> != </span><span style='font-size:9.5pt;
font-family:Consolas;color:blue;background:white;mso-highlight:white'>null</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                    </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>throw</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> <span
class=SpellE>eceex.InnerException</span>;<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span>}<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>throw</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'>;<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span>}<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>catch</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>                </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>throw</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'>;<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span>}<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>return</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> people;<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>        </span>}<o:p></o:p></span></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraph style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>9.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Add code to return the people in JSON format:</p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>        </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>public</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> </span><span
class=SpellE><span style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;
background:white;mso-highlight:white'>ActionResult</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'> <span class=SpellE>GetPeople</span>(</span><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>string</span><span style='font-size:9.5pt;font-family:
Consolas;color:black;background:white;mso-highlight:white'> query)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>        </span>{<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal;mso-layout-grid-align:none;text-autospace:none'><span style='font-size:
9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>            </span></span><span class=GramE><span
style='font-size:9.5pt;font-family:Consolas;color:blue;background:white;
mso-highlight:white'>return</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'> <span
class=SpellE>Json</span>(_<span class=SpellE>GetPeople</span>(query), </span><span
class=SpellE><span style='font-size:9.5pt;font-family:Consolas;color:#2B91AF;
background:white;mso-highlight:white'>JsonRequestBehavior</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>.AllowGet</span></span><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:white;mso-highlight:white'>);<o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:9.5pt;line-height:107%;font-family:
Consolas;color:black;background:white;mso-highlight:white'><span
style='mso-spacerun:yes'>        </span>}</span><o:p></o:p></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>10.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>Add a using statement after the @model line at
the top of the file so our <span class=SpellE>HtmlHelper</span> is available in
the View:<o:p></o:p></p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-size:9.5pt;line-height:
107%;font-family:Consolas;color:black;background:yellow;mso-highlight:yellow'>@</span><span
style='font-size:9.5pt;line-height:107%;font-family:Consolas;color:blue;
background:white;mso-highlight:white'>using</span><span style='font-size:9.5pt;
line-height:107%;font-family:Consolas;color:black;background:white;mso-highlight:
white'> WebApplication2.Models</span><span style='font-size:9.5pt;line-height:
107%;font-family:Consolas;color:black'><o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>11.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>Since we are hiding the <span class=SpellE>PersonId</span>,
we can remove the following code from the View:</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>12.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>For <span class=SpellE>model.Name</span>, we
need to change the control from <span class=SpellE>EditorFor</span> to <span
class=SpellE>AutocompleteFor</span>. We also need to specify the key field, the
method that <span class=SpellE>Typeahead</span> will call to get the people.
The last parameter is false which will not have this field get the focus when
the page is opened.</p>

<p class=MsoListParagraphCxSpLast><o:p>&nbsp;</o:p></p>

<p class=MsoNormal style='margin-top:0in;margin-right:0in;margin-bottom:0in;
margin-left:.5in;margin-bottom:.0001pt;line-height:normal;mso-layout-grid-align:
none;text-autospace:none'><span class=GramE><span style='font-size:9.5pt;
font-family:Consolas;color:black;background:yellow;mso-highlight:yellow'>@</span><span
class=SpellE><span style='font-size:9.5pt;font-family:Consolas;color:black;
background:white;mso-highlight:white'>Html.AutocompleteFor</span></span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>(</span></span><span style='font-size:9.5pt;font-family:
Consolas;color:black;background:white;mso-highlight:white'>model =&gt; <span
class=SpellE>model.Name</span>, model =&gt; <span class=SpellE>model.PersonId</span>,
</span><span style='font-size:9.5pt;font-family:Consolas;color:#A31515;
background:white;mso-highlight:white'>&quot;<span class=SpellE>GetPeople</span>&quot;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>, </span><span style='font-size:9.5pt;font-family:Consolas;
color:#A31515;background:white;mso-highlight:white'>&quot;HelloWorld&quot;</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>, </span><span style='font-size:9.5pt;font-family:Consolas;
color:blue;background:white;mso-highlight:white'>false</span><span
style='font-size:9.5pt;font-family:Consolas;color:black;background:white;
mso-highlight:white'>)</span><span style='font-size:9.5pt;font-family:Consolas;
color:black'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-top:0in;margin-right:0in;margin-bottom:0in;
margin-left:.5in;margin-bottom:.0001pt;line-height:normal;mso-layout-grid-align:
none;text-autospace:none'><span style='font-size:9.5pt;font-family:Consolas;
color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpFirst style='margin-bottom:0in;margin-bottom:.0001pt;
mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>13.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>In <span class=SpellE>HelloWorldController</span>,
set a breakpoint in the second Create() (under the [<span class=SpellE>HttpPost</span>]
declaration) to inspect the results returned from web page after we test out <span
class=SpellE>Typeahead</span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;line-height:normal;mso-layout-grid-align:none;
text-autospace:none'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>14.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>Set a breakpoint on the first line in the
Create() method (underneath the <span class=SpellE>HttpPost</span>()
declaration)</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>15.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>Go back to <span class=SpellE>Create.cshtml</span>
and hit F5 to test things out</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>16.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>For Message, type “Hello World!”</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>17.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>For Name, type “Anna.”<span
style='mso-spacerun:yes'>  </span>It might take a second or two but the list
will populate with the top 10 matches. Choose “Anna Albright”</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-bottom:0in;margin-bottom:
.0001pt;mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>18.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>Notice that, in your breakpoint, if you expand “<span
class=SpellE>helloWorld</span><span class=GramE>”, that</span> <span
class=SpellE>PersonId</span> is automatically set to 325.<span
style='mso-spacerun:yes'>  </span>Neat, huh?</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpLast style='margin-bottom:0in;margin-bottom:.0001pt;
mso-add-space:auto;text-indent:-.25in;line-height:normal;mso-list:l0 level1 lfo1;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>19.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]>I will leave it to you to implement writing <span
class=SpellE>helloWorld</span> back at to a database.<span
style='mso-spacerun:yes'>  </span>This is an example after all <span
style='font-family:Wingdings;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>J</span></span><o:p></o:p></p>

<p class=MsoNormal style='margin-left:1.0in'><o:p>&nbsp;</o:p></p>

<p class=MsoNormal style='margin-left:1.0in'><o:p>&nbsp;</o:p></p>

<p class=MsoNormal style='margin-left:1.0in'><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>
