
<cfscript>
	
	filePaths = directoryList(expandPath('/graphicsDir'));

	for (filePath in filePaths) {

		writeOutput(filePath & '<br/>');
	}

</cfscript>


<cfoutput>#expandPath('/graphicsDir')#</cfoutput>
