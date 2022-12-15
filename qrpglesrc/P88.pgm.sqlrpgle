**free

ctl-opt dftactgrp(*no);

dcl-pi P88;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P88';
dsply theCharVar;
callp localProc();
P20();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P88 in the procedure';
end-proc;