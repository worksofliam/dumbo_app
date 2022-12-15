**free

ctl-opt dftactgrp(*no);

dcl-pi P1870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'

dcl-ds theTable extname('T1419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1419 LIMIT 1;

theCharVar = 'Hello from P1870';
dsply theCharVar;
callp localProc();
P721();
P292();
P783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1870 in the procedure';
end-proc;