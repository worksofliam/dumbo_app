**free

ctl-opt dftactgrp(*no);

dcl-pi P372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P372';
dsply theCharVar;
callp localProc();
P288();
P301();
P237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P372 in the procedure';
end-proc;