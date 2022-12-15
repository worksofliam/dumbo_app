**free

ctl-opt dftactgrp(*no);

dcl-pi P566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds T161 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T161 FROM T161 LIMIT 1;

theCharVar = 'Hello from P566';
dsply theCharVar;
callp localProc();
P64();
P473();
P359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P566 in the procedure';
end-proc;