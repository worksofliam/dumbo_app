**free

ctl-opt dftactgrp(*no);

dcl-pi P1353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1308.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P1353';
dsply theCharVar;
callp localProc();
P1308();
P1173();
P721();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1353 in the procedure';
end-proc;