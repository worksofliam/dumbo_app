**free

ctl-opt dftactgrp(*no);

dcl-pi P4266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2472.rpgleinc'
/copy 'qrpgleref/P748.rpgleinc'
/copy 'qrpgleref/P1950.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P4266';
dsply theCharVar;
callp localProc();
P2472();
P748();
P1950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4266 in the procedure';
end-proc;