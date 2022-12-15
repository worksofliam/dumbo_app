**free

ctl-opt dftactgrp(*no);

dcl-pi P1392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds T60 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T60 FROM T60 LIMIT 1;

theCharVar = 'Hello from P1392';
dsply theCharVar;
callp localProc();
P26();
P95();
P965();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1392 in the procedure';
end-proc;