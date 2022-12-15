**free

ctl-opt dftactgrp(*no);

dcl-pi P2010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1605.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds T102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T102 FROM T102 LIMIT 1;

theCharVar = 'Hello from P2010';
dsply theCharVar;
callp localProc();
P1605();
P633();
P316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2010 in the procedure';
end-proc;