**free

ctl-opt dftactgrp(*no);

dcl-pi P3669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3300.rpgleinc'
/copy 'qrpgleref/P1888.rpgleinc'
/copy 'qrpgleref/P1491.rpgleinc'

dcl-ds theTable extname('T324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T324 LIMIT 1;

theCharVar = 'Hello from P3669';
dsply theCharVar;
callp localProc();
P3300();
P1888();
P1491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3669 in the procedure';
end-proc;