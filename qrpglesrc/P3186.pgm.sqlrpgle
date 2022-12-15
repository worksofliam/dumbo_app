**free

ctl-opt dftactgrp(*no);

dcl-pi P3186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1858.rpgleinc'
/copy 'qrpgleref/P2554.rpgleinc'
/copy 'qrpgleref/P1485.rpgleinc'

dcl-ds theTable extname('T546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T546 LIMIT 1;

theCharVar = 'Hello from P3186';
dsply theCharVar;
callp localProc();
P1858();
P2554();
P1485();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3186 in the procedure';
end-proc;