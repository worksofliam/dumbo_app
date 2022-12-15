**free

ctl-opt dftactgrp(*no);

dcl-pi P2160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T1062') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1062 LIMIT 1;

theCharVar = 'Hello from P2160';
dsply theCharVar;
callp localProc();
P399();
P1343();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2160 in the procedure';
end-proc;