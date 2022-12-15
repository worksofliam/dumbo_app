**free

ctl-opt dftactgrp(*no);

dcl-pi P4191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2072.rpgleinc'
/copy 'qrpgleref/P3833.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'

dcl-ds theTable extname('T923') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T923 LIMIT 1;

theCharVar = 'Hello from P4191';
dsply theCharVar;
callp localProc();
P2072();
P3833();
P763();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4191 in the procedure';
end-proc;