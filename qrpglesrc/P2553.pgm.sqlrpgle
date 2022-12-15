**free

ctl-opt dftactgrp(*no);

dcl-pi P2553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P995.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds T703 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T703 FROM T703 LIMIT 1;

theCharVar = 'Hello from P2553';
dsply theCharVar;
callp localProc();
P995();
P404();
P723();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2553 in the procedure';
end-proc;