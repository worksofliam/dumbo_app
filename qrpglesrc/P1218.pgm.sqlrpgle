**free

ctl-opt dftactgrp(*no);

dcl-pi P1218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P877.rpgleinc'
/copy 'qrpgleref/P1004.rpgleinc'

dcl-ds theTable extname('T1771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1771 LIMIT 1;

theCharVar = 'Hello from P1218';
dsply theCharVar;
callp localProc();
P629();
P877();
P1004();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1218 in the procedure';
end-proc;