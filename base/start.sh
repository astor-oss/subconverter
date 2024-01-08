ps -ef|grep subconverter-linux64|grep -v grep|awk '{print $2}'|xargs kill
cd "$(dirname "$0")"

CMD=./subconverter-linux64
if [ "$(uname)" == "Darwin" ]
then
    CMD=./subconverter-macos
fi

echo ${CMD}

${CMD}

