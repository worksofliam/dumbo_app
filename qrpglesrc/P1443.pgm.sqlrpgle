**free

ctl-opt dftactgrp(*no);

dcl-pi P1443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds T72 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T72 FROM T72 LIMIT 1;

theCharVar = 'Hello from P1443';
dsply theCharVar;
callp localProc();
P352();
P1156();
P457();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1443 in the procedure';
end-proc;