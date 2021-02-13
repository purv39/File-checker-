@ECHO off

for /D %%f in (C:\dir1\Solutions\*) do (
		if NOT EXIST "%%f\exam.zip" (
			ECHO Zip not there in %%f>>C:\dir1\zipProblem.log 
		) ELSE (
		
		cd %%f

		tar -xf %%f\exam.zip
	
		if NOT EXIST "%%f\exam" (
			ECHO Folder not there in %%f >> C:\dir1\folderProblem.log
			
		) ELSE (

			if NOT EXIST "%%f\exam\exam.txt" (
				ECHO File Not in %%f >> C:\dir1\fileProblem.log
			)
		
		
		 
		 )
		 for /D %%d in (%%f\*) do (
			rmdir /S /Q %%d
		 )
)		
) 
Echo .
Echo .
Echo .
Echo File problem in
Echo .
type C:\dir1\fileProblem.log

Echo .
Echo .
Echo .
Echo Folder problem in
Echo . 
type C:\dir1\folderProblem.log

Echo .
Echo .
Echo .
Echo Zip problem in
Echo .
type C:\dir1\zipProblem.log 


cd C:\Users\dell\Desktop\purv\SET\Level-1\OSF\LAB\L-06\L-06