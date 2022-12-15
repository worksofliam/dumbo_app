**free

ctl-opt dftactgrp(*no);

dcl-pi P1736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P1702.rpgleinc'

dcl-ds theTable extname('T544') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T544 LIMIT 1;

theCharVar = 'Hello from P1736';
dsply theCharVar;
callp localProc();
P1073();
P847();
P1702();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1736 in the procedure';
end-proc;