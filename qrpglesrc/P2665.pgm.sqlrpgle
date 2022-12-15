**free

ctl-opt dftactgrp(*no);

dcl-pi P2665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'

dcl-ds T262 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T262 FROM T262 LIMIT 1;

theCharVar = 'Hello from P2665';
dsply theCharVar;
callp localProc();
P886();
P616();
P1078();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2665 in the procedure';
end-proc;