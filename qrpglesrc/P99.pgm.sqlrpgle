**free

ctl-opt dftactgrp(*no);

dcl-pi P99;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T80 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T80 FROM T80 LIMIT 1;

theCharVar = 'Hello from P99';
dsply theCharVar;
callp localProc();
P8();
P32();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P99 in the procedure';
end-proc;