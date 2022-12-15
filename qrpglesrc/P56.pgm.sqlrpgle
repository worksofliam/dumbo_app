**free

ctl-opt dftactgrp(*no);

dcl-pi P56;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T120 LIMIT 1;

theCharVar = 'Hello from P56';
dsply theCharVar;
callp localProc();
P38();
P8();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P56 in the procedure';
end-proc;