**free

ctl-opt dftactgrp(*no);

dcl-pi P1234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'

dcl-ds theTable extname('T823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T823 LIMIT 1;

theCharVar = 'Hello from P1234';
dsply theCharVar;
callp localProc();
P389();
P800();
P1028();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1234 in the procedure';
end-proc;