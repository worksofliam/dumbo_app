**free

ctl-opt dftactgrp(*no);

dcl-pi P135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds T1098 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1098 FROM T1098 LIMIT 1;

theCharVar = 'Hello from P135';
dsply theCharVar;
callp localProc();
P72();
P81();
P45();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P135 in the procedure';
end-proc;