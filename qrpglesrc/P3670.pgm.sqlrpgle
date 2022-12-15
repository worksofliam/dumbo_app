**free

ctl-opt dftactgrp(*no);

dcl-pi P3670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3569.rpgleinc'
/copy 'qrpgleref/P2478.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P3670';
dsply theCharVar;
callp localProc();
P3569();
P2478();
P292();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3670 in the procedure';
end-proc;