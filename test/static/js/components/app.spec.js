import React from 'react';
import {expect} from 'chai';
import {shallow} from 'enzyme';
import App from 'desired/components/app';
import Form from 'desired/components/form';

describe('App', () => {
  it ('renders html', () => {
    const wrapper = shallow(<App />);
    expect(wrapper.find(Form)).to.have.length(1);
  });
});
