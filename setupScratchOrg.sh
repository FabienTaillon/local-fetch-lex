echo '##### CREATING SCRATCH ORG #####'
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias local-fetch --setdefaultusername --wait 10
echo '##### PUSHING METADATA #####'
sfdx force:source:push --targetusername local-fetch
echo '##### ASSIGNING PERMISSIONS #####'
sfdx force:user:permset:assign --permsetname Fetch_Data --targetusername local-fetch
echo '##### OPENING SCRATCH ORG #####'
sfdx force:org:open --path /lightning/n/Fetch_Data --targetusername local-fetch