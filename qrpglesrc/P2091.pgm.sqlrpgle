**free

ctl-opt dftactgrp(*no);

dcl-pi P2091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P1998.rpgleinc'

dcl-ds T1087 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1087 FROM T1087 LIMIT 1;

theCharVar = 'Hello from P2091';
dsply theCharVar;
callp localProc();
P31();
P2012();
P1998();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2091 in the procedure';
end-proc;