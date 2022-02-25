# Fetch Data LEX

To create a Scratch Org, run `setupScratchOrg.sh`, or run the following commands:
* `sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias local-fetch --setdefaultusername --wait 10`
* `sfdx force:source:push --targetusername local-fetch`
* `sfdx force:user:permset:assign --permsetname Fetch_Data --targetusername local-fetch`
* `sfdx force:org:open --path /lightning/n/Fetch_Data --targetusername local-fetch`