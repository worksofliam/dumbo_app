**free

ctl-opt dftactgrp(*no);

dcl-pi P1455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P908.rpgleinc'

dcl-ds theTable extname('T120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T120 LIMIT 1;

theCharVar = 'Hello from P1455';
dsply theCharVar;
callp localProc();
P1249();
P393();
P908();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1455 in the procedure';
end-proc;