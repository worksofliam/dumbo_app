**free

ctl-opt dftactgrp(*no);

dcl-pi P244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'

dcl-ds theTable extname('T57') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T57 LIMIT 1;

theCharVar = 'Hello from P244';
dsply theCharVar;
callp localProc();
P53();
P185();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P244 in the procedure';
end-proc;