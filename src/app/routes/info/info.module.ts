import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { InfoComponent } from './info.component';
import { HeaderComponent } from '../header/header.component'


@NgModule({
  declarations: [
    InfoComponent
  ],
  imports: [
    HeaderComponent
  ],
  providers: [],
  bootstrap: []
})
export class InfoModule {}
