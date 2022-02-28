#!/bin/sh
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
echo "UserId: $1";
"conda init bash";
"conda activate";
echo $PATH;
python3 ../qt_qaqc_qgv/load_from_aws.py --input $1;
