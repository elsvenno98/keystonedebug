import {DocumentRenderer, DocumentRendererProps} from '@keystone-6/document-renderer';
import React from 'react';

const renderers: DocumentRendererProps['renderers'] = {
  inline: {
      relationship({relationship, data}){
          if (relationship === 'image') {
              if (data === null || data.data === undefined){
                  return <span>[unkown image]</span>
              } else {
                  return <a href={`/image/${data.data.id}`}>{data.data.name}</a>
              }
          }
          return null;
      }
  }
};

// <DocumentRenderer document={document} renderers={renderers}/>
