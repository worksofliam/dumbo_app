**free

ctl-opt dftactgrp(*no);

dcl-pi P1849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P1228.rpgleinc'

dcl-ds theTable extname('T759') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T759 LIMIT 1;

theCharVar = 'Hello from P1849';
dsply theCharVar;
callp localProc();
P1173();
P1198();
P1228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1849 in the procedure';
end-proc;