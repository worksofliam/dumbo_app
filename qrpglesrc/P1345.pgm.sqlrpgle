**free

ctl-opt dftactgrp(*no);

dcl-pi P1345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds T346 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T346 FROM T346 LIMIT 1;

theCharVar = 'Hello from P1345';
dsply theCharVar;
callp localProc();
P595();
P507();
P174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1345 in the procedure';
end-proc;