**free

ctl-opt dftactgrp(*no);

dcl-pi P286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P286';
dsply theCharVar;
callp localProc();
P49();
P163();
P212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P286 in the procedure';
end-proc;