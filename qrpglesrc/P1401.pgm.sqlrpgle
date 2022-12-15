**free

ctl-opt dftactgrp(*no);

dcl-pi P1401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'

dcl-ds T854 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T854 FROM T854 LIMIT 1;

theCharVar = 'Hello from P1401';
dsply theCharVar;
callp localProc();
P1215();
P159();
P1293();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1401 in the procedure';
end-proc;