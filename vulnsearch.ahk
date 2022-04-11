/*
Vulnsearh

give it a term and it will open browser searching for it 

to do
	interace can tick on/off the sources
	search all option
	get the sources to be quality

*/

version=0.9
; if you use a different browser change it 
Browser = "brave.exe"


InputBox, UserInput, Enter Seach Term.,VulnsSearch %version%`n ------------ `n Insert Search Term Below`ni.e Jetty 9 or Apache 2,  Enter in the sarch term, 200, 200
; need to try and URL ecode so replace space with %20
StringReplace, UserInput, UserInput, %A_Space%, +, All

;MsgBox, "%UserInput% %Browser%"

url1="https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword="%UserInput%
url2="https://www.cvedetails.com/google-search-results.php?q="%UserInput%
url3="https://nvd.nist.gov/vuln/search/results?form_type=Basic&results_type=overview&query=%UserInput%&search_type=all&isCpeNameSearch=false"
url4="https://www.google.co.uk/search?q=%UserInput%+\"exploit\""
url5="https://www.exploit-db.com/search?q=%UserInput%"
url6="https://vulners.com/search?query=%UserInput%order:published"
url7="https://packetstormsecurity.com/search/?q=%UserInput%"
url8="https://endoflife.software/search?q=%UserInput%"
url9="https://vulmon.com/searchpage?q=%UserInput%"
url10="https://security.snyk.io/vuln/?search=%UserInput%"
url11="https://www.tenable.com/cve/search?q=%UserInput%&sort=newest&page=1"
url12="https://sploitus.com/?query=%UserInput%#exploits"
url13="https://vuldb.com/?search"
url14="https://www.rapid7.com/db/?q=%UserInput%&type="
url15="https://www.exploitalert.com/search-results.html?search=%UserInput%"

; want to ad in 
;https://vuldb.com/


if ErrorLevel
    MsgBox, CANCEL was pressed.
else
	Run %Browser% -new-window %url1% %url2% %url3% %url4% %url5% %url7% %url9% %url10% %url11% %url12% %url13% %url14% %url15%


; tests
; Jetty 9.4.27.v20200227