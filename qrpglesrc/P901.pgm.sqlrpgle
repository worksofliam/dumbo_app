**free

ctl-opt dftactgrp(*no);

dcl-pi P901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds theTable extname('T1017') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1017 LIMIT 1;

theCharVar = 'Hello from P901';
dsply theCharVar;
callp localProc();
P147();
P664();
P220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P901 in the procedure';
end-proc;