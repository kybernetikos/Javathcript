currdir=`dirname $0`
currdir=`readlink -f $currdir`

cd ${currdir}/..
java -jar ${currdir}/compiler.jar --js=source/BPWJs.js --js=source/Atom.js --js=source/UnevaluatedObj.js --js=source/JavathcriptTokenizer.js --js=source/JavathcriptParser.js --js=source/Environment.js --js=source/Javathcript.js --js=source/DocumentEvaluator.js --js_output_file=webcontent/Javathcript.js  --compilation_level WHITESPACE_ONLY
