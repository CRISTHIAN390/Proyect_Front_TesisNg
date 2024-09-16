import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class UserService {
  private apiUrl = environment.apiUrl + '/roles';
  constructor(private http: HttpClient) { }

  getRoles() {
    return this.http.get(this.apiUrl);
  }
}
