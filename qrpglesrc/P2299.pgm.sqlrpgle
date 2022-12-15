**free

ctl-opt dftactgrp(*no);

dcl-pi P2299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P1545.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1315 LIMIT 1;

theCharVar = 'Hello from P2299';
dsply theCharVar;
callp localProc();
P104();
P1545();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2299 in the procedure';
end-proc;