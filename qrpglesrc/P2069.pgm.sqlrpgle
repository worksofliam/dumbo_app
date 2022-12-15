**free

ctl-opt dftactgrp(*no);

dcl-pi P2069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P1370.rpgleinc'
/copy 'qrpgleref/P1599.rpgleinc'

dcl-ds T180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T180 FROM T180 LIMIT 1;

theCharVar = 'Hello from P2069';
dsply theCharVar;
callp localProc();
P1147();
P1370();
P1599();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2069 in the procedure';
end-proc;