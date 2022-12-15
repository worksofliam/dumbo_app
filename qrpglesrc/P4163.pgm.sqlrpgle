**free

ctl-opt dftactgrp(*no);

dcl-pi P4163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2980.rpgleinc'
/copy 'qrpgleref/P3277.rpgleinc'
/copy 'qrpgleref/P1493.rpgleinc'

dcl-ds theTable extname('T1841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1841 LIMIT 1;

theCharVar = 'Hello from P4163';
dsply theCharVar;
callp localProc();
P2980();
P3277();
P1493();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4163 in the procedure';
end-proc;