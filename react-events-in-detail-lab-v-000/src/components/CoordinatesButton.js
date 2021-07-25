import React from 'react';

export default class CoordinatesButton extends React.Component {

  handleClick = (event) => {
    this.props.onReceiveCoordinates([event.clientX, event.clientY]);
  };


  render() {
    return (
      <div>
        <button onClick={this.handleClick}>Coordinates</button>
      </div>
    )
  };
};
