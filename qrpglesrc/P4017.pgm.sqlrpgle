**free

ctl-opt dftactgrp(*no);

dcl-pi P4017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1243.rpgleinc'
/copy 'qrpgleref/P2352.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T1181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1181 LIMIT 1;

theCharVar = 'Hello from P4017';
dsply theCharVar;
callp localProc();
P1243();
P2352();
P438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4017 in the procedure';
end-proc;