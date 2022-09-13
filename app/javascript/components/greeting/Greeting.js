import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { setGreeting } from '../../redux/greeting/greeting';

const Greeting = () => {
  const dispatch = useDispatch();
  const greeting = useSelector((state) => state.greeting);

  useEffect(() => {
    dispatch(setGreeting);
  }, []);

  return (
    <div>
      <button onClick={() => dispatch(setGreeting)}>New message</button>
      <div>{greeting.body}</div>
    </div>
  )
}

export default Greeting;
