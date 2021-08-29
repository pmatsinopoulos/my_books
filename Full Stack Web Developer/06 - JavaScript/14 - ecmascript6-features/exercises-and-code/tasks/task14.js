// Task 14
//
const teamName = "tooling"
const people = [{name: "Jennie", role: "senior"},
  {name: "Ronald", role: "junior"},
  {name: "Martin", role: "senior"},
  {name: "Anneli", role: "junior"}]

let role = "senior"
let message = `There are ${people.length} people on the ${teamName} team.
Their names are ${people.map((person) => person.name).join(', ')}.
${people.filter((person) => person.role === role).length} of them have a ${role} role.`;

console.log(message);
