**free

ctl-opt dftactgrp(*no);

dcl-pi P70;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T681') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T681 LIMIT 1;

theCharVar = 'Hello from P70';
dsply theCharVar;
callp localProc();
P42();
P44();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P70 in the procedure';
end-proc;