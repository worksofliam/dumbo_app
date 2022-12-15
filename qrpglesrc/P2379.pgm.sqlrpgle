**free

ctl-opt dftactgrp(*no);

dcl-pi P2379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'

dcl-ds T1000 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1000 FROM T1000 LIMIT 1;

theCharVar = 'Hello from P2379';
dsply theCharVar;
callp localProc();
P1700();
P586();
P622();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2379 in the procedure';
end-proc;