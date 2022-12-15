**free

ctl-opt dftactgrp(*no);

dcl-pi P4108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P788.rpgleinc'
/copy 'qrpgleref/P3075.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T1551 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1551 FROM T1551 LIMIT 1;

theCharVar = 'Hello from P4108';
dsply theCharVar;
callp localProc();
P788();
P3075();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4108 in the procedure';
end-proc;