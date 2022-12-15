**free

ctl-opt dftactgrp(*no);

dcl-pi P4188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P2761.rpgleinc'

dcl-ds theTable extname('T1497') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1497 LIMIT 1;

theCharVar = 'Hello from P4188';
dsply theCharVar;
callp localProc();
P962();
P1473();
P2761();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4188 in the procedure';
end-proc;