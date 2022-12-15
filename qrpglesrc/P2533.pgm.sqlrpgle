**free

ctl-opt dftactgrp(*no);

dcl-pi P2533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P923.rpgleinc'
/copy 'qrpgleref/P2095.rpgleinc'
/copy 'qrpgleref/P1340.rpgleinc'

dcl-ds theTable extname('T1213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1213 LIMIT 1;

theCharVar = 'Hello from P2533';
dsply theCharVar;
callp localProc();
P923();
P2095();
P1340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2533 in the procedure';
end-proc;