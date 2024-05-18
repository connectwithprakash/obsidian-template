---
aliases: 
Email: 
mobile: 
tags: 
birthday:
---
Related Projects:: 


### Previous meetings with <% tp.file.title %>

```dataview  
TABLE date as Date, Purpose as "Purpose", Summary AS "Summary"
FROM "Meetings & Notes/Personal Meetings" or "Meetings & Notes/Work Meetings"
WHERE contains(file.outlinks, [[<% tp.file.title %>]] ) 
SORT file.cday DESC
```


### Related Tasks
```dataview  
task  
where contains(file.outlinks, [[<% tp.file.title %>]] )  
SORT created DESC
```


<% await tp.file.move("/Meetings & Notes/People Notes/" + tp.file.title) %>