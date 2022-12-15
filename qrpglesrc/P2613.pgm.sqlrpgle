**free

ctl-opt dftactgrp(*no);

dcl-pi P2613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1315.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T1081') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1081 LIMIT 1;

theCharVar = 'Hello from P2613';
dsply theCharVar;
callp localProc();
P1315();
P127();
P62();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2613 in the procedure';
end-proc;