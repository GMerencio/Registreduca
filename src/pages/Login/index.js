import { Link } from 'react-router-dom';

import './style.css';

export const Login = () => {
  return (
	<div class="container">
		<header class="title">
    		<div>
        		<h1><strong>RegistrEduca</strong></h1>
    		</div>
		</header>
		<section>
    		<div class="formContainer">
        		<h2 class="mb">Identifique-se no RegistrEduca com:</h2>
        		<p class="mb"></p>
        		<form action="">
            		<input id="email" type="email" placeholder="Login" />
            		<input id="password" type="password" placeholder="Senha" />
		
        		
            		<Link to="/home"><input type="submit" value="Continuar" /></Link>
		
            		<p>Uma conta no <b>RegistrEduca</b>
                		&nbsp;garante que o professor não perca
                		nenhuma horário de suas aulas, 
                		e sempre esteja pontual.</p>
        		</form>
    		</div>
		</section>	
	</div>
  );
};
