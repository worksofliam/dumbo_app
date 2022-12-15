**free

ctl-opt dftactgrp(*no);

dcl-pi P882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T1215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1215 LIMIT 1;

theCharVar = 'Hello from P882';
dsply theCharVar;
callp localProc();
P260();
P492();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P882 in the procedure';
end-proc;