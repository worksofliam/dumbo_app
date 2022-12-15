**free

ctl-opt dftactgrp(*no);

dcl-pi P931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P931';
dsply theCharVar;
callp localProc();
P276();
P805();
P889();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P931 in the procedure';
end-proc;