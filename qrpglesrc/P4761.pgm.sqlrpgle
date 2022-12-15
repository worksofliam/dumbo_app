**free

ctl-opt dftactgrp(*no);

dcl-pi P4761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2962.rpgleinc'
/copy 'qrpgleref/P2514.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'

dcl-ds theTable extname('T1379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1379 LIMIT 1;

theCharVar = 'Hello from P4761';
dsply theCharVar;
callp localProc();
P2962();
P2514();
P739();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4761 in the procedure';
end-proc;