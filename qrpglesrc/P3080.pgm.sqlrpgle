**free

ctl-opt dftactgrp(*no);

dcl-pi P3080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1481.rpgleinc'
/copy 'qrpgleref/P2416.rpgleinc'
/copy 'qrpgleref/P2867.rpgleinc'

dcl-ds theTable extname('T1225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1225 LIMIT 1;

theCharVar = 'Hello from P3080';
dsply theCharVar;
callp localProc();
P1481();
P2416();
P2867();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3080 in the procedure';
end-proc;