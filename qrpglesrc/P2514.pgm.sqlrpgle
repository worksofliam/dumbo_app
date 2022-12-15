**free

ctl-opt dftactgrp(*no);

dcl-pi P2514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P2420.rpgleinc'

dcl-ds T314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T314 FROM T314 LIMIT 1;

theCharVar = 'Hello from P2514';
dsply theCharVar;
callp localProc();
P876();
P1337();
P2420();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2514 in the procedure';
end-proc;