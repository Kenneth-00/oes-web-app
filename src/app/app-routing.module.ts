import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DefaultComponent } from './default/default.component';
import { LoginComponent } from './default/login/login.component';
import { DashboardComponent } from './modules/dashboard/dashboard.component';

const routes: Routes = [
  {path:"login", component:LoginComponent},
  {path:"default", component:DefaultComponent,
children:[
  {path:"dashboard", component:DashboardComponent},
]},
  
  {path:"", redirectTo:"/default/dashboard", pathMatch:"full"}
];

@NgModule({
  imports: [RouterModule.forRoot(routes), RouterModule],
  exports: [RouterModule]
})
export class AppRoutingModule { }
