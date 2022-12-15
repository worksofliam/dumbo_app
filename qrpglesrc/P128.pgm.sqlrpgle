**free

ctl-opt dftactgrp(*no);

dcl-pi P128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds T371 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T371 FROM T371 LIMIT 1;

theCharVar = 'Hello from P128';
dsply theCharVar;
callp localProc();
P51();
P43();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P128 in the procedure';
end-proc;