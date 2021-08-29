// Task 15
//
// Generate a random graph
const graph = [];
const numberOfNodes = 5;
const numberOfEdges = 20;
for (let i = 0; i < numberOfNodes; i++) {
  const newNode = {value: Math.floor(Math.random() * 1001), edges: []};
  graph.push(newNode);
}
for (let i = 0; i < numberOfEdges; i++) {
  let from = graph[Math.floor(Math.random() * graph.length)];
  let to = graph[Math.floor(Math.random() * graph.length)];
  if (from.edges.indexOf(to) != -1)
    continue
  from.edges.push(to);
}

const connectedValue = (node) => {
  const visited = new Set();

  const visitGraph = (aNode, visited) => {
    if (visited.has(aNode)) {
      return;
    }

    visited.add(aNode);

    aNode.edges.forEach((edge) => visitGraph(edge, visited));
  }

  visitGraph(node, visited);

  return [...visited].reduce((accumulator, element) => element.value + accumulator, 0);
}

console.log(connectedValue(graph[0]));
