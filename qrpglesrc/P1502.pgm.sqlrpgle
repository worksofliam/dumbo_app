**free

ctl-opt dftactgrp(*no);

dcl-pi P1502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'

dcl-ds theTable extname('T1809') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1809 LIMIT 1;

theCharVar = 'Hello from P1502';
dsply theCharVar;
callp localProc();
P971();
P349();
P841();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1502 in the procedure';
end-proc;