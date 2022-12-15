**free

ctl-opt dftactgrp(*no);

dcl-pi P1032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'

dcl-ds T190 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T190 FROM T190 LIMIT 1;

theCharVar = 'Hello from P1032';
dsply theCharVar;
callp localProc();
P97();
P720();
P632();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1032 in the procedure';
end-proc;