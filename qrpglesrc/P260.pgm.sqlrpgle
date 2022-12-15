**free

ctl-opt dftactgrp(*no);

dcl-pi P260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T1007') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1007 LIMIT 1;

theCharVar = 'Hello from P260';
dsply theCharVar;
callp localProc();
P9();
P181();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P260 in the procedure';
end-proc;