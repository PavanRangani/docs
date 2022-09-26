# Preserve the seach when user switches the Tab or page

## UX Rule
- When a user is in the Open tab of the My Task page and searches any word. Now user switches the tab from Open to Upcoming, the search is not reset. It still showing there.
- Same if the user switches the page from My Task to Grpup task, the search result is not reset.
- But if the user switched the page from My task/ Group Task to My Chat page, the search result will be reset.


## Design Decision

**Why don't we save search results when a user switches pages to My Chat?**

Because we have reduced the width of all other filters to show search on the `My Chat` page. So if we don't reset the search and the user comes to the My Chat page, the other filter will appear in a smaller width. So we don't preserve search to make UX look good.