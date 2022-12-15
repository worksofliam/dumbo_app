**free

ctl-opt dftactgrp(*no);

dcl-pi P2851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2108.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds T383 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T383 FROM T383 LIMIT 1;

theCharVar = 'Hello from P2851';
dsply theCharVar;
callp localProc();
P2108();
P858();
P1535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2851 in the procedure';
end-proc;