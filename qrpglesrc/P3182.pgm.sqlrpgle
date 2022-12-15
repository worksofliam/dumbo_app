**free

ctl-opt dftactgrp(*no);

dcl-pi P3182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2209.rpgleinc'
/copy 'qrpgleref/P2535.rpgleinc'
/copy 'qrpgleref/P3057.rpgleinc'

dcl-ds theTable extname('T745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T745 LIMIT 1;

theCharVar = 'Hello from P3182';
dsply theCharVar;
callp localProc();
P2209();
P2535();
P3057();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3182 in the procedure';
end-proc;