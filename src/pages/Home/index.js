import React, { useState, useEffect } from 'react';

import { Header } from '../Header';
import { Horarios } from '../Horarios';

export const Home = () => {
  return (
  	<div>
  		<Header></Header>
  		<Horarios></Horarios>
  	</div>
  );
};
