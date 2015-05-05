
var Greeting = React.createClass({
   getInitialState: function() {
      return { name: '???' };
   },
   componentDidMount: function() {
      $.get('/services/person/123', function(result) {
         if (this.isMounted()) {
            this.setState(result);
         }
      }.bind(this));
   },
   render: function() {
      return ( <h1>Hello, { this.state.name }!</h1>);
   }
});

React.render(<Greeting />, $('#greeting')[0]);
