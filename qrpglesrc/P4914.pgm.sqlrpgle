**free

ctl-opt dftactgrp(*no);

dcl-pi P4914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3738.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P3973.rpgleinc'

dcl-ds T474 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T474 FROM T474 LIMIT 1;

theCharVar = 'Hello from P4914';
dsply theCharVar;
callp localProc();
P3738();
P632();
P3973();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4914 in the procedure';
end-proc;