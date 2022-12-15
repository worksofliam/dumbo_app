**free

ctl-opt dftactgrp(*no);

dcl-pi P4367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3955.rpgleinc'
/copy 'qrpgleref/P2454.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P4367';
dsply theCharVar;
callp localProc();
P3955();
P2454();
P1554();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4367 in the procedure';
end-proc;