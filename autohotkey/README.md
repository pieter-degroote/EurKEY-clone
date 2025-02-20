# EurKEY - Scripts for AutoHotkey v2/v1.1

This folder contains the unofficial AHK scripts for EurKEY v1.1 to v1.3.

## Prerequisites

To work properly, the Windows main/base keyboard layout has to be set to either&nbsp;:

- **Hausa (Latin, Nigeria)** =&gt; AltGr assigned to EurKEY (based on US QWERTY).
- **Romanian (Programmers)** =&gt; AltGr assigned to EurKEY (based on US QWERTY).
- **English (India)** =&gt; AltGr assigned to EurKEY (based on US QWERTY).
- **United States (US)** =&gt; Right Alt assigned to EurKEY (secondary choice).

  (Notes: "Romanian (Programmers)" does not contain some special control codes (Ctrl+\[: u+001b, Ctrl+\\: u+001c, Ctrl+\]: u+001d), but I could not find any specific use cases requiring these mappings. "English (India)" also emits an Indian rupee sign (₹) via Ctrl+Shift+4.)

**_Note about the standard base US layout&nbsp;:_**

When two or more languages/keyboards are installed on the system, the default 'Alt + Shift' sequence will interfere with the AHK scripts.  
To avoid this, you can disable the interfering key sequences at&nbsp;:  
*Settings -&gt; Time &amp; Language -&gt; Language -&gt; Spelling, typing &amp; keyboard settings (on the right) -&gt; Advanced keyboard settings -&gt; Input language hot keys*  
Please note that on the standard US QWERTY, the sequence 'Left Alt + Shift' also gets mistakenly triggered by 'Right Alt + Shift', resulting in an unexpected keyboard layout change.
