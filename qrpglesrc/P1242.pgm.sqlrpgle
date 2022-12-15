**free

ctl-opt dftactgrp(*no);

dcl-pi P1242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T292 LIMIT 1;

theCharVar = 'Hello from P1242';
dsply theCharVar;
callp localProc();
P74();
P1174();
P59();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1242 in the procedure';
end-proc;