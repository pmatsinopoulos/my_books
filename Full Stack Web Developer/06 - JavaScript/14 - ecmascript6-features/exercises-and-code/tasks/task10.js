// Task 10
//
const go = (options = {}) => {
  let {speed = 30, hyperdrive = 8} = options;

  console.log("speed=", speed, "hyperdrive=", hyperdrive);
}

go();
go({speed: 10, hyperdrive: 30});
