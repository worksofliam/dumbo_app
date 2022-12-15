**free

ctl-opt dftactgrp(*no);

dcl-pi P3563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3014.rpgleinc'
/copy 'qrpgleref/P2608.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds T596 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T596 FROM T596 LIMIT 1;

theCharVar = 'Hello from P3563';
dsply theCharVar;
callp localProc();
P3014();
P2608();
P729();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3563 in the procedure';
end-proc;