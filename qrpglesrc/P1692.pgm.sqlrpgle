**free

ctl-opt dftactgrp(*no);

dcl-pi P1692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1141.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P1692';
dsply theCharVar;
callp localProc();
P1141();
P1063();
P810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1692 in the procedure';
end-proc;