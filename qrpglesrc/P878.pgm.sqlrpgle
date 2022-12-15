**free

ctl-opt dftactgrp(*no);

dcl-pi P878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'

dcl-ds theTable extname('T1186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1186 LIMIT 1;

theCharVar = 'Hello from P878';
dsply theCharVar;
callp localProc();
P154();
P545();
P845();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P878 in the procedure';
end-proc;