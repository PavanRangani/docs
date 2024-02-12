Feature: normal-task-notification

    Scenario: task > task notification > normal task > added to your queue > add new task

        Given Application has 4 active users
        When `Sheetal` adds new tasks
        And assing `Ravi` as a responsible 
        And assign `Pavan` as a accountable
        And assign `Bhargav` as a informed 
        Then `Ravi` & `Pavan` recived notification that new task is added to queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > added to your queue > Add user in exisintg task

        Given user has one task
        And `Sheetal` added as a responsible
        When Sheetal add `Ravi` as a accountable
        And `Bhargav` add as a informed
        Then `Ravi`  received notification that new task is added to queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > added to your queue > moved upcoming to open

        Given user has one upcoming task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When Sheetal change start date of task 
        Then task moved to open
        And `Ravi` received notification that new task is added to queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > added to your queue > restore task

        Given user has one deleted task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` restore deleted task 
        Then `Ravi` received notification that new task is added to queue
        And `Bhargav` doesn't received any notification


    Scenario: task > task notification > normal task > added to your queue > reopen task

        Given user has one completed task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` reopen deleted task 
        Then `Ravi` received notification that new task is added to queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > task mark as done

        Given user has one  task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` mark task as done
        Then `Ravi` received notification that new task is removed from queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > task delete

        Given user has one task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` delete task
        Then `Ravi` received notification that new task is removed from queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > normal task > removed from your queue > removed user from task

        Given user has one task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` removed `Ravi` from task
        Then `Ravi` received notification that new task is removed from queue

    Scenario: task > task notification > normal task > removed from your queue > moved open to upcoming

        Given user has one task 
        And `Sheetal` added as a responsible 
        And `Ravi` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal`change start date 
        Then task is moved to upcoming
        And `Ravi` received notification that new task is removed from queue

    Scenario: task > ca pool task claims notification > normal task > partiallay claims

        Given user has one task 
        And `Sheetal` added as a responsible
        And `Ravi` is also added as a responsible
        And `CA Poll` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` edit task 
        And changes `Pavan` insted of `CA Pool` 
        Then `Ravi` received notification that CA pool task claims
        And `Pavan` received notification that task is added to queue

    Scenario: task > ca pool task claims notification > normal task > full claims

        Given user has one task 
        And `Sheetal` added as a responsible
        And `Ravi` is also added as a responsible
        And `CA Poll` added as a accountable
        And `Bhargav` added as a informed
        When `Sheetal` assign/claims `CA Pool` task  
        And changes `Pavan` insted of `CA Pool` 
        Then `Ravi` received notification that CA pool task claims
        And `Pavan` received notification that task is added to queue
        

   