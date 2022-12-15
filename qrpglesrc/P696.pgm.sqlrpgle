**free

ctl-opt dftactgrp(*no);

dcl-pi P696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds theTable extname('T171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T171 LIMIT 1;

theCharVar = 'Hello from P696';
dsply theCharVar;
callp localProc();
P13();
P151();
P571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P696 in the procedure';
end-proc;