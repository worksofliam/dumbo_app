**free

ctl-opt dftactgrp(*no);

dcl-pi P585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P585';
dsply theCharVar;
callp localProc();
P100();
P152();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P585 in the procedure';
end-proc;