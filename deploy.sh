{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl280\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/sh\
\
# If a command fails then the deploy stops\
set -e\
\
printf "\\033[0;32mDeploying updates to GitHub...\\033[0m\\n"\
\

# Go To Public folder\
cd public\
\
# Add changes to git.\
git add .\
\
# Commit changes.\
msg="rebuilding site $(date)"\
if [ -n "$*" ]; then\
	msg="$*"\
fi\
git commit -m "$msg"\
\
# Push source and build repos.\
git push origin master\
}
