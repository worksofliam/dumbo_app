**free

ctl-opt dftactgrp(*no);

dcl-pi P439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'

dcl-ds theTable extname('T871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T871 LIMIT 1;

theCharVar = 'Hello from P439';
dsply theCharVar;
callp localProc();
P28();
P201();
P368();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P439 in the procedure';
end-proc;