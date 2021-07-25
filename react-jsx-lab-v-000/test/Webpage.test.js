import React from 'react';
import { expect } from 'chai';
import Enzyme, { shallow } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

import FillerText from '../src/components/FillerText';
import Webpage from '../src/components/Webpage';

Enzyme.configure({ adapter: new Adapter() })

describe('<Webpage />', function () {
  const wrapper = shallow(<Webpage />);

  it('should contain the right title', function () {
    expect(wrapper.text()).to.include("The world's coolest webpage");
  });

  it('should have two instances of the `FillerText` component', function () {
    expect(wrapper.find(FillerText).length).to.equal(2);
  });
});
