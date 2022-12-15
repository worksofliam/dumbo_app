**free

ctl-opt dftactgrp(*no);

dcl-pi P765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'

dcl-ds theTable extname('T690') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T690 LIMIT 1;

theCharVar = 'Hello from P765';
dsply theCharVar;
callp localProc();
P662();
P515();
P698();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P765 in the procedure';
end-proc;