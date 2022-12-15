**free

ctl-opt dftactgrp(*no);

dcl-pi P924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P924';
dsply theCharVar;
callp localProc();
P526();
P254();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P924 in the procedure';
end-proc;