**free

ctl-opt dftactgrp(*no);

dcl-pi P3177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1632.rpgleinc'
/copy 'qrpgleref/P2331.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds T1144 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1144 FROM T1144 LIMIT 1;

theCharVar = 'Hello from P3177';
dsply theCharVar;
callp localProc();
P1632();
P2331();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3177 in the procedure';
end-proc;