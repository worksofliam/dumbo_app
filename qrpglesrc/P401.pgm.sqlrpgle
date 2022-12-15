**free

ctl-opt dftactgrp(*no);

dcl-pi P401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P401';
dsply theCharVar;
callp localProc();
P72();
P132();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P401 in the procedure';
end-proc;