**free

ctl-opt dftactgrp(*no);

dcl-pi P3882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P2191.rpgleinc'
/copy 'qrpgleref/P3252.rpgleinc'

dcl-ds theTable extname('T1419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1419 LIMIT 1;

theCharVar = 'Hello from P3882';
dsply theCharVar;
callp localProc();
P57();
P2191();
P3252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3882 in the procedure';
end-proc;