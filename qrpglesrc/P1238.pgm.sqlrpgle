**free

ctl-opt dftactgrp(*no);

dcl-pi P1238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1105.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P1233.rpgleinc'

dcl-ds theTable extname('T994') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T994 LIMIT 1;

theCharVar = 'Hello from P1238';
dsply theCharVar;
callp localProc();
P1105();
P629();
P1233();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1238 in the procedure';
end-proc;