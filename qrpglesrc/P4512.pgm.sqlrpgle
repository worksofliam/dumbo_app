**free

ctl-opt dftactgrp(*no);

dcl-pi P4512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P3505.rpgleinc'
/copy 'qrpgleref/P3958.rpgleinc'

dcl-ds theTable extname('T1493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1493 LIMIT 1;

theCharVar = 'Hello from P4512';
dsply theCharVar;
callp localProc();
P841();
P3505();
P3958();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4512 in the procedure';
end-proc;