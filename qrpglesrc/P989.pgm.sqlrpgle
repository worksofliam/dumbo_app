**free

ctl-opt dftactgrp(*no);

dcl-pi P989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds T1627 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1627 FROM T1627 LIMIT 1;

theCharVar = 'Hello from P989';
dsply theCharVar;
callp localProc();
P420();
P629();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P989 in the procedure';
end-proc;