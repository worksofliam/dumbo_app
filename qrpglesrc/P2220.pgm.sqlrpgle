**free

ctl-opt dftactgrp(*no);

dcl-pi P2220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds theTable extname('T1871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1871 LIMIT 1;

theCharVar = 'Hello from P2220';
dsply theCharVar;
callp localProc();
P817();
P268();
P292();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2220 in the procedure';
end-proc;