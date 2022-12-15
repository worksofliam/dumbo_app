**free

ctl-opt dftactgrp(*no);

dcl-pi P184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T667') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T667 LIMIT 1;

theCharVar = 'Hello from P184';
dsply theCharVar;
callp localProc();
P104();
P147();
P96();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P184 in the procedure';
end-proc;