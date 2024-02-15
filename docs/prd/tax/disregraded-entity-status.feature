Feature: disregarded-entity-status

    Scenario Outline: tax > disregarded entity > show status of ssn of in disregarded entity tax return

        Given `"<individual>"` added as an owner in `"<entity>"`
        And `"<entity>"` has disregarded entity tax return of year `"<year>"`
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return in `"<year>"`
        And `"<individual>"` has tax return of 1040 in year `"<year>"` 
        And `"<individual>"'s` tax return status is `"<status>"`
        When user opens tax return browse page of `"<entity>"`
        Then shows `"<status>"` status and name of `"<value>"` for the `"<year>"` year return of disregarded entity.
            
            Examples: 
                | entity | value | individual | status | year |
                | Partnership P1 | SSN Of | Ravi | Pending | 2021 |
                | Partnership P2 | SSN Of | Bhargav | Filed | 2022 |
                | Partnership P3 | SSN Of | Pavan | Extended | 2023 |

    Scenario Outline: tax > disregarded entity > show grantor to tax return status

        Given `"<individual>"` added as an trustor  in `"<entity>"`
        And `"<entity>"` has disregarded entity tax return of year `"<year>"`
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return in `"<year>"`
        And `"<individual>"` has tax return of 1040 in year `"<year>"`
        And `"<individual>"'s` tax return status is `"<status>"` in year `"<year>"`
        When user opens tax return browse page of `"<entity>"`
        Then shows `"<status>"` status and name of `"<value>"` in status column for year `"<year>"`

            Examples:
                | entity | value | individual | status | year |
                | Trust T1 | Grantor to | Ravi | Pending | 2021 |
                | Trust T2 | Grantor to | Bhargav | Filed | 2022 |
                | Trust T3 | Grantor to | Pavan | Extended | 2023 |

    Scenario Outline: tax > disregarded entity >  show grantor/ssn of tax return status for joint

        Given `"<entity>"` has disregarded entity tax return of year `"<year>"`
        And `"<individual>"` is a part of  `"<joint>"` 
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return in `"<year>"`
        And `"<individual>"` has no tax retun in `"<year>"`
        But `"<joint>"` has tax reurn in year `"<year>"`
        And `"<joint>"'s` tax return status is `"<status>"`
        When open tax return browse page of `"<entity>"`
        Then shows filing status of `"<joint>"` in status column for year `"<year>"`

            Examples: 
                | entity | value | individual | joint | status | year |
                | Partnership P5 | SSN Of | Ravi | Ravi & Bhargav | Filed |  2022 |
                | Trust T5 | Grantor to | Pavan | Pavan & Ajay | Extended | 2023 |

    Scenario Outline : tax > disregarded entity > N/A status

        Given `"<individual>"` added as an owner in `"<entity>"`
        And `"<entity>"` has disregarded entity tax return of year `"<year>"`
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return in `"<year>"`
        And `"<individual>"'s` tax return is not created for year `"<year>"`
        When open tax return browse page of `"<entity>"`
        Then shows N/A with name of `"<value>"` in status column for year `"<year>"`

            Examples: 
                | entity | value | individual | year |
                | Partnership P10 | SSN Of | Ravi | 2022 |
                | Trust T10 | Grantor to | Pavan | 2023 |

    Scenario Outline: tax > disregarded entity > when tax id type is ein for partnership shows `pull commponents to` status

        Given Tax ID type of `"<entity>"` has `EIN`
        And `"<entity>"` has disregarded entity tax return of `"<year>"`year
        And `"<individual>"` is an owner in `"<entity>"`
        And `"<individual>"` have tax return of 1040 for `"<year>"`year 
        And `"<individual>"'s` tax return status is `"<status>"`
        When user opens tax return browse page of `"<entity>"
        Then shows `"<status>"` status and name of `Pull commponents to` for the `"<year>"` year return of disregarded entity.
    
        Examples: 
            | entity | individual | status | year |
            | Partnership P1 | Ravi | Pending | 2021 |
            | Partnership P2 | Bhargav | Filed | 2022 |
            | Partnership P3 | Pavan | Extended | 2023 |

    Scenario Outline: tax > disregarded entity > when tax id type is eni for partnership and owner is a part of joint shows joint's status

        Given Tax ID type of `"<entity>"` has `EIN`
        And  `"<entity>"` has disregarded entity tax return of `"<year>"` year
        And `"<individual>"` is an owner in `"<entity>"`
        And `"<individual>"` has no tax retun in `"<year>"` year
        And `"<individual>"` is a part of  `"<joint>"` 
        And `"<joint>"` has tax reurn in year `"<year>"` year
        And `"<joint>"'s` tax return status is `"<status>"`
        When open tax return browse page of `"<entity>"`
        Then shows filing status of `"<joint>"` in status column for year `"<year>"` year

        
        Examples: 
            | entity | individual | joint | status | year |
            | Partnership P5 | Ravi | Ravi & Bhargav | Pending |  2022 |
            | Partnership P6 | Pavan | Pavan & Ajay | Filed | 2023 |
            | Partnership P7 | Pavan | Pavan & Ajay | Extended | 2024 |

    Scenario Outline: tax > disregarded entity > when tax id type is ein for trust shows `grantor to` status

        Given Tax ID type of `"<entity>"` has `EIN`
        And `"<entity>"` has disregarded entity tax return of `"<year>"` year
        And `"<individual>"` is a `Grantor to` in `"<entity>"'s` tax return in `"<year>"` year
        And `"<individual>"` has tax return of 1040 in year `"<year>"` year
        And `"<individual>"'s` tax return status is `"<status>"` in year `"<year>"`
        When user opens tax return browse page of `"<entity>"`
        Then shows `"<status>"` status and name of `Grantor to` in status column for year `"<year>"` year

        Examples:
            | entity | value | individual | status | year |
            | Trust T1 | Grantor to | Ravi | Pending | 2021 |
            | Trust T2 | Grantor to | Bhargav | Filed | 2022 |
            | Trust T3 | Grantor to | Pavan | Extended | 2023 |

    Scenario Outline: tax > disregarded entity > when tax id type is ein for trustand `grantor to` is a part of joint shows joint's status

        Given Tax ID type of `"<entity>"` has `EIN`
        And  `"<entity>"` has disregarded entity tax return of `"<year>"` year
       And `"<individual>"` is a `Grantor to` in `"<entity>"'s` tax return in `"<year>"` year
        And `"<individual>"` has no tax retun in `"<year>"` year
        And `"<individual>"` is a part of  `"<joint>"` 
        And `"<joint>"` has tax reurn in year `"<year>"` year
        And `"<joint>"'s` tax return status is `"<status>"`
        When open tax return browse page of `"<entity>"`
        Then shows filing status of `"<joint>"` in status column for year `"<year>"` year

        Examples: 
            | entity | individual | joint | status | year |
            | Trust P5 | Ravi | Ravi & Bhargav | Pending |  2022 |
            | Trust P6 | Pavan | Pavan & Ajay | Filed | 2023 |
            | Trust P7 | Pavan | Pavan & Ajay | Extended | 2024 |



