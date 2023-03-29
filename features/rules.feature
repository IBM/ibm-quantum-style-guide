Feature: Rules

    Scenario: Incorrect Terminology
        When I test "Terms"
        Then the output should contain exactly:
        """
        test.md:3:13:IBMQuantum.Terms:Use 'end' or 'last' rather than 'bottom'
        test.md:5:11:IBMQuantum.Terms:Use 'several' rather than 'a number of'
        test.md:7:9:IBMQuantum.Terms:Use 'complete' or 'perform' rather than 'do'
        test.md:11:10:IBMQuantum.Spelling:Unknown word 'algorihm'; fix or add to dictionary.
        test.md:15:24:IBMQuantum.Terms:Use 'following' rather than 'below'
        test.md:19:29:IBMQuantum.However:Double-check your punctuation around 'however' (see github.com/IBM/ibm-quantum-style-guide/issues/10 for more information).
        test.md:23:16:IBMQuantum.However:Double-check your punctuation around 'however' (see github.com/IBM/ibm-quantum-style-guide/issues/10 for more information).
        test.md:25:1:IBMQuantum.Politeness:Don't use 'Please'
        test.md:27:1:IBMQuantum.CringeWords:Don't use 'We understand that'
        test.md:27:36:IBMQuantum.Terms:Use 'use' rather than 'utilize'
        test.md:27:75:IBMQuantum.CringeWords:Don't use 'end users'
        test.md:27:90:IBMQuantum.CringeWords:Don't use 'we encourage you'
        test.md:29:12:IBMQuantum.Links:Link names should make sense without context; change "link" to something more descriptive.
        """

    Scenario: Use of punctuation
        When I test "Punctuation"
        Then the output should contain exactly:
        """
        test.md:9:1:IBMQuantum.Abbreviations:Do not use periods in all-uppercase abbreviations such as 'I.B.M.'.
        test.md:11:1:IBMQuantum.Abbreviations:Do not use periods in all-uppercase abbreviations such as 'S.W.A.T.'.
        test.md:17:1:IBMQuantum.OxfordComma:Use the Oxford comma in 'It comes in red, blue and'.
        test.md:23:14:IBMQuantum.DashSpacing:Add spaces around the dash in 'a—w'.
        test.md:31:24:IBMQuantum.ListPunctuation:Remove commas at end of list items (…comma,)
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
