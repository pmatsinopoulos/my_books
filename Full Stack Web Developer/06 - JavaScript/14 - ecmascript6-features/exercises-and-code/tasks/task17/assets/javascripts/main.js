// fetch('http://fakedata.techcareerbooster.com/api/exercises_and_code/students.json')
//   .then((response) => {
//     console.log('...response finished');
//     if(response.ok) {
//       return response.json();
//     }
//     else {
//       console.log('Something went wrong', response);
//     }
//   })
//   .catch((error) => {
//     console.log(error);
//   })
//   .then((jsonData) => {
//     console.log(jsonData);
//     document.getElementById('description').innerHTML = jsonData.description;
//     document.getElementById('type-of-results').innerHTML = jsonData.type_of_results;
//     document.getElementById('number-of-results').innerHTML = jsonData.number_of_results;
//     const tbody = document.getElementsByTagName('tbody')[0];
//     jsonData.results.forEach((result) => {
//       const tr = document.createElement('tr');
//       tr.innerHTML = `<td>${result.id}</td><td>${result.name}</td><td>${result.email}</td><td>${result.address.street_number}, ${result.address.city}, ${result.address.zip_code}, ${result.address.country}</td>`;
//       tbody.appendChild(tr);
//     })
//   });

const makeRequest = async () => {
  const result = await fetch('http://fakedata.techcareerbooster.com/api/exercises_and_code/students.json');
  console.log(result);
  return result;
}

console.log('About to make request');
makeRequest();
