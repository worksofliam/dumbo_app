**free

ctl-opt dftactgrp(*no);

dcl-pi P1389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P1389';
dsply theCharVar;
callp localProc();
P1066();
P1158();
P986();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1389 in the procedure';
end-proc;