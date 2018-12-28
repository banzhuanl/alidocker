find . -name "*~" | xargs rm 2>/dev/null
find . -name "*pyc" | xargs rm 2>/dev/null
find . -name "\#*" | xargs rm 2>/dev/null
find . -name ".\#*" | xargs rm 2>/dev/null
find . -name "apsara_base.LOG*" | xargs rm 2>/dev/null
