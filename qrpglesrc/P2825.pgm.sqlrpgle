**free

ctl-opt dftactgrp(*no);

dcl-pi P2825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds T755 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T755 FROM T755 LIMIT 1;

theCharVar = 'Hello from P2825';
dsply theCharVar;
callp localProc();
P201();
P40();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2825 in the procedure';
end-proc;