**free

ctl-opt dftactgrp(*no);

dcl-pi P958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P958';
dsply theCharVar;
callp localProc();
P527();
P478();
P895();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P958 in the procedure';
end-proc;