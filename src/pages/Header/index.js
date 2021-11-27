import React from 'react';
import { Link } from 'react-router-dom';

import './style.css';
import logo from './img/logo6.jpg';

export class Header extends React.Component {

  render() {
  return (
  <nav>
    <div class="navbar">
      <i class='bx bx-menu'></i>
      <div class="logo"><Link to="/home"><img src={logo} /></Link></div>
      <div class="nav-links">
        <div class="sidebar-logo">
          <span class="logo-name">MENU</span>
          <i class='bx bx-x'></i>
        </div>
        <ul class="links">
        
          <li><a href="#">PERFIL</a></li>
          
          <li>
            <a href="#">PROFESSORES</a>
            <i class='bx bxs-chevron-down htmlcss-arrow arrow'></i>
            <ul class="htmlCss-sub-menu sub-menu">
              <li><Link to="/professor">MARIA</Link></li>
              <li><a href="#">JOAO</a></li>
              <li><a href="#">JOSE</a></li>
            </ul>
          </li>
        
        <li>
          <a href="#">TURMA</a>
          <i class='bx bxs-chevron-down more-arrow'></i>
          <ul class="js-sub-menu sub-menu">
            <li><a href="#">BLABLABLA</a></li>
            <li><a href="#">BLABLABLA</a></li>
            <li><a href="#">BLABLABLA</a></li>
          </ul>
        </li>
        
          <li>
            <a href="#">CADASTRO</a>
            <i class='bx bxs-chevron-down htmlcss-arrow arrow'></i>
            <ul class="htmlCss-sub-menu sub-menu">
              <li><a href="#">Professor</a></li>
              <li><a href="#">Usuário</a></li>
              <li><a href="#">Turma</a></li>
            </ul>
          </li>
   
        <li>
          <a href="#">CONSULTA</a>
          <i class='bx bxs-chevron-down more-arrow'></i>
          <ul class="js-sub-menu sub-menu">
            <li><a href="#">Horário de Aula</a></li>
            <li><a href="#">Lista de Professores</a></li>
            <li><a href="#">Lista de Usuários</a></li>
            <li><a href="#">Lista de Turmas</a></li>
          </ul>
        </li>

	  </ul>
      </div>
      
      <div class="search-box">
        <i class='bx bx-search'></i>
        <div class="input-box">
          <input type="text" placeholder="Search..." />
        </div>
      </div>
      
    </div>
  </nav>
  )
  }
  
  componentDidMount() {
  	let navbar = document.querySelector(".navbar");
	let searchBox = document.querySelector(".search-box .bx-search");
	// let searchBoxCancel = document.querySelector(".search-box .bx-x");
	
	searchBox.addEventListener("click", () => {
		navbar.classList.toggle("showInput");
		if (navbar.classList.contains("showInput")) {
    		searchBox.classList.replace("bx-search", "bx-x");
		} else {
    		searchBox.classList.replace("bx-x", "bx-search");
		}
	});
	
	// sidebar open close js code
	let navLinks = document.querySelector(".nav-links");
	let menuOpenBtn = document.querySelector(".navbar .bx-menu");
	
	let menuCloseBtn = document.querySelector(".nav-links .bx-x");
	menuOpenBtn.onclick = function () {
  		navLinks.style.left = "0";
	}
	menuCloseBtn.onclick = function () {
  		navLinks.style.left = "-100%";
	}
	
	// sidebar submenu open close js code
	let htmlcssArrow = document.querySelector(".htmlcss-arrow");
	htmlcssArrow.onclick = function () {
  		navLinks.classList.toggle("show1");
	}
	
	let moreArrow = document.querySelector(".more-arrow");
	moreArrow.onclick = function () {
  		navLinks.classList.toggle("show2");
  		navLinks.classList.toggle("show3");
	}
  }
};
