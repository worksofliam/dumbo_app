**free

ctl-opt dftactgrp(*no);

dcl-pi P234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds T484 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T484 FROM T484 LIMIT 1;

theCharVar = 'Hello from P234';
dsply theCharVar;
callp localProc();
P185();
P32();
P165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P234 in the procedure';
end-proc;