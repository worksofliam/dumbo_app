**free

ctl-opt dftactgrp(*no);

dcl-pi P97;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds theTable extname('T1052') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1052 LIMIT 1;

theCharVar = 'Hello from P97';
dsply theCharVar;
callp localProc();
P36();
P76();
P75();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P97 in the procedure';
end-proc;