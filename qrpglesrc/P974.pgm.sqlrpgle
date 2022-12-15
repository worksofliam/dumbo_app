**free

ctl-opt dftactgrp(*no);

dcl-pi P974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P620.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'

dcl-ds theTable extname('T340') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T340 LIMIT 1;

theCharVar = 'Hello from P974';
dsply theCharVar;
callp localProc();
P620();
P694();
P955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P974 in the procedure';
end-proc;