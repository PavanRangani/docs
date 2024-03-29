# CA Pool

## Overview
Except most complex and active relationships(family), Client Associate role is blank for family. So Client Associate role can be centralized into a pool structure where the CA’s `Pull` tasks from the pool to complete them.  

Some families don't have a `Client Associate` role. So when there is any such tasks for CA in such families that task will be assigned to `CA pool`. CA’s will go to Group tab to take open tasks and assign themselves to complete the work.


## System Rule
- CA Pool is considered as virtual user of the Athena. It will work the same as other family roles.  
- For `Recurring Trigger`, If any family doesn't have CA and a user creates a trigger for that family and added CA as a Responsible role. Then instances of that trigger will be assigned to `CA Pool`. [See this](https://drive.google.com/file/d/1RBaGxobn0y6QXgPb4aFxL1aUXwSfWRfU/view?usp=sharing)
    - For e.g. Suppose one trigger is created for `Allend-Ford` family where `Client Associate` role is as a Responsible. `Client Associate` is not available for this family. So the instance of the trigger will be assigned to the `CA Pool`. 
- For `Multi-Step Task`, If any Mutli-step template has sub-task where Responsible role is set to `Client Associate`. So when user creates a multi-step task from this template for a family which doesn't have a `Client Associate` relationship, that sub-task will be auto assigned to `CA pool`. [See this](https://drive.google.com/file/d/1XadAikKWoivg12arEXGsdbTL8Ai7mCQ6/view?usp=sharing)
- For `Normal Task`, the user can directly assign a CA pool from the RAI dropdown of the task. [See this](https://drive.google.com/file/d/16QZxFyUlTrG0ZGLhg5zD2OOoBbGz4xMl/view?usp=sharing)

## UX Rule
- If family doesn't have CA then it shows `CA Pool` as a CA for that family to convey that tasks of this role will go to `CA Pool`
- CA Pool is added to the task from RAI user dropdown of the task.
- CA Pool roles won't be applicable for chat mentioned dialog.


## CA Pool Counter

### UX Rule

- One icon appears before the Chat notification icon on the header. It shows open task count where CA Pool is added to the Responsible and Accountable role.
- On hover of icon, shows count on tooltip with proper message. [See this](https://drive.google.com/file/d/1YN70Ggmm4WbGJKKaCn4KeelkffbT3aw4/view?usp=share_link)
- Count will be in real time.
- If user have any [CA Pool notification](./tasks-notifications.md#ca-pool-notification), shows CA Pool notification unread count with icon. [See this](https://drive.google.com/file/d/1ls6oIRtGrZdv2i3xXGr1erMI3yZ_h4Bp/view?usp=sharing)
    - On click of icon, opens the CA Pool notification dialog.
- This icon is visible to all users. Reason behind this is People will want to see that any task they added to CA Pool is added and they may want to track if anyone has claimed a task or change it.  Having visibility to this icon and quick link is the best way.
- When user have no CA notification, and he/she clicks on the icon, it will redirect the user to the `Group Tasks` page where `Client Service Team` is selected as the Group and `CA Pool` as the User.
- If user is already on Open tab of Group task page, icon is disabled. On hover, it shows proper message.[See this](https://drive.google.com/file/d/1Tk9QLUs0cBQSYQRMdrVUL5uapCSgFpCD/view?usp=share_link). If user is on any other tab of Group task page and clicks on icon, it will take user to the Open tab again. 


### UI Rule

[Mockup](https://drive.google.com/file/d/1vxubpEklj0dLPrR1JeHpaLLDupJuJIeV/view)

- Tootlip message: `Open CA Pool count: {Count}`
- Tooltip message when icon is disabled: `You are already on Open tab of My Chat page`




