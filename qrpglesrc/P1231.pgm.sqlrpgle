**free

ctl-opt dftactgrp(*no);

dcl-pi P1231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P1231';
dsply theCharVar;
callp localProc();
P718();
P236();
P1028();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1231 in the procedure';
end-proc;