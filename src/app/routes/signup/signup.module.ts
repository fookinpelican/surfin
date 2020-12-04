import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { SignupComponent } from './signup.component';
import { HeaderComponent } from '../header/header.component'


@NgModule({
  declarations: [
    SignupComponent
  ],
  imports: [
    HeaderComponent
  ],
  providers: [],
  bootstrap: []
})
export class SignupModule {}
