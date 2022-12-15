**free

ctl-opt dftactgrp(*no);

dcl-pi P2345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T1005') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1005 LIMIT 1;

theCharVar = 'Hello from P2345';
dsply theCharVar;
callp localProc();
P1117();
P1598();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2345 in the procedure';
end-proc;