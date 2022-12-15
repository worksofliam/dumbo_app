**free

ctl-opt dftactgrp(*no);

dcl-pi P2738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2657.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'

dcl-ds theTable extname('T1019') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1019 LIMIT 1;

theCharVar = 'Hello from P2738';
dsply theCharVar;
callp localProc();
P2657();
P1009();
P691();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2738 in the procedure';
end-proc;