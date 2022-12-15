**free

ctl-opt dftactgrp(*no);

dcl-pi P881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'

dcl-ds theTable extname('T257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T257 LIMIT 1;

theCharVar = 'Hello from P881';
dsply theCharVar;
callp localProc();
P763();
P537();
P690();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P881 in the procedure';
end-proc;