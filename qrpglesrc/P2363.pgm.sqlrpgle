**free

ctl-opt dftactgrp(*no);

dcl-pi P2363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1094.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P1141.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P2363';
dsply theCharVar;
callp localProc();
P1094();
P1473();
P1141();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2363 in the procedure';
end-proc;