**free

ctl-opt dftactgrp(*no);

dcl-pi P697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'

dcl-ds T492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T492 FROM T492 LIMIT 1;

theCharVar = 'Hello from P697';
dsply theCharVar;
callp localProc();
P464();
P358();
P680();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P697 in the procedure';
end-proc;