**free

ctl-opt dftactgrp(*no);

dcl-pi P326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds T306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T306 FROM T306 LIMIT 1;

theCharVar = 'Hello from P326';
dsply theCharVar;
callp localProc();
P253();
P186();
P137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P326 in the procedure';
end-proc;