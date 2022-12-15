**free

ctl-opt dftactgrp(*no);

dcl-pi P1671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1586.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P1671';
dsply theCharVar;
callp localProc();
P1586();
P1287();
P512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1671 in the procedure';
end-proc;