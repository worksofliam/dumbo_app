**free

ctl-opt dftactgrp(*no);

dcl-pi P5470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5407.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds theTable extname('T1586') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1586 LIMIT 1;

theCharVar = 'Hello from P5470';
dsply theCharVar;
callp localProc();
P5407();
P263();
P233();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5470 in the procedure';
end-proc;