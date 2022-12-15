**free

ctl-opt dftactgrp(*no);

dcl-pi P352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds T380 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T380 FROM T380 LIMIT 1;

theCharVar = 'Hello from P352';
dsply theCharVar;
callp localProc();
P262();
P307();
P309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P352 in the procedure';
end-proc;