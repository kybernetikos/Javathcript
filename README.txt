To run the index page against the source files instead of the build files, you replace this script tag:

	<script type="text/javascript" src="Javathcript.js"></script>

with these script tags:

	<script type="text/javascript" src="../source/BPWJs.js"></script>
	<script type="text/javascript" src="../source/Atom.js"></script>
	<script type="text/javascript" src="../source/UnevaluatedObj.js"></script>
	<script type="text/javascript" src="../source/JavathcriptTokenizer.js"></script>
	<script type="text/javascript" src="../source/JavathcriptParser.js"></script>
	<script type="text/javascript" src="../source/Environment.js"></script>
	<script type="text/javascript" src="../source/Javathcript.js"></script>
	<script type="text/javascript" src="../source/DocumentEvaluator.js"></script>

You can build a new Javathcript.js file by running the build.sh script inside the build folder.