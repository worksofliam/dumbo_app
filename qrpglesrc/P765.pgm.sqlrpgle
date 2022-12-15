**free

ctl-opt dftactgrp(*no);

dcl-pi P765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'

dcl-ds T41 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T41 FROM T41 LIMIT 1;

theCharVar = 'Hello from P765';
dsply theCharVar;
callp localProc();
P293();
P212();
P552();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P765 in the procedure';
end-proc;