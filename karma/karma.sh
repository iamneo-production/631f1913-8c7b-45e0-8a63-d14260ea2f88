#!/bin/bash
export CHROME_BIN=/usr/bin/chromium-browser
if [ -d "/home/coder/project/workspace/angularapp" ]
then
    echo "project folder present"
    cp /home/coder/project/workspace/karma/karma.conf.js /home/coder/project/workspace/angularapp/karma.conf.js;



    # checking for login component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/login" ]
    then
        cp /home/coder/project/workspace/karma/login.component.spec.ts /home/coder/project/workspace/angularapp/src/app/login/login.component.spec.ts;
    else
        echo "LoginComponent_CreateComponent FAILED";
        echo "LoginComponent_call_login_method_on_admin_login FAILED";
        echo "LoginComponent_should_navigate_to_admin_on_admin_login FAILED";
        echo "LoginComponent_should_call_login_method_on_organizer_login FAILED";
        echo "LoginComponent_should_navigate to organizer on organizer login FAILED";
        echo "LoginComponent_should call login method on form submission FAILED";
        echo "LoginComponent_should show username required error message FAILED";
        echo "LoginComponent_should show password required error message FAILED";
    fi

    # checking for app-routing component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/routing" ]
    then
        cp /home/coder/project/workspace/karma/app-routing.module.spec.ts /home/coder/project/workspace/angularapp/src/app/routing/app-routing.module.spec.ts;
    else
        echo "App Routing should route to home page by default FAILED";
        echo "App Routing should route to admin page FAILED";
        echo "App Routing should route to organizer page FAILED";
        echo "App Routing should route to default path for invalid paths FAILED";
    fi

    # checking for admin component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/admin" ]
    then
        cp /home/coder/project/workspace/karma/admin.component.spec.ts /home/coder/project/workspace/angularapp/src/app/admin/admin.component.spec.ts;
    else
        echo "Admin_Component_should_get_teams_and_players_on_initialization FAILED";
    fi

    # checking for admin-services component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/services" ]
    then
        cp /home/coder/project/workspace/karma/admin.service.spec.ts /home/coder/project/workspace/angularapp/src/app/services/admin.service.spec.ts;
    else
        echo "Admin Service should create AdminServices FAILED";
        echo "Admin Service should retrieve teams from the backend FAILED";
        echo "Admin Service should create a new team via the backend FAILED";
        echo "Admin Service should retrieve players from the backend FAILED";
    fi

    # checking for auth-services component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/services" ]
    then
        cp /home/coder/project/workspace/karma/auth.service.spec.ts /home/coder/project/workspace/angularapp/src/app/services/auth.service.spec.ts;
    else
        echo "AuthService should_create_authServices FAILED";
    fi

    # checking for organizer-services component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/services" ]
    then
        cp /home/coder/project/workspace/karma/organizer.service.spec.ts /home/coder/project/workspace/angularapp/src/app/services/organizer.service.spec.ts;
    else
        echo "OrganizerService_should create organizerServices FAILED";
    fi

    # checking for registrations component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/registration" ]
    then
        cp /home/coder/project/workspace/karma/registration.component.spec.ts /home/coder/project/workspace/angularapp/src/app/registration/registration.component.spec.ts;
    else
        echo "RegistrationComponent_should navigate to organizer on organizer register FAILED";
        echo "RegistrationComponent_should navigate to admin on admin register FAILED";
    fi

    # checking for player component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/player" ]
    then
        cp /home/coder/project/workspace/karma/player.component.spec.ts /home/coder/project/workspace/angularapp/src/app/player/player.component.spec.ts;
    else
        echo "PlayerComponent_create_Player_component FAILED";
        echo "PlayerComponent_should have edit buttons for each player FAILED";
        echo "PlayerComponent_should have delete buttons for each player FAILED";
        echo "PlayerComponent_check the bidding amount FAILED";
        echo "PlayerComponent_check bidding amount in status div FAILED";
        echo "PlayerComponent_should display Player information by ngfor FAILED";
    fi 

    # checking for PlayerModel 
    if [ -d "/home/coder/project/workspace/angularapp/src/models" ]
    then
        cp /home/coder/project/workspace/karma/player.model.spec.ts /home/coder/project/workspace/angularapp/src/models/player.model.spec.ts;
    else
        echo "Player_Models_should_create_Player_instance FAILED";
    fi 

    
    # checking for Team Component 
    if [ -d "/home/coder/project/workspace/angularapp/src/app/team" ]
    then
        cp /home/coder/project/workspace/karma/team.component.spec.ts /home/coder/project/workspace/angularapp/src/app/team/team.component.spec.ts;
    else
        echo "TeamComponent_create_Team_Component FAILED";
        echo "TeamComponent_should have edit buttons for each team FAILED";
        echo "TeamComponent_should have delete buttons for each team FAILED";
        echo "TeamComponent_check the Maximumbudget amount to create teams FAILED";
        echo "TeamComponent_check MaxBudget amount in status div to create teams FAILED";
        echo "TeamComponent_should display team information by ngfor FAILED";
    fi 

    # checking for TeamModel 
    if [ -d "/home/coder/project/workspace/angularapp/src/models" ]
    then
        cp /home/coder/project/workspace/karma/team.model.spec.ts /home/coder/project/workspace/angularapp/src/models/team.model.spec.ts;
    else
        echo "Team_Models_create_Team_instance FAILED";
    fi 

    # checking for UserModel 
    if [ -d "/home/coder/project/workspace/angularapp/src/models" ]
    then
        cp /home/coder/project/workspace/karma/user.model.spec.ts /home/coder/project/workspace/angularapp/src/models/user.model.spec.ts;
    else
        echo "User_Models_should_create_User_instance FAILED";
    fi     

    cd /home/coder/project/workspace/angularapp/;
    npm test;
else   
    echo "LoginComponent_CreateComponent FAILED";
    echo "LoginComponent_call_login_method_on_admin_login FAILED";
    echo "LoginComponent_should_navigate_to_admin_on_admin_login FAILED";
    echo "LoginComponent_should_call_login_method_on_organizer_login FAILED";
    echo "LoginComponent_should_navigate to organizer on organizer login FAILED";
    echo "LoginComponent_should call login method on form submission FAILED";
    echo "LoginComponent_should show username required error message FAILED";
    echo "LoginComponent_should show password required error message FAILED";
    echo "App Routing should route to home page by default FAILED";
    echo "App Routing should route to admin page FAILED";
    echo "App Routing should route to organizer page FAILED";
    echo "App Routing should route to default path for invalid paths FAILED";
    echo "Admin_Component_should_get_teams_and_players_on_initialization FAILED";
    echo "Admin Service should create AdminServices FAILED";
    echo "Admin Service should retrieve teams from the backend FAILED";
    echo "Admin Service should create a new team via the backend FAILED";
    echo "Admin Service should retrieve players from the backend FAILED";
    echo "AuthService should_create_authServices FAILED";
    echo "OrganizerService_should create organizerServices FAILED";
    echo "RegistrationComponent_should navigate to organizer on organizer register FAILED";
    echo "RegistrationComponent_should navigate to admin on admin register FAILED";
    echo "PlayerComponent_create_Player_component FAILED";
    echo "PlayerComponent_should have edit buttons for each player FAILED";
    echo "PlayerComponent_should have delete buttons for each player FAILED";
    echo "PlayerComponent_check the bidding amount FAILED";
    echo "PlayerComponent_check bidding amount in status div FAILED";
    echo "PlayerComponent_should display Player information by ngfor FAILED";
    echo "Player_Models_should_create_Player_instance FAILED";
    echo "TeamComponent_create_Team_Component FAILED";
    echo "TeamComponent_should have edit buttons for each team FAILED";
    echo "TeamComponent_should have delete buttons for each team FAILED";
    echo "TeamComponent_check the Maximumbudget amount to create teams FAILED";
    echo "TeamComponent_check MaxBudget amount in status div to create teams FAILED";
    echo "TeamComponent_should display team information by ngfor FAILED";
    echo "Team_Models_create_Team_instance FAILED";
    echo "User_Models_should_create_User_instance FAILED";
fi
