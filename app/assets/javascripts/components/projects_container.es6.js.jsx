class ProjectsContainer extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedRepos: [],
      repos:         [],
      commits:       [],
      state:         [],
    }

    this.showSelectedProjects = this.showSelectedProjects.bind(this);
    this.showProjects         = this.showProjects.bind(this);
    this.showCommits          = this.showCommits.bind(this);
  }

  showProjects() {
    $.ajax({
      url:      '/api/projects',
      type:     'GET',
      dataType: 'json',
    }).then((response) => console.log(response))
  }

  showSelectedProjects() {
    $.ajax({
      url:      '/api/projects',
      type:     'GET',
      dataType: 'json',
    }).then((response) => console.log(response))
  }

  showCommits() {

  }

  render () {
    return (
      <Projects />
    );
  }
}
