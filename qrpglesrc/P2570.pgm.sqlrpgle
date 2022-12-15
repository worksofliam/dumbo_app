**free

ctl-opt dftactgrp(*no);

dcl-pi P2570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1601.rpgleinc'
/copy 'qrpgleref/P2253.rpgleinc'
/copy 'qrpgleref/P2461.rpgleinc'

dcl-ds theTable extname('T1479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1479 LIMIT 1;

theCharVar = 'Hello from P2570';
dsply theCharVar;
callp localProc();
P1601();
P2253();
P2461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2570 in the procedure';
end-proc;