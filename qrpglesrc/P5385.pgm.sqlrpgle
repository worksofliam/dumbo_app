**free

ctl-opt dftactgrp(*no);

dcl-pi P5385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3688.rpgleinc'
/copy 'qrpgleref/P3725.rpgleinc'
/copy 'qrpgleref/P4999.rpgleinc'

dcl-ds theTable extname('T1532') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1532 LIMIT 1;

theCharVar = 'Hello from P5385';
dsply theCharVar;
callp localProc();
P3688();
P3725();
P4999();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5385 in the procedure';
end-proc;