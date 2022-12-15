**free

ctl-opt dftactgrp(*no);

dcl-pi P2167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P2167';
dsply theCharVar;
callp localProc();
P971();
P607();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2167 in the procedure';
end-proc;