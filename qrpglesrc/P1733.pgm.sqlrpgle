**free

ctl-opt dftactgrp(*no);

dcl-pi P1733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P1733';
dsply theCharVar;
callp localProc();
P422();
P675();
P1435();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1733 in the procedure';
end-proc;