
[1mFrom:[0m /home/ec2-user/environment/sodone-proto/app/controllers/users_controller.rb @ line 30 UsersController#update:

    [1;34m26[0m: [32mdef[0m [1;34mupdate[0m
    [1;34m27[0m:     @user = [1;34;4mUser[0m.find(params[[33m:id[0m])
    [1;34m28[0m: 
    [1;34m29[0m:     binding.pry
 => [1;34m30[0m:     [32mif[0m @user.update_attributes(user_params)
    [1;34m31[0m:       redirect_to @user
    [1;34m32[0m:       flash[[33m:success[0m] = [31m[1;31m"[0m[31mプロフィールを更新しました[1;31m"[0m[31m[0m 
    [1;34m33[0m:     [32melse[0m
    [1;34m34[0m:       render[31m[1;31m'[0m[31mshow[1;31m'[0m[31m[0m
    [1;34m35[0m:     [32mend[0m
    [1;34m36[0m: [32mend[0m

