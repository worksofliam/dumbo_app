**free

ctl-opt dftactgrp(*no);

dcl-pi P2678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2379.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds T211 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T211 FROM T211 LIMIT 1;

theCharVar = 'Hello from P2678';
dsply theCharVar;
callp localProc();
P2379();
P30();
P1059();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2678 in the procedure';
end-proc;