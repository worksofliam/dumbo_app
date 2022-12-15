**free

ctl-opt dftactgrp(*no);

dcl-pi P1611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P1430.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P1611';
dsply theCharVar;
callp localProc();
P362();
P1430();
P1312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1611 in the procedure';
end-proc;