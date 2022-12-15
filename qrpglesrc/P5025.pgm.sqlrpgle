**free

ctl-opt dftactgrp(*no);

dcl-pi P5025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3072.rpgleinc'
/copy 'qrpgleref/P2193.rpgleinc'
/copy 'qrpgleref/P3923.rpgleinc'

dcl-ds theTable extname('T1867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1867 LIMIT 1;

theCharVar = 'Hello from P5025';
dsply theCharVar;
callp localProc();
P3072();
P2193();
P3923();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5025 in the procedure';
end-proc;