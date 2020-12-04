import { Component, NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HeaderComponent } from './routes/header/header.component';
import { HomeComponent } from './routes/Home/home.component';
import { InfoComponent } from './routes/info/info.component';
import { LoginComponent } from './routes/login/login.component';
import { SignupComponent } from './routes/signup/signup.component';

const routes: Routes = [
  {
    path:'',
    component:HomeComponent
  },
  {
    path:'signup',
    component:SignupComponent,
    children:[{path:'', component:HeaderComponent}]
  },
  {
    path:'login',
    component:LoginComponent,
    children:[{path:'', component:HeaderComponent}]
  },
  {
    path:'info',
    component:InfoComponent,
    children:[{path:'', component:HeaderComponent}]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
