import React, { useState, useEffect } from 'react';

export const Horarios = () => {

	const [data, setData] = useState([]);
	
  const getAulas = async () => {
    fetch("http://localhost/registreduca/api/controller/aulaController.php?findAll")
      .then((response) => response.json())
      .then((responseJson) => (
        //console.log(responseJson),
        getAulasDia(responseJson)
      ));
  }
  
  const getAulasDia = function(data) {
  	let hoje = new Date();
  	
  	if(hoje.getDay() === 0)
  		hoje.setDate(hoje.getDate() + 1);
  		
  	setData(data.filter(aula => new Date(aula.inicio).getDate() === hoje.getDate()));
  }

  useEffect(() => {
    getAulas();
  }, [])

  return (
  	<h1>Horários</h1>
  );
};
