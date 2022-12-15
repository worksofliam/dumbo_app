**free

ctl-opt dftactgrp(*no);

dcl-pi P4623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4138.rpgleinc'
/copy 'qrpgleref/P2182.rpgleinc'
/copy 'qrpgleref/P1548.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P4623';
dsply theCharVar;
callp localProc();
P4138();
P2182();
P1548();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4623 in the procedure';
end-proc;