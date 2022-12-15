**free

ctl-opt dftactgrp(*no);

dcl-pi P2352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1621.rpgleinc'
/copy 'qrpgleref/P2240.rpgleinc'
/copy 'qrpgleref/P2016.rpgleinc'

dcl-ds theTable extname('T1130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1130 LIMIT 1;

theCharVar = 'Hello from P2352';
dsply theCharVar;
callp localProc();
P1621();
P2240();
P2016();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2352 in the procedure';
end-proc;