%%

%unicode 7.0
%public
%class UnicodeWhiteSpace1_7_0

%type int
%standalone

%include ../../resources/common-unicode-all-enumerated-property-java

%%

<<EOF>> { printOutput(); return 1; }
\S { setCurCharPropertyValue("Not-Whitespace"); }
[^\S] { setCurCharPropertyValue("Whitespace"); }
