**free

ctl-opt dftactgrp(*no);

dcl-pi P2697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P1952.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'

dcl-ds T907 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T907 FROM T907 LIMIT 1;

theCharVar = 'Hello from P2697';
dsply theCharVar;
callp localProc();
P990();
P1952();
P1885();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2697 in the procedure';
end-proc;