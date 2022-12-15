**free

ctl-opt dftactgrp(*no);

dcl-pi P5503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P3040.rpgleinc'
/copy 'qrpgleref/P4886.rpgleinc'

dcl-ds theTable extname('T1063') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1063 LIMIT 1;

theCharVar = 'Hello from P5503';
dsply theCharVar;
callp localProc();
P354();
P3040();
P4886();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5503 in the procedure';
end-proc;