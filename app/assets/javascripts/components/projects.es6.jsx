class Projects extends React.Component {
  render () {
    return (
      <div className="container">
        <header>
          <div className="logo">Agilify</div>
          <nav>
            <button className="show-commits">
              Show Commits
            </button>
            <button className="show-projects"
                    onClick={this.showProjects}>
              Show Projects
            </button>
            <form action="/users/sign_out" method="DELETE">
              <button className="sign-out" type="submit" value="Sumbit">
                Sign Out
              </button>
            </form>
          </nav>
        </header>
        <main>

        </main>
      </div>
    );
  }
}
