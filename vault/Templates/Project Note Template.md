Related:: 

### Related People

```dataview  
TABLE file.cday as Created  
FROM "Meetings & Notes/People Notes" 
WHERE contains(file.outlinks, [[<% tp.file.title %>]])
SORT file.cday DESC  
```

### Related Meetings
```dataview  
TABLE file.cday as Created, Purpose as "Purpose", Summary AS "Summary"
FROM "Meetings & Notes/Personal Meetings" OR "Meetings & Notes/Work Meetings"
WHERE contains(file.outlinks, [[<% tp.file.title %>]])
SORT file.cday DESC 
```

### Review




