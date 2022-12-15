**free

ctl-opt dftactgrp(*no);

dcl-pi P763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T791') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T791 LIMIT 1;

theCharVar = 'Hello from P763';
dsply theCharVar;
callp localProc();
P653();
P184();
P297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P763 in the procedure';
end-proc;