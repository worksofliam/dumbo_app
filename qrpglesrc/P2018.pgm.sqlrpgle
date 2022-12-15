**free

ctl-opt dftactgrp(*no);

dcl-pi P2018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1451.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P1467.rpgleinc'

dcl-ds theTable extname('T118') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T118 LIMIT 1;

theCharVar = 'Hello from P2018';
dsply theCharVar;
callp localProc();
P1451();
P265();
P1467();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2018 in the procedure';
end-proc;