**free

ctl-opt dftactgrp(*no);

dcl-pi P887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T1487') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1487 LIMIT 1;

theCharVar = 'Hello from P887';
dsply theCharVar;
callp localProc();
P132();
P551();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P887 in the procedure';
end-proc;