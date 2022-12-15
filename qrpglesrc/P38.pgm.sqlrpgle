**free

ctl-opt dftactgrp(*no);

dcl-pi P38;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P38';
dsply theCharVar;
callp localProc();
P1();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P38 in the procedure';
end-proc;