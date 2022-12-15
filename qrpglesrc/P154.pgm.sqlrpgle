**free

ctl-opt dftactgrp(*no);

dcl-pi P154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T1546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1546 LIMIT 1;

theCharVar = 'Hello from P154';
dsply theCharVar;
callp localProc();
P70();
P45();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P154 in the procedure';
end-proc;