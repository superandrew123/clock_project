# clock_project

Primary objective:
Display a clock that delivers time-dependent information on a series of notable women working in technology.

Clock:

Information about Women in technology:

1. Grace Hopper
2. Sandi Metz
3. Anita Borg
4. Ada Lovelace
5. Katherine Johnson

Project Spec:
+1. Create a list of women in technology to include in the project.
+2. Populate a database with the following information about each woman in technology:
+    - :individuals table: name, brief intro (scraped from Wikiquotes, other sources?)
+    - :quotes table: quote text, source, individual_id
+    - :tweets table: tweet text, individual_id
+    - :articles table: article_url, individual_id
+
+3. Check the current time.
+  - Depending on current hour, display data related to one in a given array of women in technology:
+      - Display ticking clock.
+        [Refreshes every second.]
+      - Query the db for that individual's name. (Poss. ASCII graphic?)
+        [Static.]
+      - Query the db for intro summary for that individual. 
+        [Static.]
+      - Query the db for random quote from sample set for that individual. 
+        [Take size of sample set and refresh on appropriate interval (given total time of 1 hour).]
+      - Query the db for random tweet from sample set for that individual.
+        [Refresh tweet according to static interval that we determine.]
