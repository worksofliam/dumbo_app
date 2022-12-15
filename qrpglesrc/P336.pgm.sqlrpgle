**free

ctl-opt dftactgrp(*no);

dcl-pi P336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T1425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1425 LIMIT 1;

theCharVar = 'Hello from P336';
dsply theCharVar;
callp localProc();
P178();
P41();
P297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P336 in the procedure';
end-proc;