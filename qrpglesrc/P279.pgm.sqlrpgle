**free

ctl-opt dftactgrp(*no);

dcl-pi P279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P279';
dsply theCharVar;
callp localProc();
P90();
P108();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P279 in the procedure';
end-proc;