**free

ctl-opt dftactgrp(*no);

dcl-pi P453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T451') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T451 LIMIT 1;

theCharVar = 'Hello from P453';
dsply theCharVar;
callp localProc();
P439();
P148();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P453 in the procedure';
end-proc;