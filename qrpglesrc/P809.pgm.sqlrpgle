**free

ctl-opt dftactgrp(*no);

dcl-pi P809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds theTable extname('T803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T803 LIMIT 1;

theCharVar = 'Hello from P809';
dsply theCharVar;
callp localProc();
P68();
P39();
P420();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P809 in the procedure';
end-proc;