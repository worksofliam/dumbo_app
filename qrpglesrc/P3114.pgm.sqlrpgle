**free

ctl-opt dftactgrp(*no);

dcl-pi P3114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2368.rpgleinc'
/copy 'qrpgleref/P1654.rpgleinc'
/copy 'qrpgleref/P2465.rpgleinc'

dcl-ds theTable extname('T647') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T647 LIMIT 1;

theCharVar = 'Hello from P3114';
dsply theCharVar;
callp localProc();
P2368();
P1654();
P2465();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3114 in the procedure';
end-proc;