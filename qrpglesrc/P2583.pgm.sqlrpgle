**free

ctl-opt dftactgrp(*no);

dcl-pi P2583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P2354.rpgleinc'

dcl-ds theTable extname('T1138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1138 LIMIT 1;

theCharVar = 'Hello from P2583';
dsply theCharVar;
callp localProc();
P1524();
P255();
P2354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2583 in the procedure';
end-proc;