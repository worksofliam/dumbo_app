**free

ctl-opt dftactgrp(*no);

dcl-pi P685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds theTable extname('T844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T844 LIMIT 1;

theCharVar = 'Hello from P685';
dsply theCharVar;
callp localProc();
P296();
P680();
P597();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P685 in the procedure';
end-proc;