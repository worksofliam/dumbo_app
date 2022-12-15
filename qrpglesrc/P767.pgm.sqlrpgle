**free

ctl-opt dftactgrp(*no);

dcl-pi P767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds T867 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T867 FROM T867 LIMIT 1;

theCharVar = 'Hello from P767';
dsply theCharVar;
callp localProc();
P536();
P647();
P435();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P767 in the procedure';
end-proc;