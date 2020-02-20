const db = require("../data/db-config");

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
}


function find() {
  return db("schemes");
}

function findById(id) {
  return db("schemes")
  .where({ id })
  .first();
}

function findSteps(id){
  return db("steps as st")
  .join("schemes as s", "s.id", "st.scheme_id")

  .select(
    "st.step_number",
    "st.instructions",   
    "s.scheme_name"
  )

  .where("s.id", id)
  .orderBy("st.step_number")
}



function add(scheme) {
  return db("schemes")
  .insert(scheme, "id");
}

function update(id, changes) {
  return db("schemes")
  .where({ id })
  .update({ changes });
}

function remove(id) {
  return db("schemes")
  .where({ id })
  .del();
}