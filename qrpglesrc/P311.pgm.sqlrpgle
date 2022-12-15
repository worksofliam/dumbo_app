**free

ctl-opt dftactgrp(*no);

dcl-pi P311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T1097 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1097 FROM T1097 LIMIT 1;

theCharVar = 'Hello from P311';
dsply theCharVar;
callp localProc();
P35();
P255();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P311 in the procedure';
end-proc;