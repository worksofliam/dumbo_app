**free

ctl-opt dftactgrp(*no);

dcl-pi P310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P310';
dsply theCharVar;
callp localProc();
P233();
P123();
P191();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P310 in the procedure';
end-proc;