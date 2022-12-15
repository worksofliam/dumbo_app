**free

ctl-opt dftactgrp(*no);

dcl-pi P137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T95 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T95 FROM T95 LIMIT 1;

theCharVar = 'Hello from P137';
dsply theCharVar;
callp localProc();
P76();
P128();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P137 in the procedure';
end-proc;