**free

ctl-opt dftactgrp(*no);

dcl-pi P2672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1541.rpgleinc'
/copy 'qrpgleref/P1724.rpgleinc'
/copy 'qrpgleref/P1936.rpgleinc'

dcl-ds theTable extname('T1101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1101 LIMIT 1;

theCharVar = 'Hello from P2672';
dsply theCharVar;
callp localProc();
P1541();
P1724();
P1936();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2672 in the procedure';
end-proc;