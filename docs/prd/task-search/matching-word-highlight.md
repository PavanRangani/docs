# Matching word highlight
- Highlight the searched words in task view dialog so that user can easily find where the word is matched exactly in a particular task

## UX Rule

- Only matching words are highlighted
- When a user opens any tabs, the page is auto scrolled up to the top most matching word.
- If the word matches in more than places in different tabs (For e.g. in title, Notes, sub-task, chat), the other tabs are highlighted too.
    - When the user switch to another tab, then observes that the matched word is also highlighted
    - If the matching word is present in the current tab, then the current tab is not highlighted.
- Highlight is alos done in a single word. 
    - For e.g. If users searches `Check Balance`. Now system shows task in search dialog based on search word. So when user opens the any task from search dialogue then all matching word (Like, `Check`, `Balance` & `Check balance`) is highlited.
- If a Chat is unread and that chat is also matching in the search result, then show the chat tab in green color instead of orange color.


## UI Rule

[Mockup](https://drive.google.com/drive/u/0/folders/1BnkCAj6acCSOdI_eKlpaTBGpXy_NkHFk)