module.exports = (sequelize, Sequelize) => {
  const Spot = sequelize.define("spot", {
   nb_baigneurs : {
      type: Sequelize.INTEGER
    },
    nb_pratiquants: {
      type: Sequelize.INTEGER
    },
    nb_bateaux_loisir: {
      type: Sequelize.INTEGER
    },
   nb_bateaux_voile: {
	type:Sequelize.INTEGER},
nb_bateaux_peche: {
	type: Sequelize.INTEGER
	}

  });

  return Spot;
};

