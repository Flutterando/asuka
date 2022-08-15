import React from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Simple and clean',
    Svg: require('@site/static/img/simple-clean.svg').default,
    description: (
      <>
        Snackbars, dialogs and ModalSheets, ready to use in your project.
      </>
    ),
  },
  {
    title: 'Easy to use',
    Svg: require('@site/static/img/easy-install.svg').default,
    description: (
      <>
        Just a few steps to configure and it's ready to use.
      </>
    ),
  },
  {
    title: 'Open Source',
    Svg: require('@site/static/img/open-souce.svg').default,
    description: (
      <>
        Powered by FTeam and the Flutterando community, 
        Asuka is an open source project and a work of love that is accepting new ideas and constructive criticism.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <Svg className={styles.featureSvg} role="img" />
      </div>
      <div className="text--center padding-horiz--md">
        <h3>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
