/*
 
 DefaultSettings.swift
 
 CotEditor
 https://coteditor.com
 
 Created by 1024jp on 2016-06-23.
 
 ------------------------------------------------------------------------------
 
 © 2004-2007 nakamuxu
 © 2014-2016 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 https://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import AppKit.NSFont

let DefaultSettings: [DefaultKeys: Any] = [
    .createNewAtStartup: true,
    .reopenBlankWindow: true,
    .windowTabbing: -1,  // = Respect System Setting
    .enablesAutosaveInPlace: true,
    .trimsTrailingWhitespaceOnSave: false,
    .documentConflictOption: DocumentConflictOption.revert.rawValue,
    .syncFindPboard: false,
    .inlineContextualScriptMenu: false,
    .countLineEndingAsChar: true,
    .autoLinkDetection: false,
    .checkSpellingAsType: false,
    .highlightBraces: true,
    .highlightLtGt: false,
    .checksUpdatesForBeta: false,
    
    .showNavigationBar: true,
    .showDocumentInspector: false,
    .showStatusBar: true,
    .showLineNumbers: true,
    .showPageGuide: false,
    .pageGuideColumn: 80,
    .showStatusBarLines: true,
    .showStatusBarChars: true,
    .showStatusBarLength: false,
    .showStatusBarWords: false,
    .showStatusBarLocation: true,
    .showStatusBarLine: true,
    .showStatusBarColumn: false,
    .showStatusBarEncoding: false,
    .showStatusBarLineEndings: false,
    .showStatusBarFileSize: true,
    .splitViewVertical: false,
    .windowWidth: 600.0,
    .windowHeight: 620.0,
    .windowAlpha: 1.0,
    
    .fontName: (NSFont.userFont(ofSize: 0) ?? NSFont.systemFont(ofSize: 0)).fontName,
    .fontSize: NSFont.systemFontSize(),
    .shouldAntialias: true,
    .lineHeight: 1.2,
    .highlightCurrentLine: false,
    .showInvisibles: false,
    .showInvisibleSpace: false,
    .invisibleSpace: 0,
    .showInvisibleTab: true,
    .invisibleTab: 0,
    .showInvisibleNewLine: true,
    .invisibleNewLine: 0,
    .showInvisibleFullwidthSpace: false,
    .invisibleFullwidthSpace: 0,
    .showOtherInvisibleChars: false,
    .theme: "Dendrobates",
    
    .smartInsertAndDelete: false,
    .balancesBrackets: false,
    .swapYenAndBackSlash: false,
    .enableSmartQuotes: false,
    .enableSmartDashes: false,
    .autoIndent: true,
    .tabWidth: 4,
    .autoExpandTab: false,
    .detectsIndentStyle: true,
    .appendsCommentSpacer: true,
    .commentsAtLineHead: true,
    .wrapLines: true,
    .enablesHangingIndent: true,
    .hangingIndentWidth: 0,
    .completesDocumentWords: true,
    .completesSyntaxWords: true,
    .completesStandartWords: false,
    .autoComplete: false,
    
    .lineEndCharCode: 0,
    .encodingList: DefaultEncodings.map { UInt($0) },
    .encodingInNew: String.Encoding.utf8.rawValue,
    .encodingInOpen: String.Encoding.autoDetection.rawValue,
    .saveUTF8BOM: false,
    .referToEncodingTag: true,
    .enableSyntaxHighlight: true,
    .syntaxStyle: "Plain Text",
    
    .fileDropArray: [[FileDropComposer.SettingKey.extensions: "jpg, jpeg, gif, png",
                      FileDropComposer.SettingKey.formatString: "<img src=\"<<<RELATIVE-PATH>>>\" alt=\"<<<FILENAME-NOSUFFIX>>>\" title=\"<<<FILENAME-NOSUFFIX>>>\" width=\"<<<IMAGEWIDTH>>>\" height=\"<<<IMAGEHEIGHT>>>\" />"]],
    
    .insertCustomTextArray: ["<br />\n", "", "", "", "", "", "", "", "", "", "",
                             "", "", "", "", "", "", "", "", "", "",
                             "", "", "", "", "", "", "", "", "", ""],
    
    .setPrintFont: false,
    .printFontName: (NSFont.userFont(ofSize: 0) ?? NSFont.systemFont(ofSize: 0)).fontName,
    .printFontSize: NSFont.systemFontSize(),
    .printColorIndex: PrintColorMode.blackWhite.rawValue,
    .printLineNumIndex: PrintLineNmuberMode.no.rawValue,
    .printInvisibleCharIndex: PrintInvisiblesMode.no.rawValue,
    .printHeader: true,
    .primaryHeaderContent: PrintInfoType.filePath.rawValue,
    .primaryHeaderAlignment: AlignmentType.left.rawValue,
    .secondaryHeaderContent: PrintInfoType.printDate.rawValue,
    .secondaryHeaderAlignment: AlignmentType.right.rawValue,
    .printFooter: true,
    .primaryFooterContent: PrintInfoType.none.rawValue,
    .primaryFooterAlignment: AlignmentType.center.rawValue,
    .secondaryFooterContent: PrintInfoType.pageNumber.rawValue,
    .secondaryFooterAlignment: AlignmentType.center.rawValue,
    
    // ------ text finder ------
    .findHistory: [],
    .replaceHistory: [],
    .findUsesRegularExpression: false,
    .findInSelection: false,
    .findIsWrap: true,
    .findNextAfterReplace: true,
    .findClosesIndicatorWhenDone: true,
    .findIgnoresCase: false,
    .findTextIsLiteralSearch: false,
    .findTextIgnoresDiacriticMarks: false,
    .findTextIgnoresWidth: false,
    .findRegexIsSingleline: false,
    .findRegexIsMultiline: true,
    .findRegexUsesUnicodeBoundaries: false,
    .findRegexUnescapesReplacementString: true,
    
    // ------ settings not in preferences window ------
    .colorCodeType: 1,
    .sidebarWidth: 220,
    .recentStyleNames: [],
    
    // ------ hidden settings ------
    .usesTextFontForInvisibles: false,
    .headerFooterDateFormat: "YYYY-MM-dd HH:mm",
    .headerFooterPathAbbreviatingWithTilde: true,
    .autoCompletionDelay: 0.25,
    .showColoringIndicatorTextLength: 75000,
    .coloringRangeBufferLength: 5000,
    .largeFileAlertThreshold: 50 * pow(1024, 2),  // 50 MB
    .autosavingDelay: 5.0,
    .savesTextOrientation: true,
    .layoutTextVertical: false,
    .enableSmartIndent: true,
    .maximumRecentStyleCount: 6,
]
