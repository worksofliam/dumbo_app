**free

ctl-opt dftactgrp(*no);

dcl-pi P1595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1383.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P1509.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P1595';
dsply theCharVar;
callp localProc();
P1383();
P1016();
P1509();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1595 in the procedure';
end-proc;