**free

ctl-opt dftactgrp(*no);

dcl-pi P2204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P1683.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P2204';
dsply theCharVar;
callp localProc();
P994();
P1151();
P1683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2204 in the procedure';
end-proc;