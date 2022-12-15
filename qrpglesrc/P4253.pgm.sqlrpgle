**free

ctl-opt dftactgrp(*no);

dcl-pi P4253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3933.rpgleinc'
/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P3059.rpgleinc'

dcl-ds T857 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T857 FROM T857 LIMIT 1;

theCharVar = 'Hello from P4253';
dsply theCharVar;
callp localProc();
P3933();
P1543();
P3059();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4253 in the procedure';
end-proc;