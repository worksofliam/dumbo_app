**free

ctl-opt dftactgrp(*no);

dcl-pi P4575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4551.rpgleinc'
/copy 'qrpgleref/P2266.rpgleinc'
/copy 'qrpgleref/P4168.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P4575';
dsply theCharVar;
callp localProc();
P4551();
P2266();
P4168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4575 in the procedure';
end-proc;