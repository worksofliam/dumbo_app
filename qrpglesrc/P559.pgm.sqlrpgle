**free

ctl-opt dftactgrp(*no);

dcl-pi P559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P559';
dsply theCharVar;
callp localProc();
P502();
P104();
P66();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P559 in the procedure';
end-proc;