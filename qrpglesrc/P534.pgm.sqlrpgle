**free

ctl-opt dftactgrp(*no);

dcl-pi P534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P534';
dsply theCharVar;
callp localProc();
P66();
P133();
P373();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P534 in the procedure';
end-proc;