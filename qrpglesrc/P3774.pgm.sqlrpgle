**free

ctl-opt dftactgrp(*no);

dcl-pi P3774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'

dcl-ds theTable extname('T1802') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1802 LIMIT 1;

theCharVar = 'Hello from P3774';
dsply theCharVar;
callp localProc();
P115();
P395();
P330();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3774 in the procedure';
end-proc;