**free

ctl-opt dftactgrp(*no);

dcl-pi P499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds T1147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1147 FROM T1147 LIMIT 1;

theCharVar = 'Hello from P499';
dsply theCharVar;
callp localProc();
P388();
P33();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P499 in the procedure';
end-proc;