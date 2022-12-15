**free

ctl-opt dftactgrp(*no);

dcl-pi P1268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T358 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T358 FROM T358 LIMIT 1;

theCharVar = 'Hello from P1268';
dsply theCharVar;
callp localProc();
P1147();
P74();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1268 in the procedure';
end-proc;