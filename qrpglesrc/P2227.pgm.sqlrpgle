**free

ctl-opt dftactgrp(*no);

dcl-pi P2227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P1990.rpgleinc'

dcl-ds T788 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T788 FROM T788 LIMIT 1;

theCharVar = 'Hello from P2227';
dsply theCharVar;
callp localProc();
P567();
P1732();
P1990();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2227 in the procedure';
end-proc;