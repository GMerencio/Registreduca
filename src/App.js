import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

import { Login } from './pages/Login';
import { Home } from './pages/Home';
import { Perfil } from './pages/Perfil';
import { CadastrarUsuario } from './pages/CadastrarUsuario';
import { CadastrarProfessor } from './pages/CadastrarProfessor';
import { CadastrarTurma } from './pages/CadastrarTurma';
import { ListarUsuarios } from './pages/ListarUsuarios';
import { Horarios } from './pages/Horarios';
import { ListarProfessores } from './pages/ListarProfessores';
import { ListarTurmas } from './pages/ListarTurmas';
import { Professor } from './pages/Professor';

function App() {
  return (
    <div>
      <Router>
        <Switch>
          <Route exact path="/" component={Login} />
          <Route path="/home" component={Home} />
          <Route path="/perfil" component={Perfil} />
          <Route path="/cadastrar-usuario" component={CadastrarUsuario} />
          <Route path="/cadastrar-professor" component={CadastrarProfessor} />
          <Route path="/cadastrar-turma" component={CadastrarTurma} />
          <Route path="/listar-usuarios" component={ListarUsuarios} />
          <Route path="/horarios" component={Horarios} />
          <Route path="/listar-professores" component={ListarProfessores} />
          <Route path="/listar-turmas" component={ListarTurmas} />
          <Route path="/professor" component={Professor} />
        </Switch>
      </Router>
    </div>
  );
}

export default App;
