#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 echo -n "Payload ["QPBulkUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBulkUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print
echo -n "Payload ["QPUploader_Mgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUploader_Mgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Upload_QstnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Upload_QstnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPAdmin/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadServiceQPAdmin/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP-Workflow/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP-Workflow/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-FileProcessor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUpload-FileProcessor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Admin_QPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Dashboard/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPControl-Dashboard/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPBulk/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataProcessingQPBulk/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Portal_QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_AccessControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflow_AccessControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUploadQPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP-Automation/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP-Automation/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperModule/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QsnPaperModule/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AdminQPaperDoc/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AdminQPaperDoc/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ManagerQP/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ManagerQP/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPWorkflow/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Sync_QPWorkflow/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Handler_Q_P/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Handler_Q_P/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Handling/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPHandler_Handling/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-DataOps/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAuto-DataOps/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUpload-QPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Upload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBulk-Upload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["SystemQPHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"SystemQPHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPBData/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadService-QPBData/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-AutoUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper-AutoUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataUpload-QuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPBData/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"FileUpload-QPBData/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-DataPipeline/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMgmt-DataPipeline/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-TestPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MonitoringTool-TestPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AccessControl_QPControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPaperDoc/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AccessControl_QPaperDoc/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperBatchProcessor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QsnPaperBatchProcessor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Automation-QuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Automation-QuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataOps-QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Workflow_QPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP-Tool/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP-Tool/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"CloudSync_QPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP_DataOps/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP_DataOps/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPCloud/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"HandlingQPCloud/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Panel-QsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Panel-QsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPBulk/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"HandlingModuleQPBulk/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Transfer-QPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AutoUploadQPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_AutomationSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPSystem_AutomationSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperBatchUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QsnPaperBatchUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Ops/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAdmin-Ops/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-DataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QuestionPaper-DataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPaperDoc/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUpload_QPaperDoc/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAutoManagement/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAutoManagement/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPAdmin/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AutomationQPAdmin/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["HandlerQuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"HandlerQuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Handler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaperDoc-Handler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_AccessControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBFile_AccessControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUpload-QPProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPBatch/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MonitoringTool_QPBatch/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUploaderControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QP/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AccessControl_QP/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPB/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Manager_QPB/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchProcessor_QPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QP/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AutomationSystem_QP/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-System/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QstnPaper-System/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Service-QPWorkflow/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Service-QPWorkflow/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Tool/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPFile-Tool/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPBulk/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Platform_QPBulk/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Control/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManager_Control/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-DataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper-DataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_MonitoringTool/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAdmin_MonitoringTool/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Sync/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBData_Sync/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUpload-QPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPBatch/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Processing_QPBatch/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPB/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUploadQPB/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MgmtQsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MgmtQsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBFileTransfer/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBFileTransfer/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Transfer/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBData_Transfer/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_DataSync/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPCloud_DataSync/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPUploader/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Handling_QPUploader/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPDatabasePlatform/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPDatabasePlatform/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Dashboard-QPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AccessControl-QPControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchProcessor_QuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-ExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataPipeline-ExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBData-DataOps/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBData-DataOps/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"SuiteQPHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_AutomationSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QstnPaper_AutomationSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-DataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QstnPaper-DataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DashboardQPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-DataSync/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ExamPaper-DataSync/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPCloudHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPCloudHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingDataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessingDataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-ProcessingSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflow-ProcessingSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_System/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessing_System/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaperDashboard/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaperDashboard/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Tool/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflow_Tool/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"FileUpload_QuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Transfer/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPCloud-Transfer/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Upload_Q_P/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Upload_Q_P/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_ExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"HandlingModule_ExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Management-QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Management-QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-ProcessingSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMonitor-ProcessingSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPBFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Monitoring_QPBFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPB/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadServiceQPB/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperMgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ExamPaperMgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_ExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Mgmt_ExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataUploadQuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ServiceTestPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ServiceTestPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadService-QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPAdmin/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUploadQPAdmin/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPUploader/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Transfer_QPUploader/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPMgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Handler-QPMgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-MonitoringTool/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUpload-MonitoringTool/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ProcessingSystem-QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Transfer-QPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Uploader/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaper_Uploader/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPBulk/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Dashboard_QPBulk/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_MassUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflow_MassUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Automation/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ExamPaper-Automation/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Module/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMaster_Module/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP_DataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP_DataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MonitoringTool_QPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperAccessControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QuestionPaperAccessControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPUploader/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Portal_QPUploader/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Processing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPControl-Processing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Panel-QstnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Panel-QstnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_ExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"FileProcessor_ExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["PlatformQ_P/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"PlatformQ_P/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"FileUploadQPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-UploadService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAdmin-UploadService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Suite/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUploader_Suite/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorAdmin/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMonitorAdmin/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Uploader_QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataProcessing-QPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-FileProcessor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaperDoc-FileProcessor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Automation/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAdmin-Automation/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["PanelQsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"PanelQsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUploadCloudSync/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUploadCloudSync/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataPipeline_QPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Processing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBulk-Processing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPCloud/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MgmtQPCloud/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_AccessControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMgmt_AccessControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPMgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Sync_QPMgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPDatabase/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DashboardQPDatabase/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_DataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaperDoc_DataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorBatchUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMonitorBatchUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchProcessor_QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Tool-QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPMaster/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MassUpload-QPMaster/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPMgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadServiceQPMgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPUploader/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Monitoring-QPUploader/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploaderQsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploaderQsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Dashboard/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAdmin-Dashboard/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_ProcessingSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBatch_ProcessingSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPControlHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPControlHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Admin/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBulk_Admin/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ModuleTestPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ModuleTestPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"HandlingModule_QPProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Automation_ExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Automation_ExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManager_ProcessingSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManager_ProcessingSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMasterManagement/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMasterManagement/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP-MonitoringTool/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP-MonitoringTool/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBulkHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBulkHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-DataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessing-DataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataOps-QsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaperMonitoring/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaperMonitoring/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB_AutomationSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB_AutomationSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Suite-QPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_UploadService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBFile_UploadService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPAuto/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUploadQPAuto/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Ops/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManager_Ops/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPMaster/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ProcessingSystemQPMaster/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP-Handling/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP-Handling/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["OpsQPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"OpsQPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_ExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataPipeline_ExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPService-AutomationSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPService-AutomationSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPMgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUpload_QPMgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ServiceQsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ServiceQsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Panel/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper-Panel/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPControl/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataProcessing-QPControl/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Upload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBData-Upload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Transfer/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUploader_Transfer/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUpload_QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Upload_QPHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Module_QPMonitor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Module_QPMonitor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ProcessingSystem-QPProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Q_PBatchUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Q_PBatchUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-MassUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ExamPaper-MassUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAutoPanel/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAutoPanel/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_ProcessingSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMgmt_ProcessingSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPFileService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPFileService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Handling/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManager_Handling/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPUploader/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Tool_QPUploader/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPCloud/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUpload_QPCloud/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaper-DataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaper-DataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPBFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Manager_QPBFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP_DatabaseManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP_DatabaseManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Upload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPFile_Upload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB_DataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB_DataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"ProcessingSuite_QuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Workflow/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper-Workflow/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_DataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QsnPaper_DataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaperModule/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaperModule/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_DataPipeline/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflow_DataPipeline/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-DataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMgmt-DataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Suite_QPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB_DataUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB_DataUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Manager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMaster-Manager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAutoMassUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAutoMassUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Automation-QstnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Automation-QstnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPBulk/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Upload_QPBulk/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_UploadService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper_UploadService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Management/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPHandler_Management/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPService_FileProcessor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPService_FileProcessor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AutomationExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AutomationExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQuestionPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataProcessingQuestionPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPCloud/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"MonitoringTool_QPCloud/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowUploadService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflowUploadService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadService_QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DashboardQPHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPWorkflow/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"FileUpload_QPWorkflow/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPaperDoc/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DashboardQPaperDoc/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB-Platform/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB-Platform/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPControlWorkflow/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPControlWorkflow/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QP/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"FileUpload-QP/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataPipelineQPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"WorkflowQPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Monitoring/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBatch-Monitoring/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQ_P/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"HandlingModuleQ_P/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManagement/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManagement/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-System/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessing-System/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Handling_QPHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPFile_DataSync/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPFile_DataSync/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPFileDataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPFileDataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPBulk/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Transfer-QPBulk/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Mgmt_QPManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQstnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUploadQstnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Ops/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPAuto-Ops/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB-Mgmt/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB-Mgmt/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Q_PProcessingSuite/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Q_PProcessingSuite/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPMonitor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AccessControl-QPMonitor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Sync-QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_FileUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper_FileUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Admin_QPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtProcessingSuite/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMgmtProcessingSuite/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowSuite/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflowSuite/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Platform-QPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPMaster/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataSync-QPMaster/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Q_PDataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Q_PDataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QstnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Mgmt-QstnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPBatch/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUpload-QPBatch/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB_BulkUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB_BulkUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Handling/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBFile_Handling/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPBData/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BatchUploadQPBData/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Platform/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBData_Platform/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderFileProcessor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPUploaderFileProcessor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperDataProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QuestionPaperDataProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceExamPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadServiceExamPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TransferQPFile/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TransferQPFile/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_DataOps/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPWorkflow_DataOps/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Portal/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessing_Portal/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-DatabaseManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper-DatabaseManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPB/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Handler_QPB/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Uploader-QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPProcessing/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"UploadService-QPProcessing/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPBData/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Handler_QPBData/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPMonitor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Admin_QPMonitor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperAutomation/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QstnPaperAutomation/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-TestPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"BulkUpload-TestPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPService/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Upload_QPService/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Suite-TestPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Suite-TestPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPAuto/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataOps_QPAuto/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPB_Panel/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPB_Panel/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_FileUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QuestionPaper_FileUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Handler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPMonitor_Handler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"DataSync-QPUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPBatch/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Dashboard-QPBatch/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingHandler/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessingHandler/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPAdmin/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Sync_QPAdmin/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QP-Panel/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QP-Panel/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQsnPaper/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"AccessControlQsnPaper/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPSuite/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPSuite/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"PlatformQPSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_FileProcessor/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPProcessing_FileProcessor/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPAuto/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Upload_QPAuto/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManagerBulkUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManagerBulkUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBulkAutomationSystem/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBulkAutomationSystem/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocAutoUpload/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPaperDocAutoUpload/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Sync/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPBatch-Sync/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_DatabaseManager/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"TestPaper_DatabaseManager/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Portal/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"QPManager_Portal/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print

echo -n "Payload ["Sync-QP/" ]:"
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', 'Length : '%{size_download}\n' "${target}"Sync-QP/"" \      -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}{payload}' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
print


}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
