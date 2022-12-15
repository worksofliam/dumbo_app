**free

ctl-opt dftactgrp(*no);

dcl-pi P3713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P1765.rpgleinc'
/copy 'qrpgleref/P2948.rpgleinc'

dcl-ds theTable extname('T57') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T57 LIMIT 1;

theCharVar = 'Hello from P3713';
dsply theCharVar;
callp localProc();
P246();
P1765();
P2948();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3713 in the procedure';
end-proc;