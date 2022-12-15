**free

ctl-opt dftactgrp(*no);

dcl-pi P1173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P1173';
dsply theCharVar;
callp localProc();
P200();
P382();
P500();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1173 in the procedure';
end-proc;