import React from 'react';
import { expect } from 'chai';
import Enzyme, { shallow } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

import RegistrationForm from '../src/components/RegistrationForm';

Enzyme.configure({ adapter: new Adapter() })

describe('<RegistrationForm />', function () {
  const wrapper = shallow(<RegistrationForm />);

  it('should have the right tag', function () {
    expect(wrapper.type()).to.equal('form', (res) => `\`${res[1]}\` is not the right element tag.`);
  });

  it('should contain one text input', function () {
    expect(wrapper.find('input[type="text"]').length).to.equal(1);
  });

  it('should contain one password input', function () {
    expect(wrapper.find('input[type="password"]').length).to.equal(1);
  });

  it('should contain one submit button', function () {
    expect(wrapper.find('button[type="submit"]').length).to.equal(1);
  });
});
