**free

ctl-opt dftactgrp(*no);

dcl-pi P2457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2262.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'

dcl-ds T1209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1209 FROM T1209 LIMIT 1;

theCharVar = 'Hello from P2457';
dsply theCharVar;
callp localProc();
P2262();
P711();
P2431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2457 in the procedure';
end-proc;