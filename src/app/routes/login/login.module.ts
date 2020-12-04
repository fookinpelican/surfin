import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { LoginComponent } from './login.component';
import { HeaderComponent } from '../header/header.component'


@NgModule({
  declarations: [
    LoginComponent
  ],
  imports: [
    HeaderComponent
  ],
  providers: [],
  bootstrap: []
})
export class LoginModule {}
