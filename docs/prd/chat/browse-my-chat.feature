Feature: browse-my-chat

    Scenario: chat > browse > family won't be shown if login user is associated as informed role in task and it has chat


unread/pinned family
    family ni entity pase unread chat chhe. my chat open karu chu tyre te family unread/pinned ma dekhay chhe ane family par click karu chhu tyre only unread/pinned hoy teva j task dekhay chhe 

my family

other family

apply filter

browse

auto moved from unread to my or other group
    mark as read

Chat: add chat
      edit chat   
      delete chat


My chat

unread/pinned chat   
    - unread/pinned family 
        - family ni entity pase unread chat chhe. my chat open karu chu tyre te family unread/pinned ma dekhay chhe ane family par click karu chhu tyre only unread/pinned hoy teva j task dekhay chhe
    - Apply `Only Unread/Pinned` filter
        - Given: me unread group ma ek family open kareli che and default badha filter aa pramene che
        - When hu only opinned filter off karu chu
        - Then to mne aeva badha task dekhase k jeni pase Chat che
        - When hu Active Chat filter ne off karu chu
        - Then mane te family na badha j task dekhase (it doesn't matter login user is added in RACI or not)
        - When My Task filter ne hu ON karu chu
        - Then mne aeva j task dekhase jya hu RAI tarike add chhuA
        - And My Role filter enabled thae jase

My Families
    - mne kevi family dekhay

Other Families

Apply filter

    - My Role filter    
        - Given: me koi aevi family open kari che jenu My Task filter ON che
        - When user hu My Role filter mathi koi role select karu chu
        - Then to mne aeva j tasks dekhay che k jya login user select thayela role ma add che

    - Entity 

    - Section

Browse chat
 - Sorting order
 - shows last notification (scroll feature)
 - 





