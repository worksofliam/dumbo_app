**free

ctl-opt dftactgrp(*no);

dcl-pi P4379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3898.rpgleinc'
/copy 'qrpgleref/P1429.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds T1099 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1099 FROM T1099 LIMIT 1;

theCharVar = 'Hello from P4379';
dsply theCharVar;
callp localProc();
P3898();
P1429();
P1535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4379 in the procedure';
end-proc;