**free

ctl-opt dftactgrp(*no);

dcl-pi P437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T149 LIMIT 1;

theCharVar = 'Hello from P437';
dsply theCharVar;
callp localProc();
P177();
P12();
P297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P437 in the procedure';
end-proc;