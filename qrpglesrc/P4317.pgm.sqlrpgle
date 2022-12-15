**free

ctl-opt dftactgrp(*no);

dcl-pi P4317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1290.rpgleinc'
/copy 'qrpgleref/P3129.rpgleinc'
/copy 'qrpgleref/P1770.rpgleinc'

dcl-ds T1068 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1068 FROM T1068 LIMIT 1;

theCharVar = 'Hello from P4317';
dsply theCharVar;
callp localProc();
P1290();
P3129();
P1770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4317 in the procedure';
end-proc;