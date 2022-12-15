**free

ctl-opt dftactgrp(*no);

dcl-pi P2930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1287.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'
/copy 'qrpgleref/P1544.rpgleinc'

dcl-ds theTable extname('T374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T374 LIMIT 1;

theCharVar = 'Hello from P2930';
dsply theCharVar;
callp localProc();
P1287();
P1596();
P1544();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2930 in the procedure';
end-proc;