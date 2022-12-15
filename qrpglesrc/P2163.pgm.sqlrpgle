**free

ctl-opt dftactgrp(*no);

dcl-pi P2163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'

dcl-ds theTable extname('T1557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1557 LIMIT 1;

theCharVar = 'Hello from P2163';
dsply theCharVar;
callp localProc();
P523();
P631();
P1630();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2163 in the procedure';
end-proc;