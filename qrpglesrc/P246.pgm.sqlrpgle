**free

ctl-opt dftactgrp(*no);

dcl-pi P246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T1288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1288 LIMIT 1;

theCharVar = 'Hello from P246';
dsply theCharVar;
callp localProc();
P79();
P234();
P152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P246 in the procedure';
end-proc;