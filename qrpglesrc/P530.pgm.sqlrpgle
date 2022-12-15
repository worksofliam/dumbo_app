**free

ctl-opt dftactgrp(*no);

dcl-pi P530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'

dcl-ds theTable extname('T34') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T34 LIMIT 1;

theCharVar = 'Hello from P530';
dsply theCharVar;
callp localProc();
P354();
P227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P530 in the procedure';
end-proc;