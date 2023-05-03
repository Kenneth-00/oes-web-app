import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ReportData, UsersList } from '../models/models';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  baseUrl: string = "http://localhost/OES-Angular-Vercel/apiConnection";

  constructor(
    private httpClient:HttpClient
  ) { }

  
  viewUsersList(){
    return this.httpClient.get<UsersList[]>(this.baseUrl + '/getUsers.php');
  }
  
  viewReport() {
    return this.httpClient.get<ReportData[]>(this.baseUrl + '/viewReport.php');
  }

  getParticularLength(){
    return this.httpClient.get(this.baseUrl + '/viewActualReport.php');
  }

  getDataByParticularId(particular_id:number){
    return this.httpClient.get(this.baseUrl + '/viewActualReport.php?id=' + particular_id);
  }
}
