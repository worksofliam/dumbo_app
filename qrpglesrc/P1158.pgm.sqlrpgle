**free

ctl-opt dftactgrp(*no);

dcl-pi P1158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'

dcl-ds theTable extname('T756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T756 LIMIT 1;

theCharVar = 'Hello from P1158';
dsply theCharVar;
callp localProc();
P1000();
P899();
P823();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1158 in the procedure';
end-proc;