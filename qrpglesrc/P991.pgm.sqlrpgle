**free

ctl-opt dftactgrp(*no);

dcl-pi P991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds theTable extname('T794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T794 LIMIT 1;

theCharVar = 'Hello from P991';
dsply theCharVar;
callp localProc();
P442();
P407();
P249();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P991 in the procedure';
end-proc;