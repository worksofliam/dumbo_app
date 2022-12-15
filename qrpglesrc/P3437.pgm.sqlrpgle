**free

ctl-opt dftactgrp(*no);

dcl-pi P3437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2161.rpgleinc'
/copy 'qrpgleref/P2962.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'

dcl-ds theTable extname('T1139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1139 LIMIT 1;

theCharVar = 'Hello from P3437';
dsply theCharVar;
callp localProc();
P2161();
P2962();
P1458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3437 in the procedure';
end-proc;