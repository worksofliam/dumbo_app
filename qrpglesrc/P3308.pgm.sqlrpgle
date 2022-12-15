**free

ctl-opt dftactgrp(*no);

dcl-pi P3308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1159.rpgleinc'
/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P3125.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P3308';
dsply theCharVar;
callp localProc();
P1159();
P689();
P3125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3308 in the procedure';
end-proc;