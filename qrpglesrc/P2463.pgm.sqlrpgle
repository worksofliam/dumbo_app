**free

ctl-opt dftactgrp(*no);

dcl-pi P2463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds T278 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T278 FROM T278 LIMIT 1;

theCharVar = 'Hello from P2463';
dsply theCharVar;
callp localProc();
P1158();
P686();
P488();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2463 in the procedure';
end-proc;