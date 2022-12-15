**free

ctl-opt dftactgrp(*no);

dcl-pi P31;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P31';
dsply theCharVar;
callp localProc();
P7();
P11();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P31 in the procedure';
end-proc;