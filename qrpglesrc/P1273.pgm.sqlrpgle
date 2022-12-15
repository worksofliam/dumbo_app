**free

ctl-opt dftactgrp(*no);

dcl-pi P1273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'

dcl-ds T924 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T924 FROM T924 LIMIT 1;

theCharVar = 'Hello from P1273';
dsply theCharVar;
callp localProc();
P1076();
P743();
P1237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1273 in the procedure';
end-proc;