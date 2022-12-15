**free

ctl-opt dftactgrp(*no);

dcl-pi P417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P417';
dsply theCharVar;
callp localProc();
P361();
P280();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P417 in the procedure';
end-proc;