**free

ctl-opt dftactgrp(*no);

dcl-pi P524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P524';
dsply theCharVar;
callp localProc();
P38();
P8();
P196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P524 in the procedure';
end-proc;