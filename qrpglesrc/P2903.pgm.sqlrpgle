**free

ctl-opt dftactgrp(*no);

dcl-pi P2903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P2358.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'

dcl-ds T923 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T923 FROM T923 LIMIT 1;

theCharVar = 'Hello from P2903';
dsply theCharVar;
callp localProc();
P992();
P2358();
P695();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2903 in the procedure';
end-proc;