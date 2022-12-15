**free

ctl-opt dftactgrp(*no);

dcl-pi P745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'

dcl-ds theTable extname('T1174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1174 LIMIT 1;

theCharVar = 'Hello from P745';
dsply theCharVar;
callp localProc();
P718();
P567();
P560();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P745 in the procedure';
end-proc;