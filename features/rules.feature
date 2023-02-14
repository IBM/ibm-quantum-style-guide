Feature: Rules

    Scenario: Incorrect Terminology
        When I test "Terms"
        Then the output should contain exactly:
        """
        test.md:3:13:IBMQuantum.Terms:Use 'lower left' or 'lower-left' rather than 'bottom-left'
        test.md:5:11:IBMQuantum.Terms:Use 'several' rather than 'a number of'
        """

    Scenario: Use of punctuation
        When I test "Punctuation"
        Then the output should contain exactly:
        """
        test.md:3:10:IBMQuantum.Ellipses:Avoid the ellipsis (...) except to indicate omitted words.
        test.md:3:32:IBMQuantum.Ellipses:Avoid the ellipsis (...) except to indicate omitted words.
        test.md:9:1:IBMQuantum.Abbreviations:Do not use periods in all-uppercase abbreviations such as 'I.B.M.'.
        test.md:11:1:IBMQuantum.Abbreviations:Do not use periods in all-uppercase abbreviations such as 'S.W.A.T.'.
        test.md:17:1:IBMQuantum.OxfordComma:Use the Oxford comma in 'It comes in red, blue and'.
        test.md:23:14:IBMQuantum.DashSpacing:Add spaces around the dash in 'a—w'.
        """

    Scenario: Use of Latin abbreviations
        When I test "Latin"
        Then the output should contain exactly:
        """
        test.md:3:10:IBMQuantum.Latin:Use 'and so on' instead of 'etc.'.
        test.md:5:31:IBMQuantum.Latin:Use 'that is' instead of 'i.e.,'.
        test.md:7:6:IBMQuantum.Latin:Use 'versus' instead of 'vs.'.
        """

    Scenario: Capitalization
        When I test "Capitalization"
        Then the output should contain exactly:
        """
        test.md:9:5:IBMQuantum.Headings:'Lambda Expressions' should use sentence-style capitalization.
        test.md:13:21:IBMQuantum.Definitions:Define acronyms and abbreviations (such as 'MDBs') on first occurrence if they're likely to be unfamiliar.
        test.md:19:224:IBMQuantum.Definitions:Define acronyms and abbreviations (such as 'DAFB') on first occurrence if they're likely to be unfamiliar.
        """

    Scenario: Content Structure
        When I test "Structure"
        Then the output should contain exactly:
        """
        test.md:5:1:IBMQuantum.SentenceLength:Try to keep sentences less than 25 words.
        """
