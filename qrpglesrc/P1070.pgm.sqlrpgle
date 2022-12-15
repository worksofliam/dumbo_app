**free

ctl-opt dftactgrp(*no);

dcl-pi P1070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds theTable extname('T1290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1290 LIMIT 1;

theCharVar = 'Hello from P1070';
dsply theCharVar;
callp localProc();
P500();
P528();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1070 in the procedure';
end-proc;