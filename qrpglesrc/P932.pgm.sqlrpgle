**free

ctl-opt dftactgrp(*no);

dcl-pi P932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'

dcl-ds T238 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T238 FROM T238 LIMIT 1;

theCharVar = 'Hello from P932';
dsply theCharVar;
callp localProc();
P568();
P526();
P600();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P932 in the procedure';
end-proc;