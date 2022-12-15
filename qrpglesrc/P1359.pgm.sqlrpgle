**free

ctl-opt dftactgrp(*no);

dcl-pi P1359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1326.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P1227.rpgleinc'

dcl-ds theTable extname('T1143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1143 LIMIT 1;

theCharVar = 'Hello from P1359';
dsply theCharVar;
callp localProc();
P1326();
P231();
P1227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1359 in the procedure';
end-proc;