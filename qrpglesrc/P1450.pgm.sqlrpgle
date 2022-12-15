**free

ctl-opt dftactgrp(*no);

dcl-pi P1450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'

dcl-ds T28 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T28 FROM T28 LIMIT 1;

theCharVar = 'Hello from P1450';
dsply theCharVar;
callp localProc();
P855();
P208();
P1249();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1450 in the procedure';
end-proc;