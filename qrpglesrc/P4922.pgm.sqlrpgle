**free

ctl-opt dftactgrp(*no);

dcl-pi P4922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2344.rpgleinc'
/copy 'qrpgleref/P3939.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P4922';
dsply theCharVar;
callp localProc();
P2344();
P3939();
P1144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4922 in the procedure';
end-proc;