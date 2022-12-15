**free

ctl-opt dftactgrp(*no);

dcl-pi P259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds T227 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T227 FROM T227 LIMIT 1;

theCharVar = 'Hello from P259';
dsply theCharVar;
callp localProc();
P131();
P156();
P155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P259 in the procedure';
end-proc;