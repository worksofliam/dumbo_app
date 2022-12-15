**free

ctl-opt dftactgrp(*no);

dcl-pi P353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds T1624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1624 FROM T1624 LIMIT 1;

theCharVar = 'Hello from P353';
dsply theCharVar;
callp localProc();
P294();
P193();
P58();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P353 in the procedure';
end-proc;