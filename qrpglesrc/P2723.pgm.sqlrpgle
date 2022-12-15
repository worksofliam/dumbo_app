**free

ctl-opt dftactgrp(*no);

dcl-pi P2723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1917.rpgleinc'
/copy 'qrpgleref/P2442.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'

dcl-ds theTable extname('T1642') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1642 LIMIT 1;

theCharVar = 'Hello from P2723';
dsply theCharVar;
callp localProc();
P1917();
P2442();
P770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2723 in the procedure';
end-proc;