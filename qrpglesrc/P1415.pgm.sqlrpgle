**free

ctl-opt dftactgrp(*no);

dcl-pi P1415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1299.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds theTable extname('T513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T513 LIMIT 1;

theCharVar = 'Hello from P1415';
dsply theCharVar;
callp localProc();
P1299();
P1033();
P1055();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1415 in the procedure';
end-proc;