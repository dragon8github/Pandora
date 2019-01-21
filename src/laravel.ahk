!y::
	Menu, LaravelMenu, Add, php artisan serve, LaravelHandler2
	Menu, LaravelMenu, Add, php artisan make:controller SitesController, LaravelHandler2
	Menu, LaravelMenu, Add, php artisan migrate, LaravelHandler2
	Menu, LaravelMenu, Add, php artisan make:migration create-articles_table --create=articles, LaravelHandler2
	Menu, LaravelMenu, Add, php artisan make:model Article, LaravelHandler2
	Menu, LaravelMenu, Add, php artisan tinker, LaravelHandler2
	
	Menu, LaravelMenu, Add,, LaravelHandler
	Menu, LaravelMenu, Add,, LaravelHandler
	
	Menu, LaravelMenu, Add, public function index() {},LaravelHandler
	Menu, LaravelMenu, Add, new Controller,LaravelHandler
	

	Menu, LaravelMenu, Show
	Menu, LaravelMenu, DeleteAll
return

LaravelHandler2:
v := A_ThisMenuItem
SendInput, % v
return


LaravelHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(

)
}

if (v == "new Controller") {
InputBox, OutputVar, title, enter a name?,,,,,,,,SitesController
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class %OutputVar% extends Controller
{
	// Route::get('/', '%OutputVar%@index');
    public function index () {
    	return view('welcome');
    }
}

)
}

if (v == "public function index() {}") {
Var =
(
public function index() {
	return view('welcome');
}
)
}

code(Var)
return