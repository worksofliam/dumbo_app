**free

ctl-opt dftactgrp(*no);

dcl-pi P931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P866.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P840.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P931';
dsply theCharVar;
callp localProc();
P866();
P170();
P840();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P931 in the procedure';
end-proc;