**free

ctl-opt dftactgrp(*no);

dcl-pi P3213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'

dcl-ds theTable extname('T1575') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1575 LIMIT 1;

theCharVar = 'Hello from P3213';
dsply theCharVar;
callp localProc();
P848();
P1197();
P2560();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3213 in the procedure';
end-proc;