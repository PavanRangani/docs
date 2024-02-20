Feature: normal-task-notification

    Scenario: task > task notification > normal task > added to your queue > add new task

        Given Application has 4 active users
        When `Sheetal` adds new tasks
        And assign `Ravi` as an responsible 
        And assign `Pavan` as an accountable
        And assign `Bhargav` as an informed 
        Then `Ravi` & `Pavan` recived notification that new task is added to queue
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > added to your queue > Add user in exisintg task

        Given entity has one task
        And `Sheetal` is added as ann responsible
        When `Sheetal` add `Ravi` as an accountable
        And `Bhargav` as a informed
        Then `Ravi` received notification that new task is added to queue
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > added to your queue > moved upcoming to open

        Given entity has one upcoming task 
        And `Sheetal` is added as ann responsible 
        And `Ravi` is added as ann accountable
        And `Bhargav` is added as ann informed
        When Sheetal change start date of task in such way that task is moved to open 
        Then `Ravi` received notification that new task is added to queue
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > added to your queue > restore task

        Given entity has one deleted task 
        And `Sheetal` is added as ann responsible 
        And `Ravi` is added as ann accountable
        And `Bhargav` is added as ann informed
        When `Sheetal` restore deleted task 
        Then `Ravi` received notification that new task is restore
        But `Bhargav` doesn't received any notification


    Scenario: task > task notification > normal task > added to your queue > reopen task

        Given entity has one completed task 
        And `Sheetal` is added as ann responsible 
        And `Ravi` is added as ann accountable
        And `Bhargav` is added as ann informed
        When `Sheetal` reopen deleted task 
        Then `Ravi` received notification that new task is reopen
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > task mark as done

        Given entity has one  task 
        And `Sheetal` is added as ann responsible 
        And `Ravi` is added as an accountable
        And `Bhargav` is added as an informed
        When `Sheetal` mark task as done
        Then `Ravi` received notification that new task is mark as done 
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > task delete

        Given entity has one task 
        And `Sheetal` is added as ann responsible 
        And `Ravi` is added as an accountable
        And `Bhargav` is added as an informed
        When `Sheetal` delete task
        Then `Ravi` received notification that new task is delete
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > removed user from task

        Given entity has one task 
        And `Sheetal` is added as an responsible 
        And `Ravi` is added as an accountable
        And `Bhargav` is added as an informed
        When `Sheetal` removed `Ravi` from task
        Then `Ravi` received notification that new task is removed from queue
        But `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > moved open to upcoming

        Given entity has one task 
        And `Sheetal` is added as an responsible 
        And `Ravi` is added as an accountable
        And `Bhargav` is added as an informed
        When `Sheetal`change start date in a such way task is moved to upcoming
        And `Ravi` received notification that new task is removed from queue
        But `Bhargav` doesn't received any notification

    Scenario: task > ca pool task notification > normal task > partiallay claims

        Given entity has one task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` is added as an responsible
        And `CA Pool` is added as an accountable
        And `CA Pool` is added as an informed
        When `Sheetal` edit task 
        And change `Pavan`insted of `CA Pool` in accountable
        Then `Bhargav` received CA Pool notification that CA pool task removed for queue
        And `Bhargav` doesn't received CA Pool Claims notification
        And `Pavan` received normal notification that task is added to queue

    Scenario: task > ca pool task notification > normal task > full claims

        Given entity has one task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` is added as an responsible
        And `CA Pool` is added as an accountable
        And `CA Pool` is added as an informed
        When `Sheetal` assign/claims task 
        And select `Pavan` insted of `CA Pool` in accountable
        Then `Bhargav` received CA Pool notification that CA pool task is claims
        And `Pavan` received normal notification that task is added to queue

    Scenario: task > ca pool task notification > normal task > ca pool and ca user both added in task 

        Given entity has one task 
        And `Bhargav` is a CA user in Application
        And `Bhargav` is added as an responsible
        And `CA Pool` is added as a accountable
        When `Sheetal` assign/claims task 
        And select `Pavan` insted of `CA Pool` in accountable
        Then `Bhargav` received 1 CA Pool notification that CA pool task is claims
        And 1 normal notification that CA pool task is claims
        And `Pavan` received normal notification that task is added to queue
        
    
    Scenario: task > ca pool task notification > normal task > task delete

        Given entity has one task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` is added as an responsible
        And `CA Pool is added as an accountable
        And `Pavan` is added as an informed
        When `Sheetal` delete task 
        Then `Bhargav` received CA Pool notification that task is deleted
        And `Pavan` doesn't received notification

    Scenario: task > ca pool task notification > normal task >  moved to upcoming

        Given entity has one task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` is added as an responsible
        And `CA Pool is added as an accountable
        And `Pavan` is added as an informed
        When `Sheetal`change start date 
        Then task is moved to upcoming
        And `Bhargav` received notification that task is moved to upcoming
        And `Pavan` doesn't received notification