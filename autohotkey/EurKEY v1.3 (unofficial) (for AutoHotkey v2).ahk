#requires AutoHotkey v2

; EurKEY v1.3 (unofficial) (for AutoHotkey v2).ahk - 2025-05-04

; GitHub :   https://github.com/pieter-degroote/EurKEY-clone

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout :  US QWERTY



KeyHistory 0      ; disables the key history (for privacy and security)
ListLines False   ; omits recently executed lines from history (for privacy and security)

SendMode "Event"  ; allows chaining of customized key combinations

global gEndKeys := "{bs}{esc}"  ; ends dead key input on Backspace or Escape


; Dead Key :  Circumflex Accent

global dkCircumflex := Map()
dkCircumflex["a"] := "{u+00e2}"  ; (â) a with circumflex
dkCircumflex["A"] := "{u+00c2}"  ; (Â) A with circumflex
dkCircumflex["c"] := "{u+0109}"  ; (ĉ) c with circumflex
dkCircumflex["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
dkCircumflex["e"] := "{u+00ea}"  ; (ê) e with circumflex
dkCircumflex["E"] := "{u+00ca}"  ; (Ê) E with circumflex
dkCircumflex["g"] := "{u+011d}"  ; (ĝ) g with circumflex
dkCircumflex["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
dkCircumflex["h"] := "{u+0125}"  ; (ĥ) h with circumflex
dkCircumflex["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
dkCircumflex["i"] := "{u+00ee}"  ; (î) i with circumflex
dkCircumflex["I"] := "{u+00ce}"  ; (Î) I with circumflex
dkCircumflex["j"] := "{u+0135}"  ; (ĵ) j with circumflex
dkCircumflex["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
dkCircumflex["o"] := "{u+00f4}"  ; (ô) o with circumflex
dkCircumflex["O"] := "{u+00d4}"  ; (Ô) O with circumflex
dkCircumflex["s"] := "{u+015d}"  ; (ŝ) s with circumflex
dkCircumflex["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
dkCircumflex["u"] := "{u+00fb}"  ; (û) u with circumflex
dkCircumflex["U"] := "{u+00db}"  ; (Û) U with circumflex
dkCircumflex["w"] := "{u+0175}"  ; (ŵ) w with circumflex
dkCircumflex["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
dkCircumflex["y"] := "{u+0177}"  ; (ŷ) y with circumflex
dkCircumflex["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
dkCircumflex["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex
dkCircumflex[" "] := "{u+005e}"  ; (^) circumflex accent


; Dead Key :  Caron

global dkCaron := Map()
dkCaron["a"] := "{u+01ce}"  ; (ǎ) a with caron
dkCaron["A"] := "{u+01cd}"  ; (Ǎ) A with caron
dkCaron["c"] := "{u+010d}"  ; (č) c with caron
dkCaron["C"] := "{u+010c}"  ; (Č) C with caron
dkCaron["d"] := "{u+010f}"  ; (ď) d with caron
dkCaron["D"] := "{u+010e}"  ; (Ď) D with caron
dkCaron["e"] := "{u+011b}"  ; (ě) e with caron
dkCaron["E"] := "{u+011a}"  ; (Ě) E with caron
dkCaron["g"] := "{u+01e7}"  ; (ǧ) g with caron
dkCaron["G"] := "{u+01e6}"  ; (Ǧ) G with caron
dkCaron["h"] := "{u+021f}"  ; (ȟ) h with caron
dkCaron["H"] := "{u+021e}"  ; (Ȟ) H with caron
dkCaron["i"] := "{u+01d0}"  ; (ǐ) i with caron
dkCaron["I"] := "{u+01cf}"  ; (Ǐ) I with caron
dkCaron["j"] := "{u+01f0}"  ; (ǰ) j with caron
dkCaron["k"] := "{u+01e9}"  ; (ǩ) k with caron
dkCaron["K"] := "{u+01e8}"  ; (Ǩ) K with caron
dkCaron["l"] := "{u+013e}"  ; (ľ) l with caron
dkCaron["L"] := "{u+013d}"  ; (Ľ) L with caron
dkCaron["n"] := "{u+0148}"  ; (ň) n with caron
dkCaron["N"] := "{u+0147}"  ; (Ň) N with caron
dkCaron["o"] := "{u+01d2}"  ; (ǒ) o with caron
dkCaron["O"] := "{u+01d1}"  ; (Ǒ) O with caron
dkCaron["r"] := "{u+0159}"  ; (ř) r with caron
dkCaron["R"] := "{u+0158}"  ; (Ř) R with caron
dkCaron["s"] := "{u+0161}"  ; (š) s with caron
dkCaron["S"] := "{u+0160}"  ; (Š) S with caron
dkCaron["t"] := "{u+0165}"  ; (ť) t with caron
dkCaron["T"] := "{u+0164}"  ; (Ť) T with caron
dkCaron["u"] := "{u+01d4}"  ; (ǔ) u with caron
dkCaron["U"] := "{u+01d3}"  ; (Ǔ) U with caron
dkCaron["z"] := "{u+017e}"  ; (ž) z with caron
dkCaron["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkCaron["3"] := "{u+01ef}"  ; (ǯ) small letter ezh with caron
dkCaron["#"] := "{u+01ee}"  ; (Ǯ) capital letter ezh with caron
dkCaron[chr(0x0111)] := "{u+01c6}"  ; (đ -> ǆ) dz with caron
dkCaron[chr(0x0110)] := "{u+01c5}"  ; (Đ -> ǅ) capital D with small z with caron
dkCaron[chr(0x00fc)] := "{u+01da}"  ; (ü -> ǚ) u with diaeresis and caron
dkCaron[chr(0x00dc)] := "{u+01d9}"  ; (Ü -> Ǚ) U with diaeresis and caron
dkCaron[" "] := "{u+02c7}"  ; (ˇ) caron


; Dead Key :  Ring/Dot Above

global dkRingAbove := Map()
dkRingAbove["a"] := "{u+0227}"  ; (ȧ) a with dot above
dkRingAbove["A"] := "{u+0226}"  ; (Ȧ) A with dot above
dkRingAbove["b"] := "{u+1e03}"  ; (ḃ) b with dot above
dkRingAbove["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
dkRingAbove["c"] := "{u+010b}"  ; (ċ) c with dot above
dkRingAbove["C"] := "{u+010a}"  ; (Ċ) C with dot above
dkRingAbove["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
dkRingAbove["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
dkRingAbove["e"] := "{u+0117}"  ; (ė) e with dot above
dkRingAbove["E"] := "{u+0116}"  ; (Ė) E with dot above
dkRingAbove["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
dkRingAbove["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
dkRingAbove["g"] := "{u+0121}"  ; (ġ) g with dot above
dkRingAbove["G"] := "{u+0120}"  ; (Ġ) G with dot above
dkRingAbove["h"] := "{u+1e23}"  ; (ḣ) h with dot above
dkRingAbove["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
dkRingAbove["i"] := "{u+0131}"  ; (ı) dotless i
dkRingAbove["I"] := "{u+0130}"  ; (İ) I with dot above
dkRingAbove["j"] := "{u+0237}"  ; (ȷ) dotless j
dkRingAbove["l"] := "{u+0140}"  ; (ŀ) l with middle dot
dkRingAbove["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
dkRingAbove["m"] := "{u+1e41}"  ; (ṁ) m with dot above
dkRingAbove["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
dkRingAbove["n"] := "{u+1e45}"  ; (ṅ) n with dot above
dkRingAbove["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
dkRingAbove["o"] := "{u+022f}"  ; (ȯ) o with dot above
dkRingAbove["O"] := "{u+022e}"  ; (Ȯ) O with dot above
dkRingAbove["p"] := "{u+1e57}"  ; (ṗ) p with dot above
dkRingAbove["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
dkRingAbove["r"] := "{u+1e59}"  ; (ṙ) r with dot above
dkRingAbove["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
dkRingAbove["s"] := "{u+1e61}"  ; (ṡ) s with dot above
dkRingAbove["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
dkRingAbove["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
dkRingAbove["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
dkRingAbove["u"] := "{u+016f}"  ; (ů) u with ring above
dkRingAbove["U"] := "{u+016e}"  ; (Ů) U with ring above
dkRingAbove["w"] := "{u+1e87}"  ; (ẇ) w with dot above
dkRingAbove["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
dkRingAbove["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
dkRingAbove["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
dkRingAbove["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
dkRingAbove["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
dkRingAbove["z"] := "{u+017c}"  ; (ż) z with dot above
dkRingAbove["Z"] := "{u+017b}"  ; (Ż) Z with dot above
dkRingAbove[chr(0x00e5)] := "{u+1e98}"  ; (å -> ẘ) w with ring above
dkRingAbove[chr(0x00ff)] := "{u+1e99}"  ; (ÿ -> ẙ) y with ring above
dkRingAbove[" "] := "{u+02da}"  ; (˚) ring above


; Dead Key :  Macron (and Stroke)

global dkMacron := Map()
dkMacron["a"] := "{u+0101}"  ; (ā) a with macron
dkMacron["A"] := "{u+0100}"  ; (Ā) A with macron
dkMacron["b"] := "{u+0180}"  ; (ƀ) b with stroke
dkMacron["B"] := "{u+0243}"  ; (Ƀ) B with stroke
dkMacron["d"] := "{u+0111}"  ; (đ) d with stroke
dkMacron["D"] := "{u+0110}"  ; (Đ) D with stroke
dkMacron["e"] := "{u+0113}"  ; (ē) e with macron
dkMacron["E"] := "{u+0112}"  ; (Ē) E with macron
dkMacron["g"] := "{u+01e5}"  ; (ǥ) g with stroke
dkMacron["G"] := "{u+01e4}"  ; (Ǥ) G with stroke
dkMacron["h"] := "{u+0127}"  ; (ħ) h with stroke
dkMacron["H"] := "{u+0126}"  ; (Ħ) H with stroke
dkMacron["i"] := "{u+012b}"  ; (ī) i with macron
dkMacron["I"] := "{u+012a}"  ; (Ī) I with macron
dkMacron["l"] := "{u+0142}"  ; (ł) l with stroke
dkMacron["L"] := "{u+0141}"  ; (Ł) L with stroke
dkMacron["o"] := "{u+014d}"  ; (ō) o with macron
dkMacron["O"] := "{u+014c}"  ; (Ō) O with macron
dkMacron["t"] := "{u+0167}"  ; (ŧ) t with stroke
dkMacron["T"] := "{u+0166}"  ; (Ŧ) T with stroke
dkMacron["u"] := "{u+016b}"  ; (ū) u with macron
dkMacron["U"] := "{u+016a}"  ; (Ū) U with macron
dkMacron["y"] := "{u+0233}"  ; (ȳ) y with macron
dkMacron["Y"] := "{u+0232}"  ; (Ȳ) Y with macron
dkMacron["1"] := "{u+2010}"  ; (‐) hyphen
dkMacron["2"] := "{u+2013}"  ; (–) en dash
dkMacron["3"] := "{u+2014}"  ; (—) em dash
dkMacron[chr(0x00e6)] := "{u+01e3}"  ; (æ -> ǣ) ae with macron
dkMacron[chr(0x00c6)] := "{u+01e2}"  ; (Æ -> Ǣ) AE with macron
dkMacron[chr(0x00e9)] := "{u+1e21}"  ; (é -> ḡ) g with macron
dkMacron[chr(0x00c9)] := "{u+1e20}"  ; (É -> Ḡ) G with macron
dkMacron[" "] := "{u+00af}"  ; (¯) macron


; Dead Key :  Acute Accent

global dkAcute := Map()
dkAcute["a"] := "{u+00e1}"  ; (á) a with acute
dkAcute["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcute["b"] := "{u+0253}"  ; (ɓ) b with hook
dkAcute["B"] := "{u+0181}"  ; (Ɓ) B with hook
dkAcute["c"] := "{u+0107}"  ; (ć) c with acute
dkAcute["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcute["d"] := "{u+0257}"  ; (ɗ) d with hook
dkAcute["D"] := "{u+018a}"  ; (Ɗ) D with hook
dkAcute["e"] := "{u+00e9}"  ; (é) e with acute
dkAcute["E"] := "{u+00c9}"  ; (É) E with acute
dkAcute["f"] := "{u+0192}"  ; (ƒ) f with hook
dkAcute["F"] := "{u+0191}"  ; (Ƒ) F with hook
dkAcute["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcute["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcute["i"] := "{u+00ed}"  ; (í) i with acute
dkAcute["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcute["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcute["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcute["l"] := "{u+013a}"  ; (ĺ) l with acute
dkAcute["L"] := "{u+0139}"  ; (Ĺ) L with acute
dkAcute["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcute["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcute["n"] := "{u+0144}"  ; (ń) n with acute
dkAcute["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcute["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcute["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcute["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcute["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcute["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcute["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcute["s"] := "{u+015b}"  ; (ś) s with acute
dkAcute["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcute["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcute["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcute["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcute["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcute["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcute["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcute["z"] := "{u+017a}"  ; (ź) z with acute
dkAcute["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcute[chr(0x00e5)] := "{u+01fb}"  ; (å -> ǻ) a with ring above and acute
dkAcute[chr(0x00c5)] := "{u+01fa}"  ; (Å -> Ǻ) A with ring above and acute
dkAcute[chr(0x00e6)] := "{u+01fd}"  ; (æ -> ǽ) ae with acute
dkAcute[chr(0x00c6)] := "{u+01fc}"  ; (Æ -> Ǽ) AE with acute
dkAcute[chr(0x00f8)] := "{u+01ff}"  ; (ø -> ǿ) o with stroke and acute
dkAcute[chr(0x00d8)] := "{u+01fe}"  ; (Ø -> Ǿ) O with stroke and acute
dkAcute[" "] := "{u+00b4}"  ; (´) acute accent


; Dead Key :  Diaeresis

global dkDiaeresis := Map()
dkDiaeresis["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkDiaeresis["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkDiaeresis["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkDiaeresis["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkDiaeresis["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
dkDiaeresis["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
dkDiaeresis["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkDiaeresis["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkDiaeresis["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkDiaeresis["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkDiaeresis["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
dkDiaeresis["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkDiaeresis["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkDiaeresis["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
dkDiaeresis["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
dkDiaeresis["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
dkDiaeresis["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
dkDiaeresis["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
dkDiaeresis["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis[" "] := "{u+00a8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

global dkGrave := Map()
dkGrave["a"] := "{u+00e0}"  ; (à) a with grave
dkGrave["A"] := "{u+00c0}"  ; (À) A with grave
dkGrave["e"] := "{u+00e8}"  ; (è) e with grave
dkGrave["E"] := "{u+00c8}"  ; (È) E with grave
dkGrave["i"] := "{u+00ec}"  ; (ì) i with grave
dkGrave["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGrave["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGrave["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGrave["o"] := "{u+00f2}"  ; (ò) o with grave
dkGrave["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGrave["u"] := "{u+00f9}"  ; (ù) u with grave
dkGrave["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGrave["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGrave["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGrave["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGrave["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGrave[chr(0x00e4)] := "{u+0105}"  ; (ä -> ą) a with ogonek
dkGrave[chr(0x00c4)] := "{u+0104}"  ; (Ä -> Ą) A with ogonek
dkGrave[chr(0x00eb)] := "{u+0119}"  ; (ë -> ę) e with ogonek
dkGrave[chr(0x00cb)] := "{u+0118}"  ; (Ë -> Ę) E with ogonek
dkGrave[chr(0x00ef)] := "{u+012f}"  ; (ï -> į) i with ogonek
dkGrave[chr(0x00cf)] := "{u+012e}"  ; (Ï -> Į) I with ogonek
dkGrave[chr(0x00f6)] := "{u+01eb}"  ; (ö -> ǫ) o with ogonek
dkGrave[chr(0x00d6)] := "{u+01ea}"  ; (Ö -> Ǫ) O with ogonek
dkGrave[chr(0x00fc)] := "{u+0173}"  ; (ü -> ų) u with ogonek
dkGrave[chr(0x00dc)] := "{u+0172}"  ; (Ü -> Ų) U with ogonek
dkGrave[" "] := "{u+0060}"  ; (`) grave accent


; Dead Key :  Tilde

global dkTilde := Map()
dkTilde["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde["l"] := "{u+026b}"  ; (ɫ) l with middle tilde
dkTilde["L"] := "{u+2c62}"  ; (Ɫ) L with middle tilde
dkTilde["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkTilde["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkTilde["o"] := "{u+00f5}"  ; (õ) o with tilde
dkTilde["O"] := "{u+00d5}"  ; (Õ) O with tilde
dkTilde["u"] := "{u+0169}"  ; (ũ) u with tilde
dkTilde["U"] := "{u+0168}"  ; (Ũ) U with tilde
dkTilde["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
dkTilde["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
dkTilde["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
dkTilde["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde
dkTilde[" "] := "{u+007e}"  ; (~) tilde


; Dead Key :  Symbols

global dkSymbols := Map()
dkSymbols["c"] := "{u+00a9}"  ; (©) copyright sign
dkSymbols["C"] := "{u+00a9}"  ; (©) copyright sign
dkSymbols["p"] := "{u+2117}"  ; (℗) sound recording copyright
dkSymbols["P"] := "{u+2117}"  ; (℗) sound recording copyright
dkSymbols["r"] := "{u+00ae}"  ; (®) registered sign
dkSymbols["R"] := "{u+00ae}"  ; (®) registered sign
dkSymbols["s"] := "{u+00a7}"  ; (§) section sign
dkSymbols["S"] := "{u+00a7}"  ; (§) section sign
dkSymbols["t"] := "{u+2122}"  ; (™) trademark symbol
dkSymbols["T"] := "{u+2120}"  ; (℠) service mark
dkSymbols["b"] := "{u+2022}"  ; (•) bullet
dkSymbols["B"] := "{u+2022}"  ; (•) bullet
dkSymbols["."] := "{u+2022}"  ; (•) bullet
dkSymbols["d"] := "{u+2020}"  ; (†) dagger
dkSymbols["D"] := "{u+2021}"  ; (‡) double dagger
dkSymbols["q"] := "{u+00b6}"  ; (¶) pilcrow sign
dkSymbols["Q"] := "{u+00b6}"  ; (¶) pilcrow sign
dkSymbols["x"] := "{u+00a4}"  ; (¤) currency sign
dkSymbols["X"] := "{u+00a4}"  ; (¤) currency sign
dkSymbols["1"] := "{u+2116}"  ; (№) numero sign
dkSymbols["2"] := "{u+00bd}"  ; (½) vulgar fraction 1/2
dkSymbols["3"] := "{u+2153}"  ; (⅓) vulgar fraction 1/3
dkSymbols["4"] := "{u+00bc}"  ; (¼) vulgar fraction 1/4
dkSymbols["5"] := "{u+2154}"  ; (⅔) vulgar fraction 2/3
dkSymbols["6"] := "{u+00be}"  ; (¾) vulgar fraction 3/4
dkSymbols["7"] := "{u+215b}"  ; (⅛) vulgar fraction 1/8
dkSymbols["8"] := "{u+215c}"  ; (⅜) vulgar fraction 3/8
dkSymbols["9"] := "{u+215d}"  ; (⅝) vulgar fraction 5/8
dkSymbols["0"] := "{u+215e}"  ; (⅞) vulgar fraction 7/8
dkSymbols["h"] := "{u+2190}"  ; (←) leftwards arrow
dkSymbols["j"] := "{u+2193}"  ; (↓) downwards arrow
dkSymbols["k"] := "{u+2191}"  ; (↑) upwards arrow
dkSymbols["l"] := "{u+2192}"  ; (→) rightwards arrow
dkSymbols["u"] := "{u+2196}"  ; (↖) north west arrow
dkSymbols["n"] := "{u+2199}"  ; (↙) south west arrow
dkSymbols["i"] := "{u+2197}"  ; (↗) north east arrow
dkSymbols["m"] := "{u+2198}"  ; (↘) south east arrow
dkSymbols["="] := "{u+2194}"  ; (↔) left right arrow
dkSymbols["H"] := "{u+21d0}"  ; (⇐) leftwards double arrow
dkSymbols["J"] := "{u+21d3}"  ; (⇓) downwards double arrow
dkSymbols["K"] := "{u+21d1}"  ; (⇑) upwards double arrow
dkSymbols["L"] := "{u+21d2}"  ; (⇒) rightwards double arrow
dkSymbols["U"] := "{u+21d6}"  ; (⇖) north west double arrow
dkSymbols["N"] := "{u+21d9}"  ; (⇙) south west double arrow
dkSymbols["I"] := "{u+21d7}"  ; (⇗) north east double arrow
dkSymbols["M"] := "{u+21d8}"  ; (⇘) south east double arrow
dkSymbols["+"] := "{u+21d4}"  ; (⇔) left right double arrow
dkSymbols[" "] := "{u+00ac}"  ; (¬) not sign


; Dead Key :  Greek Alphabet

global dkGreek := Map()
dkGreek["a"] := "{u+03b1}"  ; (α) small alpha
dkGreek["A"] := "{u+0391}"  ; (Α) capital alpha
dkGreek["b"] := "{u+03b2}"  ; (β) small beta
dkGreek["B"] := "{u+0392}"  ; (Β) capital beta
dkGreek["v"] := "{u+03b2}"  ; (β) small beta
dkGreek["V"] := "{u+0392}"  ; (Β) capital beta
dkGreek["g"] := "{u+03b3}"  ; (γ) small gamma
dkGreek["G"] := "{u+0393}"  ; (Γ) capital gamma
dkGreek["d"] := "{u+03b4}"  ; (δ) small delta
dkGreek["D"] := "{u+0394}"  ; (Δ) capital delta
dkGreek["e"] := "{u+03b5}"  ; (ε) small epsilon
dkGreek["E"] := "{u+0395}"  ; (Ε) capital epsilon
dkGreek["z"] := "{u+03b6}"  ; (ζ) small zeta
dkGreek["Z"] := "{u+0396}"  ; (Ζ) capital zeta
dkGreek["h"] := "{u+03b7}"  ; (η) small eta
dkGreek["H"] := "{u+0397}"  ; (Η) capital eta
dkGreek["j"] := "{u+03b8}"  ; (θ) small theta
dkGreek["J"] := "{u+0398}"  ; (Θ) capital theta
dkGreek["i"] := "{u+03b9}"  ; (ι) small iota
dkGreek["I"] := "{u+0399}"  ; (Ι) capital iota
dkGreek["k"] := "{u+03ba}"  ; (κ) small kappa
dkGreek["K"] := "{u+039a}"  ; (Κ) capital kappa
dkGreek["l"] := "{u+03bb}"  ; (λ) small lambda
dkGreek["L"] := "{u+039b}"  ; (Λ) capital lambda
dkGreek["m"] := "{u+03bc}"  ; (μ) small mu
dkGreek["M"] := "{u+039c}"  ; (Μ) capital mu
dkGreek["n"] := "{u+03bd}"  ; (ν) small nu
dkGreek["N"] := "{u+039d}"  ; (Ν) capital nu
dkGreek["x"] := "{u+03be}"  ; (ξ) small xi
dkGreek["X"] := "{u+039e}"  ; (Ξ) capital xi
dkGreek["o"] := "{u+03bf}"  ; (ο) small omicron
dkGreek["O"] := "{u+039f}"  ; (Ο) capital omicron
dkGreek["p"] := "{u+03c0}"  ; (π) small pi
dkGreek["P"] := "{u+03a0}"  ; (Π) capital pi
dkGreek["r"] := "{u+03c1}"  ; (ρ) small rho
dkGreek["R"] := "{u+03a1}"  ; (Ρ) capital rho
dkGreek["s"] := "{u+03c3}"  ; (σ) small sigma
dkGreek["S"] := "{u+03a3}"  ; (Σ) capital sigma
dkGreek[","] := "{u+03c2}"  ; (ς) small final sigma
dkGreek[chr(0x00df)] := "{u+03c2}"  ; (ß -> ς) small final sigma
dkGreek["t"] := "{u+03c4}"  ; (τ) small tau
dkGreek["T"] := "{u+03a4}"  ; (Τ) capital tau
dkGreek["u"] := "{u+03c5}"  ; (υ) small upsilon
dkGreek["U"] := "{u+03a5}"  ; (Υ) capital upsilon
dkGreek["y"] := "{u+03c5}"  ; (υ) small upsilon
dkGreek["Y"] := "{u+03a5}"  ; (Υ) capital upsilon
dkGreek["f"] := "{u+03c6}"  ; (φ) small phi
dkGreek["F"] := "{u+03a6}"  ; (Φ) capital phi
dkGreek["c"] := "{u+03c7}"  ; (χ) small chi
dkGreek["C"] := "{u+03a7}"  ; (Χ) capital chi
dkGreek["w"] := "{u+03c8}"  ; (ψ) small psi
dkGreek["W"] := "{u+03a8}"  ; (Ψ) capital psi
dkGreek["q"] := "{u+03c9}"  ; (ω) small omega
dkGreek["Q"] := "{u+03a9}"  ; (Ω) capital omega
dkGreek["1"] := "{u+00b9}"  ; (¹) superscript 1
dkGreek["2"] := "{u+00b2}"  ; (²) superscript 2
dkGreek["3"] := "{u+00b3}"  ; (³) superscript 3
dkGreek["4"] := "{u+2074}"  ; (⁴) superscript 4
dkGreek["5"] := "{u+2075}"  ; (⁵) superscript 5
dkGreek["6"] := "{u+2076}"  ; (⁶) superscript 6
dkGreek["7"] := "{u+2077}"  ; (⁷) superscript 7
dkGreek["8"] := "{u+2078}"  ; (⁸) superscript 8
dkGreek["9"] := "{u+2079}"  ; (⁹) superscript 9
dkGreek["0"] := "{u+2070}"  ; (⁰) superscript 0
dkGreek["-"] := "{u+207b}"  ; (⁻) superscript -
dkGreek["="] := "{u+207c}"  ; (⁼) superscript =
dkGreek["+"] := "{u+207a}"  ; (⁺) superscript +
dkGreek["["] := "{u+207d}"  ; (⁽) superscript (
dkGreek["]"] := "{u+207e}"  ; (⁾) superscript )
dkGreek["!"] := "{u+2081}"  ; (₁) subscript 1
dkGreek["@"] := "{u+2082}"  ; (₂) subscript 2
dkGreek["#"] := "{u+2083}"  ; (₃) subscript 3
dkGreek["$"] := "{u+2084}"  ; (₄) subscript 4
dkGreek["%"] := "{u+2085}"  ; (₅) subscript 5
dkGreek["^"] := "{u+2086}"  ; (₆) subscript 6
dkGreek["&"] := "{u+2087}"  ; (₇) subscript 7
dkGreek["*"] := "{u+2088}"  ; (₈) subscript 8
dkGreek["("] := "{u+2089}"  ; (₉) subscript 9
dkGreek[")"] := "{u+2080}"  ; (₀) subscript 0
dkGreek[";"] := "{u+208b}"  ; (₋) subscript -
dkGreek["'"] := "{u+208c}"  ; (₌) subscript =
dkGreek[chr(34)] := "{u+208a}"  ; (₊) subscript +
dkGreek["{"] := "{u+208d}"  ; (₍) subscript (
dkGreek["}"] := "{u+208e}"  ; (₎) subscript )
dkGreek[" "] := "{u+03bc}"  ; (μ) small mu


; Dead Key :  Math Symbols

global dkMathSymbols := Map()
dkMathSymbols["!"] := "{u+2260}"  ; (≠) not equal to
dkMathSymbols["~"] := "{u+2248}"  ; (≈) almost equal to
dkMathSymbols["="] := "{u+225d}"  ; (≝) equal to by definition
dkMathSymbols["<"] := "{u+2264}"  ; (≤) less-than or equal to
dkMathSymbols[">"] := "{u+2265}"  ; (≥) greater-than or equal to
dkMathSymbols["-"] := "{u+00b1}"  ; (±) plus-minus sign
dkMathSymbols["i"] := "{u+221e}"  ; (∞) infinity symbol
dkMathSymbols["n"] := "{u+207f}"  ; (ⁿ) superscript n
dkMathSymbols["r"] := "{u+221a}"  ; (√) square root
dkMathSymbols["3"] := "{u+221b}"  ; (∛) cube root
dkMathSymbols["4"] := "{u+221c}"  ; (∜) fourth root
dkMathSymbols["%"] := "{u+2030}"  ; (‰) per mille sign
dkMathSymbols["f"] := "{u+0192}"  ; (ƒ) f with hook
dkMathSymbols["S"] := "{u+222b}"  ; (∫) integral symbol
dkMathSymbols["'"] := "{u+2032}"  ; (′) prime
dkMathSymbols[chr(34)] := "{u+2033}"  ; (″) double prime
dkMathSymbols["p"] := "{u+2202}"  ; (∂) partial differential
dkMathSymbols["d"] := "{u+2206}"  ; (∆) increment operator
dkMathSymbols["D"] := "{u+2207}"  ; (∇) nabla/del operator
dkMathSymbols["+"] := "{u+2295}"  ; (⊕) circled plus
dkMathSymbols["*"] := "{u+2297}"  ; (⊗) circled times
dkMathSymbols["^"] := "{u+2118}"  ; (℘) Weierstrass elliptic function
dkMathSymbols["s"] := "{u+2229}"  ; (∩) set intersection
dkMathSymbols["u"] := "{u+222a}"  ; (∪) set union
dkMathSymbols["U"] := "{u+2216}"  ; (∖) set minus
dkMathSymbols["O"] := "{u+2205}"  ; (∅) empty set
dkMathSymbols["g"] := "{u+2282}"  ; (⊂) subset of
dkMathSymbols["G"] := "{u+2284}"  ; (⊄) not a subset of
dkMathSymbols["h"] := "{u+2283}"  ; (⊃) superset of
dkMathSymbols["H"] := "{u+2285}"  ; (⊅) not a superset of
dkMathSymbols["b"] := "{u+2286}"  ; (⊆) subset of or equal to
dkMathSymbols["B"] := "{u+2287}"  ; (⊇) superset of or equal to
dkMathSymbols["m"] := "{u+2208}"  ; (∈) element of
dkMathSymbols["M"] := "{u+2209}"  ; (∉) not an element of
dkMathSymbols["k"] := "{u+220b}"  ; (∋) contains as member
dkMathSymbols["K"] := "{u+220c}"  ; (∌) does not contain as member
dkMathSymbols["A"] := "{u+2200}"  ; (∀) for all
dkMathSymbols["E"] := "{u+2203}"  ; (∃) there exists
dkMathSymbols["X"] := "{u+2204}"  ; (∄) there does not exist
dkMathSymbols["&"] := "{u+2227}"  ; (∧) logical and
dkMathSymbols["|"] := "{u+2228}"  ; (∨) logical or
dkMathSymbols["c"] := "{u+221d}"  ; (∝) proportional to
dkMathSymbols["."] := "{u+22c5}"  ; (⋅) dot operator
dkMathSymbols["o"] := "{u+2218}"  ; (∘) ring operator
dkMathSymbols[":"] := "{u+2234}"  ; (∴) therefore sign
dkMathSymbols[";"] := "{u+2235}"  ; (∵) because sign
dkMathSymbols["z"] := "{u+21af}"  ; (↯) downwards zigzag arrow
dkMathSymbols["F"] := "{u+220e}"  ; (∎) end of proof
dkMathSymbols["R"] := "{u+211d}"  ; (ℝ) real numbers
dkMathSymbols["C"] := "{u+2102}"  ; (ℂ) complex numbers
dkMathSymbols["N"] := "{u+2115}"  ; (ℕ) natural numbers
dkMathSymbols["P"] := "{u+2119}"  ; (ℙ) prime numbers
dkMathSymbols["Q"] := "{u+211a}"  ; (ℚ) rational numbers
dkMathSymbols["Z"] := "{u+2124}"  ; (ℤ) whole numbers
dkMathSymbols["9"] := "{u+221f}"  ; (∟) right angle
dkMathSymbols["8"] := "{u+2220}"  ; (∠) angle symbol
dkMathSymbols["7"] := "{u+2221}"  ; (∡) measured angle
dkMathSymbols["l"] := "{u+2225}"  ; (∥) parallel to
dkMathSymbols["L"] := "{u+2226}"  ; (∦) not parallel to
dkMathSymbols[" "] := "{u+221a}"  ; (√) square root


; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002::Send "{u+00a1}"   ; (¡) inverted exclamation mark
>!+sc002::
<^>!+sc002::Send "{u+00b9}"  ; (¹) superscript 1

; Key :  2
>!sc003::
<^>!sc003::Send "{u+00aa}"   ; (ª) feminine ordinal indicator
>!+sc003::
<^>!+sc003::Send "{u+00b2}"  ; (²) superscript 2

; Key :  3
>!sc004::
<^>!sc004::Send "{u+00ba}"   ; (º) masculine ordinal indicator
>!+sc004::
<^>!+sc004::Send "{u+00b3}"  ; (³) superscript 3

; Key :  4
>!sc005::
<^>!sc005::Send "{u+00a3}"   ; (£) pound sign
>!+sc005::
<^>!+sc005::Send "{u+00a5}"  ; (¥) yen sign

; Key :  5
>!sc006::
<^>!sc006::Send "{u+20ac}"   ; (€) euro sign
>!+sc006::
<^>!+sc006::Send "{u+00a2}"  ; (¢) cent sign (dollar)

; Key :  6
>!sc007::
<^>!sc007:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCircumflex.Has(ih.Input)
    Send dkCircumflex[ih.Input]
}
>!+sc007::
<^>!+sc007:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCaron.Has(ih.Input)
    Send dkCaron[ih.Input]
}

; Key :  7
>!sc008::
<^>!sc008:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkRingAbove.Has(ih.Input)
    Send dkRingAbove[ih.Input]
}
>!+sc008::
<^>!+sc008:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkMacron.Has(ih.Input)
    Send dkMacron[ih.Input]
}

; Key :  8
>!sc009::
<^>!sc009::Send "{u+201e}"   ; („) double low-9 quotation mark
>!+sc009::
<^>!+sc009::Send "{u+201a}"  ; (‚) single low-9 quotation mark

; Key :  9
>!sc00A::
<^>!sc00A::Send "{u+201c}"   ; (“) left double quotation mark
>!+sc00A::
<^>!+sc00A::Send "{u+2018}"  ; (‘) left single quotation mark

; Key :  0
>!sc00B::
<^>!sc00B::Send "{u+201d}"   ; (”) right double quotation mark
>!+sc00B::
<^>!+sc00B::Send "{u+2019}"  ; (’) right single quotation mark

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C::Send "{u+2713}"   ; (✓) check mark
>!+sc00C::
<^>!+sc00C::Send "{u+2717}"  ; (✗) ballot x

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::Send "{u+00d7}"   ; (×) multiplication sign
>!+sc00D::
<^>!+sc00D::Send "{u+00f7}"  ; (÷) division sign

; Key :  Q
>!sc010::
<^>!sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c6}"  ; (Æ) letter AE
  else
    Send "{u+00e6}"  ; (æ) letter ae
}
>!+sc010::
<^>!+sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e6}"  ; (æ) letter ae
  else
    Send "{u+00c6}"  ; (Æ) letter AE
}

; Key :  W
>!sc011::
<^>!sc011:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c5}"  ; (Å) A with ring above
  else
    Send "{u+00e5}"  ; (å) a with ring above
}
>!+sc011::
<^>!+sc011:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e5}"  ; (å) a with ring above
  else
    Send "{u+00c5}"  ; (Å) A with ring above
}

; Key :  E
>!sc012::
<^>!sc012:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cb}"  ; (Ë) E with diaeresis
  else
    Send "{u+00eb}"  ; (ë) e with diaeresis
}
>!+sc012::
<^>!+sc012:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00eb}"  ; (ë) e with diaeresis
  else
    Send "{u+00cb}"  ; (Ë) E with diaeresis
}

; Key :  R
>!sc013::
<^>!sc013:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dd}"  ; (Ý) Y with acute
  else
    Send "{u+00fd}"  ; (ý) y with acute
}
>!+sc013::
<^>!+sc013:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fd}"  ; (ý) y with acute
  else
    Send "{u+00dd}"  ; (Ý) Y with acute
}

; Key :  T
>!sc014::
<^>!sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00de}"  ; (Þ) capital letter thorn
  else
    Send "{u+00fe}"  ; (þ) small letter thorn
}
>!+sc014::
<^>!+sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fe}"  ; (þ) small letter thorn
  else
    Send "{u+00de}"  ; (Þ) capital letter thorn
}

; Key :  Y
>!sc015::
<^>!sc015:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0178}"  ; (Ÿ) Y with diaeresis
  else
    Send "{u+00ff}"  ; (ÿ) y with diaeresis
}
>!+sc015::
<^>!+sc015:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ff}"  ; (ÿ) y with diaeresis
  else
    Send "{u+0178}"  ; (Ÿ) Y with diaeresis
}

; Key :  U
>!sc016::
<^>!sc016:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dc}"  ; (Ü) U with diaeresis
  else
    Send "{u+00fc}"  ; (ü) u with diaeresis
}
>!+sc016::
<^>!+sc016:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fc}"  ; (ü) u with diaeresis
  else
    Send "{u+00dc}"  ; (Ü) U with diaeresis
}

; Key :  I
>!sc017::
<^>!sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cf}"  ; (Ï) I with diaeresis
  else
    Send "{u+00ef}"  ; (ï) i with diaeresis
}
>!+sc017::
<^>!+sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ef}"  ; (ï) i with diaeresis
  else
    Send "{u+00cf}"  ; (Ï) I with diaeresis
}

; Key :  O
>!sc018::
<^>!sc018:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d6}"  ; (Ö) O with diaeresis
  else
    Send "{u+00f6}"  ; (ö) o with diaeresis
}
>!+sc018::
<^>!+sc018:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f6}"  ; (ö) o with diaeresis
  else
    Send "{u+00d6}"  ; (Ö) O with diaeresis
}

; Key :  P
>!sc019::
<^>!sc019:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0152}"  ; (Œ) ligature OE
  else
    Send "{u+0153}"  ; (œ) ligature oe
}
>!+sc019::
<^>!+sc019:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0153}"  ; (œ) ligature oe
  else
    Send "{u+0152}"  ; (Œ) ligature OE
}

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send "{u+00ab}"   ; («) left-pointing double angle quotation mark
>!+sc01A::
<^>!+sc01A::Send "{u+2039}"  ; (‹) left-pointing single angle quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send "{u+00bb}"   ; (») right-pointing double angle quotation mark
>!+sc01B::
<^>!+sc01B::Send "{u+203a}"  ; (›) right-pointing single angle quotation mark

; Key :  A
>!sc01E::
<^>!sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c4}"  ; (Ä) A with diaeresis
  else
    Send "{u+00e4}"  ; (ä) a with diaeresis
}
>!+sc01E::
<^>!+sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e4}"  ; (ä) a with diaeresis
  else
    Send "{u+00c4}"  ; (Ä) A with diaeresis
}

; Key :  S
>!sc01F::
<^>!sc01F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
}
>!+sc01F::
<^>!+sc01F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
  else
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
}

; Key :  D
>!sc020::
<^>!sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0110}"  ; (Đ) D with stroke
  else
    Send "{u+0111}"  ; (đ) d with stroke
}
>!+sc020::
<^>!+sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0111}"  ; (đ) d with stroke
  else
    Send "{u+0110}"  ; (Đ) D with stroke
}

; Key :  F
>!sc021::
<^>!sc021:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c8}"  ; (È) E with grave
  else
    Send "{u+00e8}"  ; (è) e with grave
}
>!+sc021::
<^>!+sc021:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e8}"  ; (è) e with grave
  else
    Send "{u+00c8}"  ; (È) E with grave
}

; Key :  G
>!sc022::
<^>!sc022:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c9}"  ; (É) E with acute
  else
    Send "{u+00e9}"  ; (é) e with acute
}
>!+sc022::
<^>!+sc022:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e9}"  ; (é) e with acute
  else
    Send "{u+00c9}"  ; (É) E with acute
}

; Key :  H
>!sc023::
<^>!sc023:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d9}"  ; (Ù) U with grave
  else
    Send "{u+00f9}"  ; (ù) u with grave
}
>!+sc023::
<^>!+sc023:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f9}"  ; (ù) u with grave
  else
    Send "{u+00d9}"  ; (Ù) U with grave
}

; Key :  J
>!sc024::
<^>!sc024:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00da}"  ; (Ú) U with acute
  else
    Send "{u+00fa}"  ; (ú) u with acute
}
>!+sc024::
<^>!+sc024:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fa}"  ; (ú) u with acute
  else
    Send "{u+00da}"  ; (Ú) U with acute
}

; Key :  K
>!sc025::
<^>!sc025:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0132}"  ; (Ĳ) ligature IJ
  else
    Send "{u+0133}"  ; (ĳ) ligature ij
}
>!+sc025::
<^>!+sc025:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0133}"  ; (ĳ) ligature ij
  else
    Send "{u+0132}"  ; (Ĳ) ligature IJ
}

; Key :  L
>!sc026::
<^>!sc026:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d8}"  ; (Ø) O with stroke
  else
    Send "{u+00f8}"  ; (ø) o with stroke
}
>!+sc026::
<^>!+sc026:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f8}"  ; (ø) o with stroke
  else
    Send "{u+00d8}"  ; (Ø) O with stroke
}

; Key :  ; / : (semicolon / colon)
>!sc027::
<^>!sc027::Send "{u+00b0}"   ; (°) degree sign
>!+sc027::
<^>!+sc027::Send "{u+00b7}"  ; (·) middle dot

; Key :  ' / " (apostrophe / quotation mark)
>!sc028::
<^>!sc028:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkAcute.Has(ih.Input)
    Send dkAcute[ih.Input]
}
>!+sc028::
<^>!+sc028:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDiaeresis.Has(ih.Input)
    Send dkDiaeresis[ih.Input]
}

; Key :  ` / ~ (grave accent / tilde)
>!sc029::
<^>!sc029:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkGrave.Has(ih.Input)
    Send dkGrave[ih.Input]
}
>!+sc029::
<^>!+sc029:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkTilde.Has(ih.Input)
    Send dkTilde[ih.Input]
}

; Key :  \ / | (backslash / vertical line)
>!sc02B::
<^>!sc02B:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkSymbols.Has(ih.Input)
    Send dkSymbols[ih.Input]
}
>!+sc02B::
<^>!+sc02B::Send "{u+00a6}"  ; (¦) broken bar

; Key :  Z
>!sc02C::
<^>!sc02C:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c0}"  ; (À) A with grave
  else
    Send "{u+00e0}"  ; (à) a with grave
}
>!+sc02C::
<^>!+sc02C:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e0}"  ; (à) a with grave
  else
    Send "{u+00c0}"  ; (À) A with grave
}

; Key :  X
>!sc02D::
<^>!sc02D:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c1}"  ; (Á) A with acute
  else
    Send "{u+00e1}"  ; (á) a with acute
}
>!+sc02D::
<^>!+sc02D:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e1}"  ; (á) a with acute
  else
    Send "{u+00c1}"  ; (Á) A with acute
}

; Key :  C
>!sc02E::
<^>!sc02E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c7}"  ; (Ç) C with cedilla
  else
    Send "{u+00e7}"  ; (ç) c with cedilla
}
>!+sc02E::
<^>!+sc02E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e7}"  ; (ç) c with cedilla
  else
    Send "{u+00c7}"  ; (Ç) C with cedilla
}

; Key :  V
>!sc02F::
<^>!sc02F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cc}"  ; (Ì) I with grave
  else
    Send "{u+00ec}"  ; (ì) i with grave
}
>!+sc02F::
<^>!+sc02F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ec}"  ; (ì) i with grave
  else
    Send "{u+00cc}"  ; (Ì) I with grave
}

; Key :  B
>!sc030::
<^>!sc030:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cd}"  ; (Í) I with acute
  else
    Send "{u+00ed}"  ; (í) i with acute
}
>!+sc030::
<^>!+sc030:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ed}"  ; (í) i with acute
  else
    Send "{u+00cd}"  ; (Í) I with acute
}

; Key :  N
>!sc031::
<^>!sc031:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d1}"  ; (Ñ) N with tilde
  else
    Send "{u+00f1}"  ; (ñ) n with tilde
}
>!+sc031::
<^>!+sc031:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f1}"  ; (ñ) n with tilde
  else
    Send "{u+00d1}"  ; (Ñ) N with tilde
}

; Key :  M
>!sc032::
<^>!sc032:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkGreek.Has(ih.Input)
    Send dkGreek[ih.Input]
}
>!+sc032::
<^>!+sc032:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkMathSymbols.Has(ih.Input)
    Send dkMathSymbols[ih.Input]
}

; Key :  , / < (comma / less-than sign)
>!sc033::
<^>!sc033:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d2}"  ; (Ò) O with grave
  else
    Send "{u+00f2}"  ; (ò) o with grave
}
>!+sc033::
<^>!+sc033:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f2}"  ; (ò) o with grave
  else
    Send "{u+00d2}"  ; (Ò) O with grave
}

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d3}"  ; (Ó) O with acute
  else
    Send "{u+00f3}"  ; (ó) o with acute
}
>!+sc034::
<^>!+sc034:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f3}"  ; (ó) o with acute
  else
    Send "{u+00d3}"  ; (Ó) O with acute
}

; Key :  / / ? (slash / question mark)
>!sc035::
<^>!sc035::Send "{u+00bf}"   ; (¿) inverted question mark
>!+sc035::
<^>!+sc035::Send "{u+2026}"  ; (…) horizontal ellipsis

; Key :  (space)
>!sc039::
<^>!sc039::Send "{u+00a0}"   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send "{u+00a0}"  ; non-breaking space (NBSP)
