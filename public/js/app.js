
var Greeting = React.createClass({displayName: "Greeting",
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
      return ( React.createElement("h1", null, "Hello, ",  this.state.name, "!"));
   }
});

React.render(React.createElement(Greeting, null), $('#greeting')[0]);
