**free

ctl-opt dftactgrp(*no);

dcl-pi P4954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P3155.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds T1230 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1230 FROM T1230 LIMIT 1;

theCharVar = 'Hello from P4954';
dsply theCharVar;
callp localProc();
P238();
P3155();
P558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4954 in the procedure';
end-proc;