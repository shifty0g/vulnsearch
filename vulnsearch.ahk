
; if you use a different browser change it 
Browser = "brave.exe"

InputBox, UserInput, Enter Seach Term., , 100, 200
; need to try and URL ecode so replace space with %20
StringReplace, UserInput, UserInput, %A_Space%, +, All

;MsgBox, "%UserInput% %Browser%"

url1="https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword="%UserInput%
url2="https://www.cvedetails.com/google-search-results.php?q="%UserInput%
url3="https://nvd.nist.gov/vuln/search/results?form_type=Basic&results_type=overview&query=%UserInput%&search_type=all&isCpeNameSearch=false"
url4="https://www.google.co.uk/search?q=%UserInput%+exploit"
url5="https://www.exploit-db.com/search?q=%UserInput%"
url6="https://vulners.com/search?query=%UserInput%order:published


if ErrorLevel
    MsgBox, CANCEL was pressed.
else
	Run %Browser% -new-window %url1% %url2% %url3% %url4% %url5%





; tests
; Jetty 9.4.27.v20200227