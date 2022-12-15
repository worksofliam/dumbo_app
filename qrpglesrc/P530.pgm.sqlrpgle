**free

ctl-opt dftactgrp(*no);

dcl-pi P530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P530';
dsply theCharVar;
callp localProc();
P17();
P310();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P530 in the procedure';
end-proc;