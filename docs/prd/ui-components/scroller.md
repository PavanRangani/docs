# Scroller

- Shows alphabet characters vertically

- It shows only those characters under which records exists

  > For ex. If there aren't any records starting with 'C', then 'C' will not appear in the scroller.
  > Shows special character ‘#’ in scroller at top when there are records which are not starting with alphabets. 
  > For e.g. ‘901 Seattle’ , ‘$foundation’ etc.

- When the user clicks on any character in the scroller, it will change the scroll position of the page to show records starting with that character  in the visible area.

- Scrollers also highlights appropriate characters when user change the scroll positions manually

  > For e.g. user scrolls the page manually and reach at records starting with ‘T’, then scroller will show ‘T’ highlighted
  > Maximum height and Minimum height

- Spacing between two characters are shown based on available height

  - When enough height is available, it will show maximum spacing between characters. 
  - When enough height is not available, it will show minimum spacing between characters. 

- When enough height is not available to accommodate a scroller, it will never show scroll and due to this some bottom characters won't be visible and thats why those characters won't be clickable. This is considered as an edge case.



## UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScZyb7d-d_FBLTavfKkuAbs0)

