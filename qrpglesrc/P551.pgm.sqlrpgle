**free

ctl-opt dftactgrp(*no);

dcl-pi P551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T522') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T522 LIMIT 1;

theCharVar = 'Hello from P551';
dsply theCharVar;
callp localProc();
P109();
P117();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P551 in the procedure';
end-proc;