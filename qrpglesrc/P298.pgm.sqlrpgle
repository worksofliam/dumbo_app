**free

ctl-opt dftactgrp(*no);

dcl-pi P298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T110 LIMIT 1;

theCharVar = 'Hello from P298';
dsply theCharVar;
callp localProc();
P174();
P146();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P298 in the procedure';
end-proc;