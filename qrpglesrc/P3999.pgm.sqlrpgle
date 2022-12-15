**free

ctl-opt dftactgrp(*no);

dcl-pi P3999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P3838.rpgleinc'
/copy 'qrpgleref/P3272.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P3999';
dsply theCharVar;
callp localProc();
P87();
P3838();
P3272();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3999 in the procedure';
end-proc;