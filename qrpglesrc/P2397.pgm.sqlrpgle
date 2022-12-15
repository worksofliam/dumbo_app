**free

ctl-opt dftactgrp(*no);

dcl-pi P2397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P2049.rpgleinc'

dcl-ds T858 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T858 FROM T858 LIMIT 1;

theCharVar = 'Hello from P2397';
dsply theCharVar;
callp localProc();
P406();
P1042();
P2049();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2397 in the procedure';
end-proc;