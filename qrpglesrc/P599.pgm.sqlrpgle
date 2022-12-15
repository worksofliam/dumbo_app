**free

ctl-opt dftactgrp(*no);

dcl-pi P599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds theTable extname('T242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T242 LIMIT 1;

theCharVar = 'Hello from P599';
dsply theCharVar;
callp localProc();
P171();
P536();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P599 in the procedure';
end-proc;