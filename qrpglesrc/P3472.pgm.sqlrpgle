**free

ctl-opt dftactgrp(*no);

dcl-pi P3472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P1854.rpgleinc'

dcl-ds theTable extname('T1139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1139 LIMIT 1;

theCharVar = 'Hello from P3472';
dsply theCharVar;
callp localProc();
P710();
P862();
P1854();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3472 in the procedure';
end-proc;