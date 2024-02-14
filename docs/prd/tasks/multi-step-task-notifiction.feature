 Feature: multi-step-task-notification  

    Scenario: task > task notification > multi-step task > added to your queue > add new task

        Given Application has 4 active users
        When `Sheetal` adds multi-step tasks with 1 sub task
        And assign `Ravi` as a accountable
        And assing `Pavan` as a responsible of sub task 1
        And assign `Bhargav` as a informed 
        Then `Ravi` & `Pavan` recived notification that new task is added to queue
        And `Bhargav` doesn't received any notification

     Scenario: task > task notification > multi-step task > added to your queue > add new sub task in exisintg task
        
        Given entity has multi step task with 1 sub task
        And `Sheetal` added as a accountable
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        When `Sheetal` add new sub task 
        And asssign `Pavan` as a responsible
        Then only `Pavan` received notification that new task is added to queue

    Scenario: task > task notification > multi-step task > added to your queue > Add user in exisintg task

        Given entity has multi step task with 1 sub task
        And `Sheetal` added as a accountable
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task  1
        When `Sheetal` change responsible of sub task 1 
        And assign `Pavan` as a responsible of sub task 1 
        Then only `Pavan` received notification that new task is added to queue
        And `Ravi` received notification that task removed from queue


    Scenario: task > task notification > multi-step task > added to your queue > moved upcoming to open

        Given entity has one multi-step upcoming task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        When `Sheetal` change start date of task
        Then task moved to open
        And `Ravi` & `Pavan` received notification that new task is added to queue
        And `Bhargav` doesn't received any notification

    Scenario: task > task notification > multi-step task > added to your queue > restore task

        Given entity has one multi-step deleted task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        And both of sub task is mark as done 
        When `Bhargav` restored parent task 
        Then only `Sheetal` received notification that task added to queue

    Scenario: task > task notification > multi-step task > added to your queue > reopen task 

        Given entity has one multi-step completed task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        And both of sub task is mark as done 
        When `Bhargav` reopen parent task 
        Then only `Sheetal` received notification that task added to queue

    Scenario: task > task notification > multi-step task > removed from your queue > task mark as done

        Given entity has one multi-step task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        And both of sub task is mark as done
        When `Bhargav` mark parent task as done
        Then only `Sheetal` received notification that task removed from queue

     Scenario: task > task notification > multi-step task > removed from your queue > sub task mark as done 

        Given entity has one multi-step task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        When `Bhargav` mark sub task 1 task as done
        Then only `ravi` received notification that task removed from queue

    Scenario: task > task notification > multi-step task > removed from your queue > task delete

        Given entity has one multi-step task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        And both of sub task is mark as done
        When `Bhargav` delete parent task 
        Then only `Sheetal` received notification that task task is deleted

     Scenario: task > task notification > multi-step task > removed from your queue > task delete but 1 sub task is open 

        Given entity has one multi-step task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        And sub task 1 is open 
        And sub task 2 is mark as done
        When `Sheetal` mark parent task as delete
        Then `Ravi`received notification that task is deleted
        And `Pavan` received notification that removed from queue

    Scenario: task > task notification > multi-step task > removed from your queue > removed user from task

        Given entity has one multi-step task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        When `Sheetal` change responsible of sub task 1 
        Then only `Ravi` received notification that task is removed from queue
        
    Scenario: task > task notification > multi-step task > removed from your queue > moved open to upcoming

        Given entity has one multi-step upcoming task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        When `Sheetal` change start date of task
        When `Sheetal` change start date of task 
        Then task moved to upcoming
        And `Ravi & `Pavan` received notification that task is removed from queue

    Scenario: task > task notification > multi-step task > subtask is marked as done

        Given entity has one multi-step upcoming task with 2 sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a responsible of sub task 1
        And `Pavan` added as a responsible of sub task 2 
        When `Sheetal` mark sub task 1 as done
        And only `Ravi` received notification that task is removed from queue


    Scenario: task > task notification > multi-step task > pending approval

        Given entity has one multi-step upcoming task with  1 money movement sub task
        And `Sheetal` added as a accountable 
        And `Bhargav` added as a informed
        And `Ravi` added as a initiate
        And `Pavan` added as a approved
        When `Ravi` change the sub task status to `pending approvals`
        Then `Pavan` & `Sheetal` received notification for pending approvals
        


    Scenario: task > ca pool task notification > multi-step task > partiallay claims

        Given entity has one multi-step with 2 sub task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` added as a accountable
        And `Pavan` added as a informed
        And `CA Pool` added as a responsible of sub task 1 and sub task 2 
        When `Sheetal` edit task
        And change `Ravi`insted of `CA Pool` in accountable
        Then `Bhargav` received CA Pool notification that CA pool task removed for queue
        And `Ravi` received normal notification that task is added to queue

    Scenario: task > ca pool task notification > multi-step task > full claims

        Given entity has one multi-step with 2 sub task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` added as a accountable
        And `Pavan` added as a informed
        And `CA Pool` added as a responsible of sub task 1 and sub task 2
        When `Sheetal` assign/claims task 
        And select `Pavan` insted of `CA Pool` in accountable
        Then `Bhargav` received CA Pool notification that CA pool task is claims
        And `Pavan` received normal notification that task is added to queue
 

    Scenario: task > ca pool task notification > normal task > task delete

        Given entity has one multi-step with 2 sub task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` added as a accountable
        And `Pavan` added as a informed
        And `CA Pool` added as a responsible of sub task 1 and sub task 2
        When `Sheetal` delete task 
        Then `Bhargav` received CA Pool notification that task is deleted


    Scenario: task > ca pool task notification > normal task > moved to upcoming

        Given entity has one multi-step with 2 sub task 
        And `Bhargav` is a CA user in Application
        And `Sheetal` added as a accountable
        And `Pavan` added as a informed
        And `CA Pool` added as a responsible of sub task 1 and sub task 2
        When `Sheetal`change start date 
        Then task is moved to upcoming
        And `Bhargav` received notification that task is moved to upcoming
