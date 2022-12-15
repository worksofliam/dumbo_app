**free

ctl-opt dftactgrp(*no);

dcl-pi P2451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2051.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds T206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T206 FROM T206 LIMIT 1;

theCharVar = 'Hello from P2451';
dsply theCharVar;
callp localProc();
P2051();
P232();
P224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2451 in the procedure';
end-proc;