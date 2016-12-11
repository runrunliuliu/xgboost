OUTPUTDIRECTORY=/Users/liu/apps/review/xgboost/codebrowser
mkdir -p $OUTPUTDIRECTORY
DATADIRECTORY=$OUTPUTDIRECTORY/../data
mkdir -p $DATADIRECTORY
BUILDIRECTORY=$PWD
VERSION=`git describe --always --tags`

/Users/liu/apps/woboq_codebrowser/generator/codebrowser_generator -b $BUILDIRECTORY -a -o $OUTPUTDIRECTORY -p codebrowser:$BUILDIRECTORY:$VERSION

/Users/liu/apps/woboq_codebrowser/indexgenerator/codebrowser_indexgenerator $OUTPUTDIRECTORY

cp -rv /Users/liu/apps/woboq_codebrowser/data $DATADIRECTORY
