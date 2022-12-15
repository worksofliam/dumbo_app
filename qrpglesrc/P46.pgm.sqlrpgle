**free

ctl-opt dftactgrp(*no);

dcl-pi P46;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P46';
dsply theCharVar;
callp localProc();
P14();
P31();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P46 in the procedure';
end-proc;