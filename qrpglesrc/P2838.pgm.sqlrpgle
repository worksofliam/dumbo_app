**free

ctl-opt dftactgrp(*no);

dcl-pi P2838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P2395.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T1680') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1680 LIMIT 1;

theCharVar = 'Hello from P2838';
dsply theCharVar;
callp localProc();
P531();
P2395();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2838 in the procedure';
end-proc;