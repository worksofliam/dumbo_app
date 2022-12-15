**free

ctl-opt dftactgrp(*no);

dcl-pi P597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'

dcl-ds theTable extname('T409') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T409 LIMIT 1;

theCharVar = 'Hello from P597';
dsply theCharVar;
callp localProc();
P85();
P162();
P409();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P597 in the procedure';
end-proc;