*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verifying the new post
    Click Link    link:New post
    Sleep    5s
    Click Element    //*[@class="mb-4"]
    Input Text    //*[@id="post_first_name"]    Standard
    Input Text    //*[@id="post_second_name"]    User
    Input Text    //*[@id="post_title"]    Mr
    Input Text    //*[@id="post_address"]    WallStreet
    Press Keys    //*[@type="submit"]    return

    sleep    5s
    Page Should Contain    Standard

Verifying the back to post

    Click Link    link:Show this post
    Sleep    5s

    Click Link    link:Back to posts
    Sleep    5s

Verifying the edit the post

    Click Element    //*[@href="/posts/1"]
    Sleep    5s
    
    Click Link    link:Edit this post 
    Sleep    5s

    Input Text    //*[@id="post_first_name"]    admin
    Click Element    //*[@type="submit"]
    Sleep    5s

Verifying the destroy the post

    Click Element    //*[@href="/posts/1"]
    Sleep    5s
    
    Click Element   xpath:/html/body/div[2]/form
    Sleep    5s

Verifying if the post1 Exists

    Page Should Contain    Posts 
    Close Browser 