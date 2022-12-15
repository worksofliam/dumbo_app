**free

ctl-opt dftactgrp(*no);

dcl-pi P2524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P2454.rpgleinc'

dcl-ds theTable extname('T345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T345 LIMIT 1;

theCharVar = 'Hello from P2524';
dsply theCharVar;
callp localProc();
P586();
P1542();
P2454();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2524 in the procedure';
end-proc;