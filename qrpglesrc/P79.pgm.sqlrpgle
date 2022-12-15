**free

ctl-opt dftactgrp(*no);

dcl-pi P79;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T1807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1807 LIMIT 1;

theCharVar = 'Hello from P79';
dsply theCharVar;
callp localProc();
P24();
P27();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P79 in the procedure';
end-proc;