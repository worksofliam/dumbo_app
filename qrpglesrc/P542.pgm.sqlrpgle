**free

ctl-opt dftactgrp(*no);

dcl-pi P542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P542';
dsply theCharVar;
callp localProc();
P436();
P172();
P185();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P542 in the procedure';
end-proc;