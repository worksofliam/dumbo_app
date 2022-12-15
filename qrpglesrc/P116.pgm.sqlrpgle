**free

ctl-opt dftactgrp(*no);

dcl-pi P116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P116';
dsply theCharVar;
callp localProc();
P11();
P34();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P116 in the procedure';
end-proc;