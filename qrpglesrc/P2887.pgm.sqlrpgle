**free

ctl-opt dftactgrp(*no);

dcl-pi P2887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds T259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T259 FROM T259 LIMIT 1;

theCharVar = 'Hello from P2887';
dsply theCharVar;
callp localProc();
P642();
P700();
P533();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2887 in the procedure';
end-proc;