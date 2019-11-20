${SegmentFile}

${SegmentPre}
	${If} ${FileExists} "$LOCALAPPDATA\ZZZ_Projects\*.*"
		Rename "$LOCALAPPDATA\ZZZ_Projects" "$LOCALAPPDATA\ZZZ_Projects-BackupByFindAndReplacePortable"
	${EndIf}
!macroend

${SegmentPost}
	${If} ${FileExists} "$LOCALAPPDATA\ZZZ_Projects-BackupByFindAndReplacePortable\*.*"
		Rename "$LOCALAPPDATA\ZZZ_Projects-BackupByFindAndReplacePortable" "$LOCALAPPDATA\ZZZ_Projects"
	${EndIf}
!macroend
