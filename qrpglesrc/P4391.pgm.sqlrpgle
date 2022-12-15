**free

ctl-opt dftactgrp(*no);

dcl-pi P4391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3627.rpgleinc'
/copy 'qrpgleref/P3915.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'

dcl-ds T1192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1192 FROM T1192 LIMIT 1;

theCharVar = 'Hello from P4391';
dsply theCharVar;
callp localProc();
P3627();
P3915();
P985();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4391 in the procedure';
end-proc;