**free

ctl-opt dftactgrp(*no);

dcl-pi P878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P878';
dsply theCharVar;
callp localProc();
P198();
P182();
P793();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P878 in the procedure';
end-proc;