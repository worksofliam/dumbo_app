**free

ctl-opt dftactgrp(*no);

dcl-pi P1545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'

dcl-ds theTable extname('T561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T561 LIMIT 1;

theCharVar = 'Hello from P1545';
dsply theCharVar;
callp localProc();
P114();
P402();
P1312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1545 in the procedure';
end-proc;