**free

ctl-opt dftactgrp(*no);

dcl-pi P3270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2480.rpgleinc'
/copy 'qrpgleref/P1045.rpgleinc'
/copy 'qrpgleref/P1985.rpgleinc'

dcl-ds T275 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T275 FROM T275 LIMIT 1;

theCharVar = 'Hello from P3270';
dsply theCharVar;
callp localProc();
P2480();
P1045();
P1985();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3270 in the procedure';
end-proc;