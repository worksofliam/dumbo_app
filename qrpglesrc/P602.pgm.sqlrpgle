**free

ctl-opt dftactgrp(*no);

dcl-pi P602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'

dcl-ds T124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T124 FROM T124 LIMIT 1;

theCharVar = 'Hello from P602';
dsply theCharVar;
callp localProc();
P154();
P423();
P495();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P602 in the procedure';
end-proc;