**free

ctl-opt dftactgrp(*no);

dcl-pi P1819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P1819';
dsply theCharVar;
callp localProc();
P621();
P1332();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1819 in the procedure';
end-proc;