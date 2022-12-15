**free

ctl-opt dftactgrp(*no);

dcl-pi P3813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P2495.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'

dcl-ds T1281 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1281 FROM T1281 LIMIT 1;

theCharVar = 'Hello from P3813';
dsply theCharVar;
callp localProc();
P471();
P2495();
P227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3813 in the procedure';
end-proc;