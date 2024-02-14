    Scenario: tax > tax component > auto k1 component > k1 component of last year's `individual` 1040 tax return will not be carried forward into the next year

        Given individual have tax return of 1040 for 2022 & 2023 year
        And individual is an owner in 2 Partnerships
        And individual added as a `Grantor to` in 2 trusts
        And both Partnerships & trusts has tax return of 2022 year
        And individual's tax return have 4 `auto K1` components in 2022 year
        And individual also has some other commponents in tax return of 2022 year
        When user files individual's tax return of 2022 year
        Then All components except the `Auto K1` components for the year 2022 are carryforward in the individual's tax return for the year 2023

    Scenario: tax > tax component > auto k1 component > k1 component of last year's `joint` tax return will not be carried forward into the next year

        Given individual is an owner in 2 Partnerships
        And individual added as a `Grantor to` in 2 trusts
        And both Partnership & trust has tax return of 2022 year
        And individual doesn't have tax return
        And individual is a part of joint
        And joint has tax return for year 2022 & 2023 year
        And 4 `auto K1` commponent is `auto create` in joint's tax return in 2022 year
        And joint also has some other commponents in tax return of 2022 year
        When user files joint's tax return for year 2022
        Then All components except the `Auto K1` components for the year 2022 are carryforward in the joint's tax return for the year 2023.


