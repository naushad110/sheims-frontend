var vm = new Vue({
  el: "#vue_det",
  data: {
    one: "Monthly Salary Statement ",
    Two: "Personal Informatin of Mr Ali",
    id: "1",
    Allow: "Pay and Allownces",

    Details: [
      {
 
        w: "Basic Pay",
        amo: "20,000",
      },
      {
  
        w: "Hospital Rent Allownce ",
        amo: "3000",
      },
      {
 
        w: "Medical Allownce",
        amo: "4000",
      },
      {
        w:"Qualification Allownce",
        amo:"900"
      },
      {
        w:"Charge Allownce",
        amo:"700"
      }
    ],
  },
});
