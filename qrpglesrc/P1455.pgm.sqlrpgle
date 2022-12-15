**free

ctl-opt dftactgrp(*no);

dcl-pi P1455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1125.rpgleinc'
/copy 'qrpgleref/P1004.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds T374 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T374 FROM T374 LIMIT 1;

theCharVar = 'Hello from P1455';
dsply theCharVar;
callp localProc();
P1125();
P1004();
P179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1455 in the procedure';
end-proc;