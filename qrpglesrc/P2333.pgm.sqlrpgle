**free

ctl-opt dftactgrp(*no);

dcl-pi P2333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T1577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1577 LIMIT 1;

theCharVar = 'Hello from P2333';
dsply theCharVar;
callp localProc();
P1399();
P0();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2333 in the procedure';
end-proc;