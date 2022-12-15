**free

ctl-opt dftactgrp(*no);

dcl-pi P4388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P2445.rpgleinc'
/copy 'qrpgleref/P2260.rpgleinc'

dcl-ds theTable extname('T1685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1685 LIMIT 1;

theCharVar = 'Hello from P4388';
dsply theCharVar;
callp localProc();
P1086();
P2445();
P2260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4388 in the procedure';
end-proc;