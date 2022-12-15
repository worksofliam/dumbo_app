**free

ctl-opt dftactgrp(*no);

dcl-pi P443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P443';
dsply theCharVar;
callp localProc();
P178();
P380();
P149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P443 in the procedure';
end-proc;