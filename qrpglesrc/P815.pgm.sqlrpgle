**free

ctl-opt dftactgrp(*no);

dcl-pi P815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds T54 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T54 FROM T54 LIMIT 1;

theCharVar = 'Hello from P815';
dsply theCharVar;
callp localProc();
P575();
P341();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P815 in the procedure';
end-proc;