**free

ctl-opt dftactgrp(*no);

dcl-pi P1444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1288.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T1755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1755 LIMIT 1;

theCharVar = 'Hello from P1444';
dsply theCharVar;
callp localProc();
P1288();
P502();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1444 in the procedure';
end-proc;