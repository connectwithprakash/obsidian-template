---
creation date: <% tp.file.creation_date() %>
modified date: <% tp.file.last_modified_date("dddd Do MMMM YYYY HH:mm:ss") %>
tags: DailyNote <% tp.file.title.split('-')[0] %> <% tp.date.now("MMMM", 0, tp.file.title.split('-')[0], "YYYY-MM-DD") %>
---
<< [[<% tp.date.now("YYYY-MM-DD", -1, tp.file.title, "YYYY-MM-DD") %> | Previous: <% tp.date.now("dddd, MMMM Do YYYY", -1, tp.file.title, "YYYY-MM-DD") %>]] | [[<% tp.date.now("YYYY-MM-DD", 1, tp.file.title, "YYYY-MM-DD") %> | Next: <% tp.date.now("dddd, MMMM Do YYYY", 1, tp.file.title, "YYYY-MM-DD") %>]] >>

## Daily Check List

### Start of Day

- [ ] Check Email
- [ ] Check Teams
- [ ] Check showing online
- [ ] Check Calendar - Time Block

### End of Day

- [ ] Show Offline
- [ ] Clean Unused Headings in Daily Log
- [ ] Check tomorrow's calendar

## 🗂️ Tasks

#### Over Due

```tasks
not done
due before <% tp.date.now("YYYY-MM-DD") %>
```

#### Due Today

```tasks
not done
due on <% tp.date.now("YYYY-MM-DD") %>
```

#### New Today
- [ ]

## 📅 Meeting Log

### 0000:

## 📝 Daily Log

### [[Project 1]]



## Other Tasks

#### No Due Date

```tasks
not done
no due date
```

#### Done Today

```tasks
done on <% tp.date.now("YYYY-MM-DD") %>
```


## 📝 Notes
- 

## 🙏 Gratitude
- I am grateful for...



<< [[<% tp.date.now("YYYY-MM-DD", -1, tp.file.title, "YYYY-MM-DD") %> | Previous: <% tp.date.now("dddd, MMMM Do YYYY", -1, tp.file.title, "YYYY-MM-DD") %>]] | [[<% tp.date.now("YYYY-MM-DD", 1, tp.file.title, "YYYY-MM-DD") %> | Next: <% tp.date.now("dddd, MMMM Do YYYY", 1, tp.file.title, "YYYY-MM-DD") %>]] >>
