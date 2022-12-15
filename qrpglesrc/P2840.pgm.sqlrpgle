**free

ctl-opt dftactgrp(*no);

dcl-pi P2840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P2638.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'

dcl-ds theTable extname('T380') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T380 LIMIT 1;

theCharVar = 'Hello from P2840';
dsply theCharVar;
callp localProc();
P121();
P2638();
P1332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2840 in the procedure';
end-proc;