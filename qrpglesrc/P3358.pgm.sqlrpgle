**free

ctl-opt dftactgrp(*no);

dcl-pi P3358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1557.rpgleinc'
/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P2363.rpgleinc'

dcl-ds theTable extname('T725') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T725 LIMIT 1;

theCharVar = 'Hello from P3358';
dsply theCharVar;
callp localProc();
P1557();
P2343();
P2363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3358 in the procedure';
end-proc;