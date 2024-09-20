#requires AutoHotkey v1.1

; EurKEY v1.3 beta (unofficial) (for AutoHotkey v1.1).ahk - 2024-09-20

; GitHub :   https://github.com/pieter-degroote/EurKEY-clone

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout (on Windows) :  US QWERTY



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Event  ; allows chaining of customized key combinations


; Dead Key :  Circumflex Accent

dkCircumflex := ComObjCreate("Scripting.Dictionary")
dkCircumflex.item["a"] := "{u+00e2}"  ; (â) a with circumflex
dkCircumflex.item["A"] := "{u+00c2}"  ; (Â) A with circumflex
dkCircumflex.item["c"] := "{u+0109}"  ; (ĉ) c with circumflex
dkCircumflex.item["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
dkCircumflex.item["e"] := "{u+00ea}"  ; (ê) e with circumflex
dkCircumflex.item["E"] := "{u+00ca}"  ; (Ê) E with circumflex
dkCircumflex.item["g"] := "{u+011d}"  ; (ĝ) g with circumflex
dkCircumflex.item["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
dkCircumflex.item["h"] := "{u+0125}"  ; (ĥ) h with circumflex
dkCircumflex.item["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
dkCircumflex.item["i"] := "{u+00ee}"  ; (î) i with circumflex
dkCircumflex.item["I"] := "{u+00ce}"  ; (Î) I with circumflex
dkCircumflex.item["j"] := "{u+0135}"  ; (ĵ) j with circumflex
dkCircumflex.item["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
dkCircumflex.item["o"] := "{u+00f4}"  ; (ô) o with circumflex
dkCircumflex.item["O"] := "{u+00d4}"  ; (Ô) O with circumflex
dkCircumflex.item["s"] := "{u+015d}"  ; (ŝ) s with circumflex
dkCircumflex.item["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
dkCircumflex.item["u"] := "{u+00fb}"  ; (û) u with circumflex
dkCircumflex.item["U"] := "{u+00db}"  ; (Û) U with circumflex
dkCircumflex.item["w"] := "{u+0175}"  ; (ŵ) w with circumflex
dkCircumflex.item["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
dkCircumflex.item["y"] := "{u+0177}"  ; (ŷ) y with circumflex
dkCircumflex.item["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex.item["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
dkCircumflex.item["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex
dkCircumflex.item[" "] := "{^}"       ;     circumflex accent


; Dead Key :  Caron

dkCaron := ComObjCreate("Scripting.Dictionary")
dkCaron.item["a"] := "{u+01ce}"  ; (ǎ) a with caron
dkCaron.item["A"] := "{u+01cd}"  ; (Ǎ) A with caron
dkCaron.item["c"] := "{u+010d}"  ; (č) c with caron
dkCaron.item["C"] := "{u+010c}"  ; (Č) C with caron
dkCaron.item["d"] := "{u+010f}"  ; (ď) d with caron
dkCaron.item["D"] := "{u+010e}"  ; (Ď) D with caron
dkCaron.item["e"] := "{u+011b}"  ; (ě) e with caron
dkCaron.item["E"] := "{u+011a}"  ; (Ě) E with caron
dkCaron.item["g"] := "{u+01e7}"  ; (ǧ) g with caron
dkCaron.item["G"] := "{u+01e6}"  ; (Ǧ) G with caron
dkCaron.item["h"] := "{u+021f}"  ; (ȟ) h with caron
dkCaron.item["H"] := "{u+021e}"  ; (Ȟ) H with caron
dkCaron.item["i"] := "{u+01d0}"  ; (ǐ) i with caron
dkCaron.item["I"] := "{u+01cf}"  ; (Ǐ) I with caron
dkCaron.item["j"] := "{u+01f0}"  ; (ǰ) j with caron
dkCaron.item["k"] := "{u+01e9}"  ; (ǩ) k with caron
dkCaron.item["K"] := "{u+01e8}"  ; (Ǩ) K with caron
dkCaron.item["l"] := "{u+013e}"  ; (ľ) l with caron
dkCaron.item["L"] := "{u+013d}"  ; (Ľ) L with caron
dkCaron.item["n"] := "{u+0148}"  ; (ň) n with caron
dkCaron.item["N"] := "{u+0147}"  ; (Ň) N with caron
dkCaron.item["o"] := "{u+01d2}"  ; (ǒ) o with caron
dkCaron.item["O"] := "{u+01d1}"  ; (Ǒ) O with caron
dkCaron.item["r"] := "{u+0159}"  ; (ř) r with caron
dkCaron.item["R"] := "{u+0158}"  ; (Ř) R with caron
dkCaron.item["s"] := "{u+0161}"  ; (š) s with caron
dkCaron.item["S"] := "{u+0160}"  ; (Š) S with caron
dkCaron.item["t"] := "{u+0165}"  ; (ť) t with caron
dkCaron.item["T"] := "{u+0164}"  ; (Ť) T with caron
dkCaron.item["u"] := "{u+01d4}"  ; (ǔ) u with caron
dkCaron.item["U"] := "{u+01d3}"  ; (Ǔ) U with caron
dkCaron.item["z"] := "{u+017e}"  ; (ž) z with caron
dkCaron.item["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkCaron.item["3"] := "{u+01ef}"  ; (ǯ) small letter ezh with caron
dkCaron.item["#"] := "{u+01ee}"  ; (Ǯ) capital letter ezh with caron
dkCaron.item[chr(0x0111)] := "{u+01c6}"  ; (đ -> ǆ) dz with caron
dkCaron.item[chr(0x0110)] := "{u+01c5}"  ; (Đ -> ǅ) capital D with small z with caron
dkCaron.item[chr(0x00fc)] := "{u+01da}"  ; (ü -> ǚ) u with diaeresis and caron
dkCaron.item[chr(0x00dc)] := "{u+01d9}"  ; (Ü -> Ǚ) U with diaeresis and caron
dkCaron.item[" "] := "{u+02c7}"  ; (ˇ) caron


; Dead Key :  Ring/Dot Above

dkRingAbove := ComObjCreate("Scripting.Dictionary")
dkRingAbove.item["a"] := "{u+0227}"  ; (ȧ) a with dot above
dkRingAbove.item["A"] := "{u+0226}"  ; (Ȧ) A with dot above
dkRingAbove.item["b"] := "{u+1e03}"  ; (ḃ) b with dot above
dkRingAbove.item["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
dkRingAbove.item["c"] := "{u+010b}"  ; (ċ) c with dot above
dkRingAbove.item["C"] := "{u+010a}"  ; (Ċ) C with dot above
dkRingAbove.item["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
dkRingAbove.item["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
dkRingAbove.item["e"] := "{u+0117}"  ; (ė) e with dot above
dkRingAbove.item["E"] := "{u+0116}"  ; (Ė) E with dot above
dkRingAbove.item["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
dkRingAbove.item["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
dkRingAbove.item["g"] := "{u+0121}"  ; (ġ) g with dot above
dkRingAbove.item["G"] := "{u+0120}"  ; (Ġ) G with dot above
dkRingAbove.item["h"] := "{u+1e23}"  ; (ḣ) h with dot above
dkRingAbove.item["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
dkRingAbove.item["i"] := "{u+0131}"  ; (ı) dotless i (Turkish, Azerbaijani)
dkRingAbove.item["I"] := "{u+0130}"  ; (İ) I with dot above (Turkish, Azerbaijani)
dkRingAbove.item["j"] := "{u+0237}"  ; (ȷ) dotless j
dkRingAbove.item["l"] := "{u+0140}"  ; (ŀ) l with middle dot
dkRingAbove.item["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
dkRingAbove.item["m"] := "{u+1e41}"  ; (ṁ) m with dot above
dkRingAbove.item["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
dkRingAbove.item["n"] := "{u+1e45}"  ; (ṅ) n with dot above
dkRingAbove.item["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
dkRingAbove.item["o"] := "{u+022f}"  ; (ȯ) o with dot above
dkRingAbove.item["O"] := "{u+022e}"  ; (Ȯ) O with dot above
dkRingAbove.item["p"] := "{u+1e57}"  ; (ṗ) p with dot above
dkRingAbove.item["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
dkRingAbove.item["r"] := "{u+1e59}"  ; (ṙ) r with dot above
dkRingAbove.item["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
dkRingAbove.item["s"] := "{u+1e61}"  ; (ṡ) s with dot above
dkRingAbove.item["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
dkRingAbove.item["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
dkRingAbove.item["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
dkRingAbove.item["u"] := "{u+016f}"  ; (ů) u with ring above
dkRingAbove.item["U"] := "{u+016e}"  ; (Ů) U with ring above
dkRingAbove.item["w"] := "{u+1e87}"  ; (ẇ) w with dot above
dkRingAbove.item["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
dkRingAbove.item["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
dkRingAbove.item["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
dkRingAbove.item["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
dkRingAbove.item["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
dkRingAbove.item["z"] := "{u+017c}"  ; (ż) z with dot above
dkRingAbove.item["Z"] := "{u+017b}"  ; (Ż) Z with dot above
dkRingAbove.item[chr(0x00e5)] := "{u+1e98}"  ; (å -> ẘ) w with ring above
dkRingAbove.item[chr(0x00ff)] := "{u+1e99}"  ; (ÿ -> ẙ) y with ring above
dkRingAbove.item[" "] := "{u+02da}"  ; (˚) ring above


; Dead Key :  Macron (and Stroke)

dkMacron := ComObjCreate("Scripting.Dictionary")
dkMacron.item["a"] := "{u+0101}"  ; (ā) a with macron
dkMacron.item["A"] := "{u+0100}"  ; (Ā) A with macron
dkMacron.item["b"] := "{u+0180}"  ; (ƀ) b with stroke
dkMacron.item["B"] := "{u+0243}"  ; (Ƀ) B with stroke
dkMacron.item["d"] := "{u+0111}"  ; (đ) d with stroke
dkMacron.item["D"] := "{u+0110}"  ; (Đ) D with stroke
dkMacron.item["e"] := "{u+0113}"  ; (ē) e with macron
dkMacron.item["E"] := "{u+0112}"  ; (Ē) E with macron
dkMacron.item["g"] := "{u+1e21}"  ; (ḡ) g with macron
dkMacron.item["G"] := "{u+1e20}"  ; (Ḡ) G with macron
dkMacron.item["h"] := "{u+0127}"  ; (ħ) h with stroke (Maltese)
dkMacron.item["H"] := "{u+0126}"  ; (Ħ) H with stroke (Maltese)
dkMacron.item["i"] := "{u+012b}"  ; (ī) i with macron
dkMacron.item["I"] := "{u+012a}"  ; (Ī) I with macron
dkMacron.item["l"] := "{u+1e3b}"  ; (ḻ) l with line below
dkMacron.item["L"] := "{u+1e3a}"  ; (Ḻ) L with line below
dkMacron.item["o"] := "{u+014d}"  ; (ō) o with macron
dkMacron.item["O"] := "{u+014c}"  ; (Ō) O with macron
dkMacron.item["t"] := "{u+0167}"  ; (ŧ) t with stroke
dkMacron.item["T"] := "{u+0166}"  ; (Ŧ) T with stroke
dkMacron.item["u"] := "{u+016b}"  ; (ū) u with macron
dkMacron.item["U"] := "{u+016a}"  ; (Ū) U with macron
dkMacron.item["y"] := "{u+0233}"  ; (ȳ) y with macron
dkMacron.item["Y"] := "{u+0232}"  ; (Ȳ) Y with macron
dkMacron.item["1"] := "{u+2010}"  ; (‐) hyphen
dkMacron.item["2"] := "{u+2013}"  ; (–) en dash
dkMacron.item["3"] := "{u+2014}"  ; (—) em dash
dkMacron.item[chr(0x00e6)] := "{u+01e3}"  ; (æ -> ǣ) ae with macron
dkMacron.item[chr(0x00c6)] := "{u+01e2}"  ; (Æ -> Ǣ) AE with macron
dkMacron.item[" "] := "{u+00af}"  ; (¯) macron


; Dead Key :  Acute Accent

dkAcuteAccent := ComObjCreate("Scripting.Dictionary")
dkAcuteAccent.item["a"] := "{u+00e1}"  ; (á) a with acute
dkAcuteAccent.item["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcuteAccent.item["b"] := "{u+0253}"  ; (ɓ) b with hook
dkAcuteAccent.item["B"] := "{u+0181}"  ; (Ɓ) B with hook
dkAcuteAccent.item["c"] := "{u+0107}"  ; (ć) c with acute
dkAcuteAccent.item["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcuteAccent.item["d"] := "{u+0257}"  ; (ɗ) d with hook
dkAcuteAccent.item["D"] := "{u+018a}"  ; (Ɗ) D with hook
dkAcuteAccent.item["e"] := "{u+00e9}"  ; (é) e with acute
dkAcuteAccent.item["E"] := "{u+00c9}"  ; (É) E with acute
dkAcuteAccent.item["f"] := "{u+0192}"  ; (ƒ) f with hook
dkAcuteAccent.item["F"] := "{u+0191}"  ; (Ƒ) F with hook
dkAcuteAccent.item["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcuteAccent.item["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcuteAccent.item["i"] := "{u+00ed}"  ; (í) i with acute
dkAcuteAccent.item["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcuteAccent.item["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcuteAccent.item["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcuteAccent.item["l"] := "{u+0142}"  ; (ł) l with stroke
dkAcuteAccent.item["L"] := "{u+0141}"  ; (Ł) L with stroke
dkAcuteAccent.item["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcuteAccent.item["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcuteAccent.item["n"] := "{u+0144}"  ; (ń) n with acute
dkAcuteAccent.item["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcuteAccent.item["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcuteAccent.item["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcuteAccent.item["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcuteAccent.item["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcuteAccent.item["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcuteAccent.item["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcuteAccent.item["s"] := "{u+015b}"  ; (ś) s with acute
dkAcuteAccent.item["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcuteAccent.item["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcuteAccent.item["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcuteAccent.item["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcuteAccent.item["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcuteAccent.item["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcuteAccent.item["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcuteAccent.item["z"] := "{u+017a}"  ; (ź) z with acute
dkAcuteAccent.item["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcuteAccent.item[chr(0x00e5)] := "{u+01fb}"  ; (å -> ǻ) a with ring above and acute
dkAcuteAccent.item[chr(0x00c5)] := "{u+01fa}"  ; (Å -> Ǻ) A with ring above and acute
dkAcuteAccent.item[chr(0x00e6)] := "{u+01fd}"  ; (æ -> ǽ) ae with acute
dkAcuteAccent.item[chr(0x00c6)] := "{u+01fc}"  ; (Æ -> Ǽ) AE with acute
dkAcuteAccent.item[chr(0x00f8)] := "{u+01ff}"  ; (ø -> ǿ) o with stroke and acute
dkAcuteAccent.item[chr(0x00d8)] := "{u+01fe}"  ; (Ø -> Ǿ) O with stroke and acute
dkAcuteAccent.item[" "] := "{u+00b4}"  ; (´) acute accent


; Dead Key :  Diaeresis

dkDiaeresis := ComObjCreate("Scripting.Dictionary")
dkDiaeresis.item["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkDiaeresis.item["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkDiaeresis.item["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkDiaeresis.item["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkDiaeresis.item["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
dkDiaeresis.item["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
dkDiaeresis.item["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkDiaeresis.item["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkDiaeresis.item["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkDiaeresis.item["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkDiaeresis.item["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
dkDiaeresis.item["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkDiaeresis.item["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkDiaeresis.item["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
dkDiaeresis.item["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
dkDiaeresis.item["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
dkDiaeresis.item["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
dkDiaeresis.item["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
dkDiaeresis.item["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis.item[" "] := "{u+00a8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

dkGraveAccent := ComObjCreate("Scripting.Dictionary")
dkGraveAccent.item["a"] := "{u+00e0}"  ; (à) a with grave
dkGraveAccent.item["A"] := "{u+00c0}"  ; (À) A with grave
dkGraveAccent.item["e"] := "{u+00e8}"  ; (è) e with grave
dkGraveAccent.item["E"] := "{u+00c8}"  ; (È) E with grave
dkGraveAccent.item["i"] := "{u+00ec}"  ; (ì) i with grave
dkGraveAccent.item["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGraveAccent.item["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGraveAccent.item["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGraveAccent.item["o"] := "{u+00f2}"  ; (ò) o with grave
dkGraveAccent.item["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGraveAccent.item["u"] := "{u+00f9}"  ; (ù) u with grave
dkGraveAccent.item["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGraveAccent.item["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGraveAccent.item["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGraveAccent.item["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGraveAccent.item["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGraveAccent.item[chr(0x00e4)] := "{u+0105}"  ; (ä -> ą) a with ogonek
dkGraveAccent.item[chr(0x00c4)] := "{u+0104}"  ; (Ä -> Ą) A with ogonek
dkGraveAccent.item[chr(0x00eb)] := "{u+0119}"  ; (ë -> ę) e with ogonek
dkGraveAccent.item[chr(0x00cb)] := "{u+0118}"  ; (Ë -> Ę) E with ogonek
dkGraveAccent.item[chr(0x00ef)] := "{u+012f}"  ; (ï -> į) i with ogonek
dkGraveAccent.item[chr(0x00cf)] := "{u+012e}"  ; (Ï -> Į) I with ogonek
dkGraveAccent.item[chr(0x00f6)] := "{u+01eb}"  ; (ö -> ǫ) o with ogonek
dkGraveAccent.item[chr(0x00d6)] := "{u+01ea}"  ; (Ö -> Ǫ) O with ogonek
dkGraveAccent.item[chr(0x00fc)] := "{u+0173}"  ; (ü -> ų) u with ogonek
dkGraveAccent.item[chr(0x00dc)] := "{u+0172}"  ; (Ü -> Ų) U with ogonek
dkGraveAccent.item[" "] := "``"  ; grave accent


; Dead Key :  Tilde

dkTilde := ComObjCreate("Scripting.Dictionary")
dkTilde.item["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde.item["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde.item["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde.item["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde.item["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde.item["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde.item["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkTilde.item["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkTilde.item["o"] := "{u+00f5}"  ; (õ) o with tilde
dkTilde.item["O"] := "{u+00d5}"  ; (Õ) O with tilde
dkTilde.item["u"] := "{u+0169}"  ; (ũ) u with tilde
dkTilde.item["U"] := "{u+0168}"  ; (Ũ) U with tilde
dkTilde.item["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
dkTilde.item["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
dkTilde.item["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
dkTilde.item["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde
dkTilde.item[" "] := "~"         ; tilde


; Dead Key :  Symbols

dkSymbols := ComObjCreate("Scripting.Dictionary")
dkSymbols.item["c"] := "{u+00a9}"  ; (©) copyright sign
dkSymbols.item["C"] := "{u+00a9}"  ; (©) copyright sign
dkSymbols.item["p"] := "{u+2117}"  ; (℗) sound recording copyright
dkSymbols.item["P"] := "{u+2117}"  ; (℗) sound recording copyright
dkSymbols.item["r"] := "{u+00ae}"  ; (®) registered sign
dkSymbols.item["R"] := "{u+00ae}"  ; (®) registered sign
dkSymbols.item["s"] := "{u+00a7}"  ; (§) section sign
dkSymbols.item["S"] := "{u+00a7}"  ; (§) section sign
dkSymbols.item["t"] := "{u+2122}"  ; (™) trademark symbol
dkSymbols.item["T"] := "{u+2120}"  ; (℠) service mark
dkSymbols.item["1"] := "{u+2116}"  ; (№) numero sign
dkSymbols.item["2"] := "{u+00bd}"  ; (½) vulgar fraction 1/2
dkSymbols.item["3"] := "{u+2153}"  ; (⅓) vulgar fraction 1/3
dkSymbols.item["4"] := "{u+00bc}"  ; (¼) vulgar fraction 1/4
dkSymbols.item["5"] := "{u+2154}"  ; (⅔) vulgar fraction 2/3
dkSymbols.item["6"] := "{u+00be}"  ; (¾) vulgar fraction 3/4
dkSymbols.item["7"] := "{u+215b}"  ; (⅛) vulgar fraction 1/8
dkSymbols.item["8"] := "{u+215c}"  ; (⅜) vulgar fraction 3/8
dkSymbols.item["9"] := "{u+215d}"  ; (⅝) vulgar fraction 5/8
dkSymbols.item["0"] := "{u+215e}"  ; (⅞) vulgar fraction 7/8
dkSymbols.item["h"] := "{u+2190}"  ; (←) leftwards arrow
dkSymbols.item["j"] := "{u+2193}"  ; (↓) downwards arrow
dkSymbols.item["k"] := "{u+2191}"  ; (↑) upwards arrow
dkSymbols.item["l"] := "{u+2192}"  ; (→) rightwards arrow
dkSymbols.item["u"] := "{u+2196}"  ; (↖) north west arrow
dkSymbols.item["n"] := "{u+2199}"  ; (↙) south west arrow
dkSymbols.item["i"] := "{u+2197}"  ; (↗) north east arrow
dkSymbols.item["m"] := "{u+2198}"  ; (↘) south east arrow
dkSymbols.item["="] := "{u+2194}"  ; (↔) left right arrow
dkSymbols.item["H"] := "{u+21d0}"  ; (⇐) leftwards double arrow
dkSymbols.item["J"] := "{u+21d3}"  ; (⇓) downwards double arrow
dkSymbols.item["K"] := "{u+21d1}"  ; (⇑) upwards double arrow
dkSymbols.item["L"] := "{u+21d2}"  ; (⇒) rightwards double arrow
dkSymbols.item["U"] := "{u+21d6}"  ; (⇖) north west double arrow
dkSymbols.item["N"] := "{u+21d9}"  ; (⇙) south west double arrow
dkSymbols.item["I"] := "{u+21d7}"  ; (⇗) north east double arrow
dkSymbols.item["M"] := "{u+21d8}"  ; (⇘) south east double arrow
dkSymbols.item["+"] := "{u+21d4}"  ; (⇔) left right double arrow
dkSymbols.item[" "] := "{u+00ac}"  ; (¬) not sign


; Dead Key :  Greek Alphabet

dkGreekAlphabet := ComObjCreate("Scripting.Dictionary")
dkGreekAlphabet.item["a"] := "{u+03b1}"  ; (α) small alpha
dkGreekAlphabet.item["A"] := "{u+0391}"  ; (Α) capital alpha
dkGreekAlphabet.item["b"] := "{u+03b2}"  ; (β) small beta
dkGreekAlphabet.item["B"] := "{u+0392}"  ; (Β) capital beta
dkGreekAlphabet.item["v"] := "{u+03b2}"  ; (β) small beta
dkGreekAlphabet.item["V"] := "{u+0392}"  ; (Β) capital beta
dkGreekAlphabet.item["g"] := "{u+03b3}"  ; (γ) small gamma
dkGreekAlphabet.item["G"] := "{u+0393}"  ; (Γ) capital gamma
dkGreekAlphabet.item["d"] := "{u+03b4}"  ; (δ) small delta
dkGreekAlphabet.item["D"] := "{u+0394}"  ; (Δ) capital delta
dkGreekAlphabet.item["e"] := "{u+03b5}"  ; (ε) small epsilon
dkGreekAlphabet.item["E"] := "{u+0395}"  ; (Ε) capital epsilon
dkGreekAlphabet.item["z"] := "{u+03b6}"  ; (ζ) small zeta
dkGreekAlphabet.item["Z"] := "{u+0396}"  ; (Ζ) capital zeta
dkGreekAlphabet.item["i"] := "{u+03b7}"  ; (η) small eta
dkGreekAlphabet.item["I"] := "{u+0397}"  ; (Η) capital eta
dkGreekAlphabet.item["h"] := "{u+03b8}"  ; (θ) small theta
dkGreekAlphabet.item["H"] := "{u+0398}"  ; (Θ) capital theta
dkGreekAlphabet.item["j"] := "{u+03b9}"  ; (ι) small iota
dkGreekAlphabet.item["J"] := "{u+0399}"  ; (Ι) capital iota
dkGreekAlphabet.item["k"] := "{u+03ba}"  ; (κ) small kappa
dkGreekAlphabet.item["K"] := "{u+039a}"  ; (Κ) capital kappa
dkGreekAlphabet.item["l"] := "{u+03bb}"  ; (λ) small lambda
dkGreekAlphabet.item["L"] := "{u+039b}"  ; (Λ) capital lambda
dkGreekAlphabet.item["m"] := "{u+03bc}"  ; (μ) small mu
dkGreekAlphabet.item["M"] := "{u+039c}"  ; (Μ) capital mu
dkGreekAlphabet.item["n"] := "{u+03bd}"  ; (ν) small nu
dkGreekAlphabet.item["N"] := "{u+039d}"  ; (Ν) capital nu
dkGreekAlphabet.item["x"] := "{u+03be}"  ; (ξ) small xi
dkGreekAlphabet.item["X"] := "{u+039e}"  ; (Ξ) capital xi
dkGreekAlphabet.item["o"] := "{u+03bf}"  ; (ο) small omicron
dkGreekAlphabet.item["O"] := "{u+039f}"  ; (Ο) capital omicron
dkGreekAlphabet.item["p"] := "{u+03c0}"  ; (π) small pi
dkGreekAlphabet.item["P"] := "{u+03a0}"  ; (Π) capital pi
dkGreekAlphabet.item["r"] := "{u+03c1}"  ; (ρ) small rho
dkGreekAlphabet.item["R"] := "{u+03a1}"  ; (Ρ) capital rho
dkGreekAlphabet.item["s"] := "{u+03c3}"  ; (σ) small sigma
dkGreekAlphabet.item["S"] := "{u+03a3}"  ; (Σ) capital sigma
dkGreekAlphabet.item[","] := "{u+03c2}"  ; (ς) small final sigma
dkGreekAlphabet.item[chr(0x00df)] := "{u+03c2}"  ; (ß -> ς) small final sigma
dkGreekAlphabet.item["t"] := "{u+03c4}"  ; (τ) small tau
dkGreekAlphabet.item["T"] := "{u+03a4}"  ; (Τ) capital tau
dkGreekAlphabet.item["y"] := "{u+03c5}"  ; (υ) small upsilon
dkGreekAlphabet.item["Y"] := "{u+03a5}"  ; (Υ) capital upsilon
dkGreekAlphabet.item["f"] := "{u+03c6}"  ; (φ) small phi
dkGreekAlphabet.item["F"] := "{u+03a6}"  ; (Φ) capital phi
dkGreekAlphabet.item["c"] := "{u+03c7}"  ; (χ) small chi
dkGreekAlphabet.item["C"] := "{u+03a7}"  ; (Χ) capital chi
dkGreekAlphabet.item["w"] := "{u+03c8}"  ; (ψ) small psi
dkGreekAlphabet.item["W"] := "{u+03a8}"  ; (Ψ) capital psi
dkGreekAlphabet.item["q"] := "{u+03c9}"  ; (ω) small omega
dkGreekAlphabet.item["Q"] := "{u+03a9}"  ; (Ω) capital omega
dkGreekAlphabet.item["u"] := "{u+03c9}"  ; (ω) small omega
dkGreekAlphabet.item["U"] := "{u+03a9}"  ; (Ω) capital omega
dkGreekAlphabet.item["1"] := "{u+00b9}"  ; (¹) superscript 1
dkGreekAlphabet.item["2"] := "{u+00b2}"  ; (²) superscript 2
dkGreekAlphabet.item["3"] := "{u+00b3}"  ; (³) superscript 3
dkGreekAlphabet.item["4"] := "{u+2074}"  ; (⁴) superscript 4
dkGreekAlphabet.item["5"] := "{u+2075}"  ; (⁵) superscript 5
dkGreekAlphabet.item["6"] := "{u+2076}"  ; (⁶) superscript 6
dkGreekAlphabet.item["7"] := "{u+2077}"  ; (⁷) superscript 7
dkGreekAlphabet.item["8"] := "{u+2078}"  ; (⁸) superscript 8
dkGreekAlphabet.item["9"] := "{u+2079}"  ; (⁹) superscript 9
dkGreekAlphabet.item["0"] := "{u+2070}"  ; (⁰) superscript 0
dkGreekAlphabet.item["-"] := "{u+207b}"  ; (⁻) superscript -
dkGreekAlphabet.item["="] := "{u+207c}"  ; (⁼) superscript =
dkGreekAlphabet.item["+"] := "{u+207a}"  ; (⁺) superscript +
dkGreekAlphabet.item["["] := "{u+207d}"  ; (⁽) superscript (
dkGreekAlphabet.item["]"] := "{u+207e}"  ; (⁾) superscript )
dkGreekAlphabet.item["!"] := "{u+2081}"  ; (₁) subscript 1
dkGreekAlphabet.item["@"] := "{u+2082}"  ; (₂) subscript 2
dkGreekAlphabet.item["#"] := "{u+2083}"  ; (₃) subscript 3
dkGreekAlphabet.item["$"] := "{u+2084}"  ; (₄) subscript 4
dkGreekAlphabet.item["%"] := "{u+2085}"  ; (₅) subscript 5
dkGreekAlphabet.item["^"] := "{u+2086}"  ; (₆) subscript 6
dkGreekAlphabet.item["&"] := "{u+2087}"  ; (₇) subscript 7
dkGreekAlphabet.item["*"] := "{u+2088}"  ; (₈) subscript 8
dkGreekAlphabet.item["("] := "{u+2089}"  ; (₉) subscript 9
dkGreekAlphabet.item[")"] := "{u+2080}"  ; (₀) subscript 0
dkGreekAlphabet.item[";"] := "{u+208b}"  ; (₋) subscript -
dkGreekAlphabet.item["'"] := "{u+208c}"  ; (₌) subscript =
dkGreekAlphabet.item[chr(34)] := "{u+208a}"  ; (₊) subscript +
dkGreekAlphabet.item["{"] := "{u+208d}"  ; (₍) subscript (
dkGreekAlphabet.item["}"] := "{u+208e}"  ; (₎) subscript )
dkGreekAlphabet.item[" "] := "{u+03bc}"  ; (μ) small mu


; Dead Key :  Math Symbols

dkMathSymbols := ComObjCreate("Scripting.Dictionary")
dkMathSymbols.item["!"] := "{u+2260}"  ; (≠) not equal to
dkMathSymbols.item["~"] := "{u+2248}"  ; (≈) almost equal to
dkMathSymbols.item["="] := "{u+225d}"  ; (≝) equal to by definition
dkMathSymbols.item["<"] := "{u+2264}"  ; (≤) less-than or equal to
dkMathSymbols.item[">"] := "{u+2265}"  ; (≥) greater-than or equal to
dkMathSymbols.item["-"] := "{u+00b1}"  ; (±) plus-minus sign
dkMathSymbols.item["i"] := "{u+221e}"  ; (∞) infinity symbol
dkMathSymbols.item["n"] := "{u+207f}"  ; (ⁿ) superscript n
dkMathSymbols.item["r"] := "{u+221a}"  ; (√) square root
dkMathSymbols.item["3"] := "{u+221b}"  ; (∛) cube root
dkMathSymbols.item["4"] := "{u+221c}"  ; (∜) fourth root
dkMathSymbols.item["%"] := "{u+2030}"  ; (‰) per mille sign
dkMathSymbols.item["f"] := "{u+0192}"  ; (ƒ) f with hook
dkMathSymbols.item["S"] := "{u+222b}"  ; (∫) integral symbol
dkMathSymbols.item["'"] := "{u+2032}"  ; (′) prime
dkMathSymbols.item[chr(34)] := "{u+2033}"  ; (″) double prime
dkMathSymbols.item["p"] := "{u+2202}"  ; (∂) partial differential
dkMathSymbols.item["d"] := "{u+2206}"  ; (∆) increment operator
dkMathSymbols.item["D"] := "{u+2207}"  ; (∇) nabla/del operator
dkMathSymbols.item["+"] := "{u+2295}"  ; (⊕) circled plus
dkMathSymbols.item["*"] := "{u+2297}"  ; (⊗) circled times
dkMathSymbols.item["^"] := "{u+2118}"  ; (℘) Weierstrass elliptic function
dkMathSymbols.item["s"] := "{u+2229}"  ; (∩) set intersection
dkMathSymbols.item["u"] := "{u+222a}"  ; (∪) set union
dkMathSymbols.item["U"] := "{u+2216}"  ; (∖) set minus
dkMathSymbols.item["O"] := "{u+2205}"  ; (∅) empty set
dkMathSymbols.item["g"] := "{u+2282}"  ; (⊂) subset of
dkMathSymbols.item["G"] := "{u+2284}"  ; (⊄) not a subset of
dkMathSymbols.item["h"] := "{u+2283}"  ; (⊃) superset of
dkMathSymbols.item["H"] := "{u+2285}"  ; (⊅) not a superset of
dkMathSymbols.item["b"] := "{u+2286}"  ; (⊆) subset of or equal to
dkMathSymbols.item["B"] := "{u+2287}"  ; (⊇) superset of or equal to
dkMathSymbols.item["m"] := "{u+2208}"  ; (∈) element of
dkMathSymbols.item["M"] := "{u+2209}"  ; (∉) not an element of
dkMathSymbols.item["k"] := "{u+220b}"  ; (∋) contains as member
dkMathSymbols.item["K"] := "{u+220c}"  ; (∌) does not contain as member
dkMathSymbols.item["A"] := "{u+2200}"  ; (∀) for all
dkMathSymbols.item["E"] := "{u+2203}"  ; (∃) there exists
dkMathSymbols.item["X"] := "{u+2204}"  ; (∄) there does not exist
dkMathSymbols.item["&"] := "{u+2227}"  ; (∧) logical and
dkMathSymbols.item["|"] := "{u+2228}"  ; (∨) logical or
dkMathSymbols.item["c"] := "{u+221d}"  ; (∝) proportional to
dkMathSymbols.item["."] := "{u+22c5}"  ; (⋅) dot operator
dkMathSymbols.item["o"] := "{u+2218}"  ; (∘) ring operator
dkMathSymbols.item[":"] := "{u+2234}"  ; (∴) therefore sign
dkMathSymbols.item[";"] := "{u+2235}"  ; (∵) because sign
dkMathSymbols.item["z"] := "{u+21af}"  ; (↯) downwards zigzag arrow
dkMathSymbols.item["F"] := "{u+220e}"  ; (∎) end of proof
dkMathSymbols.item["R"] := "{u+211d}"  ; (ℝ) real numbers
dkMathSymbols.item["C"] := "{u+2102}"  ; (ℂ) complex numbers
dkMathSymbols.item["N"] := "{u+2115}"  ; (ℕ) natural numbers
dkMathSymbols.item["P"] := "{u+2119}"  ; (ℙ) prime numbers
dkMathSymbols.item["Q"] := "{u+211a}"  ; (ℚ) rational numbers
dkMathSymbols.item["Z"] := "{u+2124}"  ; (ℤ) whole numbers
dkMathSymbols.item["9"] := "{u+221f}"  ; (∟) right angle
dkMathSymbols.item["8"] := "{u+2220}"  ; (∠) angle symbol
dkMathSymbols.item["7"] := "{u+2221}"  ; (∡) measured angle
dkMathSymbols.item["l"] := "{u+2225}"  ; (∥) parallel to
dkMathSymbols.item["L"] := "{u+2226}"  ; (∦) not parallel to
dkMathSymbols.item[" "] := "{u+221a}"  ; (√) square root


; Configuration :  'Right Alt' and 'Right Alt + Shift' on US QWERTY

>!a::
  if GetKeyState("CapsLock", "T")
    Send {u+00c4}  ; (Ä) A with diaeresis
  else
    Send {u+00e4}  ; (ä) a with diaeresis
  return
>!+a::
  if GetKeyState("CapsLock", "T")
    Send {u+00e4}  ; (ä) a with diaeresis
  else
    Send {u+00c4}  ; (Ä) A with diaeresis
  return

>!q::
  if GetKeyState("CapsLock", "T")
    Send {u+00c6}  ; (Æ) letter AE
  else
    Send {u+00e6}  ; (æ) letter ae
  return
>!+q::
  if GetKeyState("CapsLock", "T")
    Send {u+00e6}  ; (æ) letter ae
  else
    Send {u+00c6}  ; (Æ) letter AE
  return

>!w::
  if GetKeyState("CapsLock", "T")
    Send {u+00c5}  ; (Å) A with ring above
  else
    Send {u+00e5}  ; (å) a with ring above
  return
>!+w::
  if GetKeyState("CapsLock", "T")
    Send {u+00e5}  ; (å) a with ring above
  else
    Send {u+00c5}  ; (Å) A with ring above
  return

>!z::
  if GetKeyState("CapsLock", "T")
    Send {u+00c0}  ; (À) A with grave
  else
    Send {u+00e0}  ; (à) a with grave
  return
>!+z::
  if GetKeyState("CapsLock", "T")
    Send {u+00e0}  ; (à) a with grave
  else
    Send {u+00c0}  ; (À) A with grave
  return

>!x::
  if GetKeyState("CapsLock", "T")
    Send {u+00c1}  ; (Á) A with acute
  else
    Send {u+00e1}  ; (á) a with acute
  return
>!+x::
  if GetKeyState("CapsLock", "T")
    Send {u+00e1}  ; (á) a with acute
  else
    Send {u+00c1}  ; (Á) A with acute
  return

>!c::
  if GetKeyState("CapsLock", "T")
    Send {u+00c7}  ; (Ç) C with cedilla
  else
    Send {u+00e7}  ; (ç) c with cedilla
  return
>!+c::
  if GetKeyState("CapsLock", "T")
    Send {u+00e7}  ; (ç) c with cedilla
  else
    Send {u+00c7}  ; (Ç) C with cedilla
  return

>!d::
  if GetKeyState("CapsLock", "T")
    Send {u+0110}  ; (Đ) D with stroke
  else
    Send {u+0111}  ; (đ) d with stroke
  return
>!+d::
  if GetKeyState("CapsLock", "T")
    Send {u+0111}  ; (đ) d with stroke
  else
    Send {u+0110}  ; (Đ) D with stroke
  return

>!e::
  if GetKeyState("CapsLock", "T")
    Send {u+00cb}  ; (Ë) E with diaeresis
  else
    Send {u+00eb}  ; (ë) e with diaeresis
  return
>!+e::
  if GetKeyState("CapsLock", "T")
    Send {u+00eb}  ; (ë) e with diaeresis
  else
    Send {u+00cb}  ; (Ë) E with diaeresis
  return

>!f::
  if GetKeyState("CapsLock", "T")
    Send {u+00c8}  ; (È) E with grave
  else
    Send {u+00e8}  ; (è) e with grave
  return
>!+f::
  if GetKeyState("CapsLock", "T")
    Send {u+00e8}  ; (è) e with grave
  else
    Send {u+00c8}  ; (È) E with grave
  return

>!g::
  if GetKeyState("CapsLock", "T")
    Send {u+00c9}  ; (É) E with acute
  else
    Send {u+00e9}  ; (é) e with acute
  return
>!+g::
  if GetKeyState("CapsLock", "T")
    Send {u+00e9}  ; (é) e with acute
  else
    Send {u+00c9}  ; (É) E with acute
  return

>!i::
  if GetKeyState("CapsLock", "T")
    Send {u+00cf}  ; (Ï) I with diaeresis
  else
    Send {u+00ef}  ; (ï) i with diaeresis
  return
>!+i::
  if GetKeyState("CapsLock", "T")
    Send {u+00ef}  ; (ï) i with diaeresis
  else
    Send {u+00cf}  ; (Ï) I with diaeresis
  return

>!v::
  if GetKeyState("CapsLock", "T")
    Send {u+00cc}  ; (Ì) I with grave
  else
    Send {u+00ec}  ; (ì) i with grave
  return
>!+v::
  if GetKeyState("CapsLock", "T")
    Send {u+00ec}  ; (ì) i with grave
  else
    Send {u+00cc}  ; (Ì) I with grave
  return

>!b::
  if GetKeyState("CapsLock", "T")
    Send {u+00cd}  ; (Í) I with acute
  else
    Send {u+00ed}  ; (í) i with acute
  return
>!+b::
  if GetKeyState("CapsLock", "T")
    Send {u+00ed}  ; (í) i with acute
  else
    Send {u+00cd}  ; (Í) I with acute
  return

>!k::
  if GetKeyState("CapsLock", "T")
    Send {u+0132}  ; (Ĳ) ligature IJ
  else
    Send {u+0133}  ; (ĳ) ligature ij
  return
>!+k::
  if GetKeyState("CapsLock", "T")
    Send {u+0133}  ; (ĳ) ligature ij
  else
    Send {u+0132}  ; (Ĳ) ligature IJ
  return

>!n::
  if GetKeyState("CapsLock", "T")
    Send {u+00d1}  ; (Ñ) N with tilde
  else
    Send {u+00f1}  ; (ñ) n with tilde
  return
>!+n::
  if GetKeyState("CapsLock", "T")
    Send {u+00f1}  ; (ñ) n with tilde
  else
    Send {u+00d1}  ; (Ñ) N with tilde
  return

>!o::
  if GetKeyState("CapsLock", "T")
    Send {u+00d6}  ; (Ö) O with diaeresis
  else
    Send {u+00f6}  ; (ö) o with diaeresis
  return
>!+o::
  if GetKeyState("CapsLock", "T")
    Send {u+00f6}  ; (ö) o with diaeresis
  else
    Send {u+00d6}  ; (Ö) O with diaeresis
  return

>!p::
  if GetKeyState("CapsLock", "T")
    Send {u+0152}  ; (Œ) ligature OE
  else
    Send {u+0153}  ; (œ) ligature oe
  return
>!+p::
  if GetKeyState("CapsLock", "T")
    Send {u+0153}  ; (œ) ligature oe
  else
    Send {u+0152}  ; (Œ) ligature OE
  return

>!l::
  if GetKeyState("CapsLock", "T")
    Send {u+00d8}  ; (Ø) O with stroke
  else
    Send {u+00f8}  ; (ø) o with stroke
  return
>!+l::
  if GetKeyState("CapsLock", "T")
    Send {u+00f8}  ; (ø) o with stroke
  else
    Send {u+00d8}  ; (Ø) O with stroke
  return

>!,::
  if GetKeyState("CapsLock", "T")
    Send {u+00d2}  ; (Ò) O with grave
  else
    Send {u+00f2}  ; (ò) o with grave
  return
>!<::
  if GetKeyState("CapsLock", "T")
    Send {u+00f2}  ; (ò) o with grave
  else
    Send {u+00d2}  ; (Ò) O with grave
  return

>!.::
  if GetKeyState("CapsLock", "T")
    Send {u+00d3}  ; (Ó) O with acute
  else
    Send {u+00f3}  ; (ó) o with acute
  return
>!>::
  if GetKeyState("CapsLock", "T")
    Send {u+00f3}  ; (ó) o with acute
  else
    Send {u+00d3}  ; (Ó) O with acute
  return

>!s::
  if GetKeyState("CapsLock", "T")
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  return
>!+s::
  if GetKeyState("CapsLock", "T")
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  else
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  return

>!t::
  if GetKeyState("CapsLock", "T")
    Send {u+00de}  ; (Þ) capital letter thorn
  else
    Send {u+00fe}  ; (þ) small letter thorn
  return
>!+t::
  if GetKeyState("CapsLock", "T")
    Send {u+00fe}  ; (þ) small letter thorn
  else
    Send {u+00de}  ; (Þ) capital letter thorn
  return

>!u::
  if GetKeyState("CapsLock", "T")
    Send {u+00dc}  ; (Ü) U with diaeresis
  else
    Send {u+00fc}  ; (ü) u with diaeresis
  return
>!+u::
  if GetKeyState("CapsLock", "T")
    Send {u+00fc}  ; (ü) u with diaeresis
  else
    Send {u+00dc}  ; (Ü) U with diaeresis
  return

>!h::
  if GetKeyState("CapsLock", "T")
    Send {u+00d9}  ; (Ù) U with grave
  else
    Send {u+00f9}  ; (ù) u with grave
  return
>!+h::
  if GetKeyState("CapsLock", "T")
    Send {u+00f9}  ; (ù) u with grave
  else
    Send {u+00d9}  ; (Ù) U with grave
  return

>!j::
  if GetKeyState("CapsLock", "T")
    Send {u+00da}  ; (Ú) U with acute
  else
    Send {u+00fa}  ; (ú) u with acute
  return
>!+j::
  if GetKeyState("CapsLock", "T")
    Send {u+00fa}  ; (ú) u with acute
  else
    Send {u+00da}  ; (Ú) U with acute
  return

>!y::
  if GetKeyState("CapsLock", "T")
    Send {u+0178}  ; (Ÿ) Y with diaeresis
  else
    Send {u+00ff}  ; (ÿ) y with diaeresis
  return
>!+y::
  if GetKeyState("CapsLock", "T")
    Send {u+00ff}  ; (ÿ) y with diaeresis
  else
    Send {u+0178}  ; (Ÿ) Y with diaeresis
  return

>!r::
  if GetKeyState("CapsLock", "T")
    Send {u+00dd}  ; (Ý) Y with acute
  else
    Send {u+00fd}  ; (ý) y with acute
  return
>!+r::
  if GetKeyState("CapsLock", "T")
    Send {u+00fd}  ; (ý) y with acute
  else
    Send {u+00dd}  ; (Ý) Y with acute
  return

>!1::Send {u+00a1}   ; (¡) inverted exclamation mark
>!+1::Send {u+00b9}  ; (¹) superscript 1

>!2::Send {u+00aa}   ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
>!+2::Send {u+00b2}  ; (²) superscript 2

>!3::Send {u+00ba}   ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
>!+3::Send {u+00b3}  ; (³) superscript 3

>!4::Send {u+00a3}   ; (£) pound sign
>!+4::Send {u+00a5}  ; (¥) yen sign

>!5::Send {u+20ac}   ; (€) euro sign
>!+5::Send {u+00a2}  ; (¢) cent sign (dollar)

>!8::Send {u+201e}   ; („) double low-9 quotation mark
>!+8::Send {u+201a}  ; (‚) single low-9 quotation mark

>!9::Send {u+201c}   ; (“) left double quotation mark
>!+9::Send {u+2018}  ; (‘) left single quotation mark

>!0::Send {u+201d}   ; (”) right double quotation mark
>!+0::Send {u+2019}  ; (’) right single quotation mark

>!-::Send {u+2713}   ; (✓) check mark
>!_::Send {u+2717}   ; (✗) ballot x

>!=::Send {u+00d7}   ; (×) multiplication sign
>!+=::Send {u+00f7}  ; (÷) division sign

>![::Send {u+00ab}   ; («) left-pointing double angle quotation mark
>!{::Send {u+2039}   ; (‹) left-pointing single angle quotation mark

>!]::Send {u+00bb}   ; (») right-pointing double angle quotation mark
>!}::Send {u+203a}   ; (›) right-pointing single angle quotation mark

>!;::Send {u+00b0}   ; (°) degree sign
>!+;::Send {u+00b7}  ; (·) middle dot

>!/::Send {u+00bf}   ; (¿) inverted question mark
>!?::Send {u+2026}   ; (…) horizontal ellipsis

>!space::Send {u+00a0}   ; non-breaking space
>!+space::Send {u+00a0}  ; non-breaking space


; Configuration :  Dead Keys on 'Right Alt' and 'Right Alt + Shift'

>!6::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkCircumflex.item[key]
  key := ""  ; avoids leaking content via debug properties
  return
>!+6::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkCaron.item[key]
  key := ""  ; avoids leaking content via debug properties
  return

>!7::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkRingAbove.item[key]
  key := ""
  return
>!+7::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkMacron.item[key]
  key := ""
  return

>!'::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkAcuteAccent.item[key]
  key := ""
  return
>!"::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkDiaeresis.item[key]
  key := ""
  return

>!`::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkGraveAccent.item[key]
  key := ""
  return
>!~::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkTilde.item[key]
  key := ""
  return

>!\::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkSymbols.item[key]
  key := ""
  return
>!|::Send {u+00a6}  ; (¦) broken bar

>!m::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkGreekAlphabet.item[key]
  key := ""
  return
>!+m::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkMathSymbols.item[key]
  key := ""
  return
