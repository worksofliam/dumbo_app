**free

ctl-opt dftactgrp(*no);

dcl-pi P1478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds T172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T172 FROM T172 LIMIT 1;

theCharVar = 'Hello from P1478';
dsply theCharVar;
callp localProc();
P51();
P305();
P226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1478 in the procedure';
end-proc;