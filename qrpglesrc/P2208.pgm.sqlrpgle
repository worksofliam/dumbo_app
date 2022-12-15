**free

ctl-opt dftactgrp(*no);

dcl-pi P2208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P1638.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P2208';
dsply theCharVar;
callp localProc();
P1000();
P1638();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2208 in the procedure';
end-proc;