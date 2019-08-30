version=$1
update=$2
increment=$3

major=0
minor=0
patch=0

# print message on error
errorMessage="usage: ./updateVersion.sh [version 'Ex.: 1.0.0'] [major/minor/patch] [increment optional|default=1]"

# load variables
regexVersion="([0-9]+).([0-9]+).([0-9]+)"
if [[ $version =~ $regexVersion ]]; then
  major="${BASH_REMATCH[1]}"
  minor="${BASH_REMATCH[2]}"
  patch="${BASH_REMATCH[3]}"
else
  echo $errorMessage
  exit -1
fi

# optional parameter, if not informed, set default value
if [[ "$increment" == "" ]]; then
  increment=1
fi  

# check parameter to see which number to increment
if [[ "$update" == "major" ]]; then
  major=$((major+increment))
  minor=0
  patch=0
elif [[ "$update" == "minor" ]]; then
  minor=$((minor+increment))
  patch=0
elif [[ "$update" == "patch" ]]; then
  patch=$((patch+increment))
else
  echo $increment
  exit -1
fi

# print version updated
echo "${major}.${minor}.${patch}"