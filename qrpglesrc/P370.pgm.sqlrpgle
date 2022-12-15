**free

ctl-opt dftactgrp(*no);

dcl-pi P370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds T457 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T457 FROM T457 LIMIT 1;

theCharVar = 'Hello from P370';
dsply theCharVar;
callp localProc();
P289();
P308();
P253();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P370 in the procedure';
end-proc;