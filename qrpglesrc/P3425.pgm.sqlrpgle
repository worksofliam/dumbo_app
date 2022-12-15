**free

ctl-opt dftactgrp(*no);

dcl-pi P3425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2189.rpgleinc'
/copy 'qrpgleref/P2785.rpgleinc'
/copy 'qrpgleref/P1682.rpgleinc'

dcl-ds T1192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1192 FROM T1192 LIMIT 1;

theCharVar = 'Hello from P3425';
dsply theCharVar;
callp localProc();
P2189();
P2785();
P1682();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3425 in the procedure';
end-proc;