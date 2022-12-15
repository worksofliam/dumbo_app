**free

ctl-opt dftactgrp(*no);

dcl-pi P95;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P95';
dsply theCharVar;
callp localProc();
P52();
P91();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P95 in the procedure';
end-proc;