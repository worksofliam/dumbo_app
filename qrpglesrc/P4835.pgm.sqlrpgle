**free

ctl-opt dftactgrp(*no);

dcl-pi P4835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3731.rpgleinc'
/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P2680.rpgleinc'

dcl-ds T1586 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1586 FROM T1586 LIMIT 1;

theCharVar = 'Hello from P4835';
dsply theCharVar;
callp localProc();
P3731();
P2754();
P2680();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4835 in the procedure';
end-proc;