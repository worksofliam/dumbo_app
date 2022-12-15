**free

ctl-opt dftactgrp(*no);

dcl-pi P4889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P2270.rpgleinc'
/copy 'qrpgleref/P3087.rpgleinc'

dcl-ds T1864 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1864 FROM T1864 LIMIT 1;

theCharVar = 'Hello from P4889';
dsply theCharVar;
callp localProc();
P332();
P2270();
P3087();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4889 in the procedure';
end-proc;