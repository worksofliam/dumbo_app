**free

ctl-opt dftactgrp(*no);

dcl-pi P2829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1774.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P1975.rpgleinc'

dcl-ds theTable extname('T1851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1851 LIMIT 1;

theCharVar = 'Hello from P2829';
dsply theCharVar;
callp localProc();
P1774();
P574();
P1975();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2829 in the procedure';
end-proc;