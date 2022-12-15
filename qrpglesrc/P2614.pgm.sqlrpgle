**free

ctl-opt dftactgrp(*no);

dcl-pi P2614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1673.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P2614';
dsply theCharVar;
callp localProc();
P1673();
P262();
P793();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2614 in the procedure';
end-proc;