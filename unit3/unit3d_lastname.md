**Before you start:** rename this file to `unit3d_lastname.md`, using your own last name. Watch the video and read `unit3d_Walkthrough.md`. Commit and push when you're done.

**Name:**

---

# Unit 3d — Types of Databases

Answer every question. No SQL today.

---

## While you watch the video

**1.** Fill in the table while you watch [7 Database Paradigms – Fireship](https://www.youtube.com/watch?v=W2Z7fbCLSTw).

| Type | One product he names | Good for |
|---|---|---|
| Key-value | redis|caching |
| Wide-column | Hbase| time seris |
| Document |firestore | IOT|
| Relational | mysql|most apps |
| Graph |graphql |Graphs |
| Full-text search |Solar |search engines |
| Multi-model |Faunadb |Everything? |

---

## After the video

**2.** Key-value databases keep their data in memory. What does that make them good at? What can't you do with them?

**Answer:**extremely fast, low-latency reads and writes, They cannot run advanced searches or filter data unless you already know the specific key.


**3.** What is the downside of a document database, according to the video?

**Answer:**lack of native support for relational JOINS


**4.** A relational database needs a join table to connect many things to many things. In a graph database, what does that job instead?

**Answer:**a relationship (or edge) does the job of a join table.


**5.** Name one relational database product from the video.

**Answer:**mysql


---

## Pick the database

**6.** For each client, pick the best type of database and give one reason. Use the "How to pick one" table in the walkthrough.

**Choose from:** Relational · Document · Graph · Key-value · Full-text search · Wide-column

| # | Client says… | Type | One reason |
|:-:|---|---|---|
| a | "We run a pharmacy. Every prescription must link to one patient and one doctor, and nothing can ever be out of sync." |Relational |need multiple objects connected |
| b | "Our store sells 40,000 products. Shoes have sizes, laptops have RAM. Every category has different information." |Relational |needs to tie many values to many objects |
| c | "We want to suggest new friends: people who are friends with your friends." |Graph | excellent for recommendation |
| d | "Our game needs a leaderboard. Scores change thousands of times a second." |key-value | fast with low latency |
| e | "Our website has 50,000 recipes, and people need to search them by any word." |Full-text |exxcelent for search engines |
| f | "We have 10,000 weather sensors sending a reading every second." |multi-model |can select the correct type based on the data |

**7.** In 3a, the `teams` + `games` tables stored each team once and linked games to teams with `team_id`. Why is a relational database a good fit for NBA data?

**Answer:**the players, games, and teams all had to be connected


**8.** You're building an app for our school that keeps track of students, classes, and grades. Which type of database would you pick, and why?

**Answer:**releational as it excels in handiling structure, connected data like grades, classes, and student names/ids
