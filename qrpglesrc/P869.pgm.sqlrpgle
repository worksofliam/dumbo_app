**free

ctl-opt dftactgrp(*no);

dcl-pi P869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P869';
dsply theCharVar;
callp localProc();
P82();
P495();
P863();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P869 in the procedure';
end-proc;