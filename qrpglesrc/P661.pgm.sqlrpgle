**free

ctl-opt dftactgrp(*no);

dcl-pi P661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P645.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T602 LIMIT 1;

theCharVar = 'Hello from P661';
dsply theCharVar;
callp localProc();
P645();
P365();
P417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P661 in the procedure';
end-proc;