**free

ctl-opt dftactgrp(*no);

dcl-pi P414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'

dcl-ds T460 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T460 FROM T460 LIMIT 1;

theCharVar = 'Hello from P414';
dsply theCharVar;
callp localProc();
P297();
P204();
P364();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P414 in the procedure';
end-proc;