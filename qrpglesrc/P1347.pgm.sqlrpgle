**free

ctl-opt dftactgrp(*no);

dcl-pi P1347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P1347';
dsply theCharVar;
callp localProc();
P362();
P1201();
P656();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1347 in the procedure';
end-proc;