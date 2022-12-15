**free

ctl-opt dftactgrp(*no);

dcl-pi P713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds T173 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T173 FROM T173 LIMIT 1;

theCharVar = 'Hello from P713';
dsply theCharVar;
callp localProc();
P672();
P39();
P402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P713 in the procedure';
end-proc;