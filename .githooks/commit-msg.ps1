[CmdletBinding()]
param (
    $commitPath
)

$ErrorActionPreference = "stop"

$commitMsg = Get-Content $commitPath -TotalCount 1

if ($commitMsg -notmatch '(^AB#)(\d{1,6})\s(\w+)') {
    Write-Information -MessageData "commit isn't in correct format: '<AB#><1-6 digits>  <description>'" -InformationAction Continue
    Write-Information -MessageData "commit message: $commitMsg" -InformationAction Continue
    Write-Information -MessageData "please ensure your commit message complies" -InformationAction Continue
    exit 1
}
else {
    Write-Information -MessageData "commit message complies with conventional commit messages" -InformationAction Continue
    exit 0
}

























#!/usr/bin/env pwsh

# param(
   # $message
  	# )


 

    # # in case message is too long, trim
    # $messagePerLine = $message -split "`n"	
	
	
	 # Write-Host  $messagePerLine
	
# # Verify user's Git config has appropriate email address
# if ($messagePerLine -notmatch "(^AB#)(\d{1,6})\s(\w+)")
# {
   
   # Write-Host $message	
   # write-host("*commitMessage is not valid!!!")
   # write-host("Please provide a valid Commit message (ex: AB#1212 oneline added)")
   # exit 1
# }


# exit 0




	
# # $param1=$args[0]

# # $message1 = Add-content -Value $message


		
# if($message -match "(^AB#)(\d{1,6})\s(\w+)" )
# {
   
   # Write-Host $message	
   # write-host("commitMessage is valid")
   # exit 0
# }

# if ($message -notmatch "(^AB#)(\d{1,6})\s(\w+)")
# {
   
   # Write-Host $message	
   # write-host("*commitMessage is not valid!!!")
   # write-host("Please provide a valid Commit message (ex: AB#1212 oneline added)")
   # exit 1
# }

# $requiredRegex = "(^AB#)(\d{1,6})\s(\w+)"


# $message -match '^AB#'	

# Write-Host $message




# write-host $message 



# commitMessageFile = open(sys.argv[1]) #The first argument is the file
# commitMessage = commitMessageFile.read().strip()


    # $results = $message | Select-String $requiredRegex -AllMatches
    # $results.Matches.Value
	
# $Regex = [regex] '(^AB#)(\d{1,6})\s(\w+)'	

	
