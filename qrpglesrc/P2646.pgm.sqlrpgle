**free

ctl-opt dftactgrp(*no);

dcl-pi P2646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1818.rpgleinc'
/copy 'qrpgleref/P1764.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'

dcl-ds T666 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T666 FROM T666 LIMIT 1;

theCharVar = 'Hello from P2646';
dsply theCharVar;
callp localProc();
P1818();
P1764();
P549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2646 in the procedure';
end-proc;