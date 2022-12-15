**free

ctl-opt dftactgrp(*no);

dcl-pi P536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1097') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1097 LIMIT 1;

theCharVar = 'Hello from P536';
dsply theCharVar;
callp localProc();
P440();
P5();
P79();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P536 in the procedure';
end-proc;