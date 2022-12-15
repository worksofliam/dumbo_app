**free

ctl-opt dftactgrp(*no);

dcl-pi P1727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P1727';
dsply theCharVar;
callp localProc();
P1177();
P1261();
P1026();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1727 in the procedure';
end-proc;