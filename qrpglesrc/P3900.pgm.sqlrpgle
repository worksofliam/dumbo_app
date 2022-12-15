**free

ctl-opt dftactgrp(*no);

dcl-pi P3900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2643.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'
/copy 'qrpgleref/P2649.rpgleinc'

dcl-ds T568 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T568 FROM T568 LIMIT 1;

theCharVar = 'Hello from P3900';
dsply theCharVar;
callp localProc();
P2643();
P2385();
P2649();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3900 in the procedure';
end-proc;