**free

ctl-opt dftactgrp(*no);

dcl-pi P4;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P4';
dsply theCharVar;
callp localProc();
P1();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4 in the procedure';
end-proc;