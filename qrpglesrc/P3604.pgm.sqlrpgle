**free

ctl-opt dftactgrp(*no);

dcl-pi P3604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P2848.rpgleinc'
/copy 'qrpgleref/P2912.rpgleinc'

dcl-ds theTable extname('T1474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1474 LIMIT 1;

theCharVar = 'Hello from P3604';
dsply theCharVar;
callp localProc();
P292();
P2848();
P2912();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3604 in the procedure';
end-proc;