**free

ctl-opt dftactgrp(*no);

dcl-pi P5318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4854.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P5229.rpgleinc'

dcl-ds T923 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T923 FROM T923 LIMIT 1;

theCharVar = 'Hello from P5318';
dsply theCharVar;
callp localProc();
P4854();
P655();
P5229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5318 in the procedure';
end-proc;