**free

ctl-opt dftactgrp(*no);

dcl-pi P2226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P869.rpgleinc'
/copy 'qrpgleref/P1568.rpgleinc'
/copy 'qrpgleref/P1751.rpgleinc'

dcl-ds T30 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T30 FROM T30 LIMIT 1;

theCharVar = 'Hello from P2226';
dsply theCharVar;
callp localProc();
P869();
P1568();
P1751();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2226 in the procedure';
end-proc;