**free

ctl-opt dftactgrp(*no);

dcl-pi P1038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'

dcl-ds T684 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T684 FROM T684 LIMIT 1;

theCharVar = 'Hello from P1038';
dsply theCharVar;
callp localProc();
P225();
P444();
P542();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1038 in the procedure';
end-proc;