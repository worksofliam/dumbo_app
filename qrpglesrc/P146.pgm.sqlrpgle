**free

ctl-opt dftactgrp(*no);

dcl-pi P146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P146';
dsply theCharVar;
callp localProc();
P70();
P20();
P105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P146 in the procedure';
end-proc;