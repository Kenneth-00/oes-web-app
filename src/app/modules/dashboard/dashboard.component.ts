import { Component, ElementRef, OnInit } from '@angular/core';
import { ApiService } from 'src/app/services/api.service';
import * as Highcharts from 'highcharts';
import xrange from 'highcharts/modules/xrange';

xrange(Highcharts);

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {

  totalAccomplishments!: number;
  totalUsers!: number;
  data=[];

  constructor(
    private _api:ApiService,
    private elementRef: ElementRef
  ) { }

  ngOnInit(): void {

    const particular_id = 1;

    this._api.viewReport()
    .subscribe(
      (response: any) => {
        this.totalAccomplishments = response.length;
      }
    )

    this._api.viewUsersList()
    .subscribe(
      (response: any) => {
        console.log(response);
        this.totalUsers = response.length;
      }
    );

      // this._api.getParticularLength().subscribe((response:any) => {
      //   if(response || response.data){
      //     const reports = response.data;
      //     for (let i = 0; i < reports.length; i++) {
      //       const report = reports[i];
      //       const particular_id = report.particular_id;
      //       this._api.getDataByParticularId(particular_id).subscribe((response: any) => {

      //         if (response || response.data) {
      //     const data = response;
      //     const chartData = [];
      
      //     for (let i = 0; i < data.length; i++) {
      //       chartData.push({
      //         name: data[i].name, // Replace 'name' with the name property in your API response
      //         x: i,
      //         y: parseInt(data[i].count), // Replace 'value' with the y property in your API response
      //       });
      //     }

      //     // Define options for chart 1
      //     const options1: Highcharts.Options = { 
      //       chart: { type: 'column' },
      //       title: { text: 'Output Indicator 1' },
      //       xAxis: { type: 'category' },
      //       yAxis: { title: {
      //         text: 'Total by Campus/Colleges'
      //         }
      //       },
      //       plotOptions: {
      //         series: {
      //             borderWidth: 0,
      //             dataLabels: {
      //                 enabled: true,
      //                 //format: '{point.y:.1f}%'
      //             }
      //         }
      //       },
      //       series: [
      //         {
      //           type: 'column',
      //           name: 'Number of Active Partnerships with LGUs, industries, NGOs, NGAs, SMEs, and other stakeholders as a result of extension services',
      //           data: chartData // Pass chartData as an array without brackets
      //         },
      //       ],
      //     };
      //     console.log(chartData);
      //     const container1 = this.elementRef.nativeElement.querySelector('#chart1');
      //     Highcharts.chart(container1, options1);
      //   }

      //       })
      //     }
      // }});
    this._api.getParticularLength().subscribe((response:any) => {
      const total_count = parseInt(response);
      const count = total_count;
      const total_ChartData = [];

      for (let j = 1; j <= count; j++) {
        const length = j;
        const particular_id = length;

        this._api.getDataByParticularId(particular_id).subscribe((response:any) => {

          if (response || response.data) {
            const data = response;
            const chartData = [];
            console.log(response);        
                for (let i = 0; i < data.length; i++) {
                  chartData.push({
                    name: data[i].name, // Replace 'name' with the name property in your API response
                    x: i,
                    y: parseInt(data[i].count), // Replace 'value' with the y property in your API response
                  });
                    total_ChartData.push(chartData);
                }
              }
            }
          )
        }
      }
    );
      this._api.getDataByParticularId(particular_id).subscribe((response: any) => {

        if (response || response.data) {
          const data = response;
          const chartData = [];
      
          for (let i = 0; i < data.length; i++) {
            chartData.push({
              name: data[i].name, // Replace 'name' with the name property in your API response
              x: i,
              y: parseInt(data[i].count), // Replace 'value' with the y property in your API response
            });
          }

          // Define options for chart 1
          const options1: Highcharts.Options = { 
            chart: { type: 'column' },
            title: { text: 'Output Indicator 1' },
            xAxis: { type: 'category' },
            yAxis: { title: {
              text: 'Total by Campus/Colleges'
              }
            },
            plotOptions: {
              series: {
                  borderWidth: 0,
                  dataLabels: {
                      enabled: true,
                      //format: '{point.y:.1f}%'
                  }
              }
            },
            series: [
              {
                type: 'column',
                name: 'Number of Active Partnerships with LGUs, industries, NGOs, NGAs, SMEs, and other stakeholders as a result of extension services',
                data: chartData // Pass chartData as an array without brackets
              },
            ],
          };
          console.log(chartData);
          const container1 = this.elementRef.nativeElement.querySelector('#chart1');
          Highcharts.chart(container1, options1);
        }
      });

      // Define options for chart 2
      const options2: Highcharts.Options = { 
        chart: { type: 'column' },
        title: { text: 'Output Indicator 2' },
        xAxis: { type: 'category' },
        yAxis: { title: {
          text: 'Total in percent(%) by Campus/Colleges'
          }
        },
        plotOptions: {
          series: {
              borderWidth: 0,
              dataLabels: {
                  enabled: true,
                  format: '{point.y:.1f}%'
              }
          }
        },
        series: [
          {
            type: 'column',
            name: 'Particular 2',
            data: [
              { name: 'CAAD', x: 1, y: 1, color: 'red' },
              { name: 'CAS', x: 2, y: 2, color: 'blue' },
              { name: 'COE', x: 3, y: 6, color: 'green' },
              { name: 'COED', x: 4, y: 0, color: 'violet' },
            ],
          },
        ],
      };
  
      // Define options for chart 3
      const options3: Highcharts.Options = { 
        chart: { type: 'column' },
        title: { text: 'Output Indicator 3' },
        xAxis: { type: 'category' },
        yAxis: { title: {
          text: 'Total in percent(%) by Campus/Colleges'
          }
        },
        plotOptions: {
          series: {
              borderWidth: 0,
              dataLabels: {
                  enabled: true,
                  format: '{point.y:.1f}%'
              }
          }
        },
        series: [
          {
            type: 'column',
            name: 'Particular 3',
            data: [
              { name: 'CAAD', x: 1, y: 1, color: 'red' },
              { name: 'CAS', x: 2, y: 2, color: 'blue' },
              { name: 'COE', x: 3, y: 6, color: 'green' },
              { name: 'COED', x: 4, y: 0, color: 'violet' },
            ],
          },
        ],
      };

      // Define options for chart 4
      const options4: Highcharts.Options = { 
        chart: { type: 'column' },
        title: { text: 'Output Indicator 4' },
        xAxis: { type: 'category' },
        yAxis: { title: {
          text: 'Total in percent(%) by Campus/Colleges'
          }
        },
        plotOptions: {
          series: {
              borderWidth: 0,
              dataLabels: {
                  enabled: true,
                  format: '{point.y:.1f}%'
              }
          }
        },
        series: [
          {
            type: 'column',
            name: 'Particular 4',
            data: [
              { name: 'CAAD', x: 1, y: 1, color: 'red' },
              { name: 'CAS', x: 2, y: 2, color: 'blue' },
              { name: 'COE', x: 3, y: 6, color: 'green' },
              { name: 'COED', x: 4, y: 0, color: 'violet' },
            ],
          },
        ],
      };

      // Create chart 2
      const container2 = this.elementRef.nativeElement.querySelector('#chart2');
      Highcharts.chart(container2, options2);

      // Create chart 3
      const container3 = this.elementRef.nativeElement.querySelector('#chart3');
      Highcharts.chart(container3, options3);

      // Create chart 4
      const container4 = this.elementRef.nativeElement.querySelector('#chart4');
      Highcharts.chart(container4, options4);
  };

  

}
