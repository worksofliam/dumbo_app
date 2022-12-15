**free

ctl-opt dftactgrp(*no);

dcl-pi P285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T471 LIMIT 1;

theCharVar = 'Hello from P285';
dsply theCharVar;
callp localProc();
P186();
P111();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P285 in the procedure';
end-proc;