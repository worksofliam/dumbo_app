**free

ctl-opt dftactgrp(*no);

dcl-pi P5023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4747.rpgleinc'
/copy 'qrpgleref/P4395.rpgleinc'
/copy 'qrpgleref/P4355.rpgleinc'

dcl-ds theTable extname('T730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T730 LIMIT 1;

theCharVar = 'Hello from P5023';
dsply theCharVar;
callp localProc();
P4747();
P4395();
P4355();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5023 in the procedure';
end-proc;