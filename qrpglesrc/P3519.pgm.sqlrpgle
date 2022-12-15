**free

ctl-opt dftactgrp(*no);

dcl-pi P3519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2970.rpgleinc'
/copy 'qrpgleref/P1511.rpgleinc'
/copy 'qrpgleref/P2192.rpgleinc'

dcl-ds theTable extname('T129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T129 LIMIT 1;

theCharVar = 'Hello from P3519';
dsply theCharVar;
callp localProc();
P2970();
P1511();
P2192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3519 in the procedure';
end-proc;