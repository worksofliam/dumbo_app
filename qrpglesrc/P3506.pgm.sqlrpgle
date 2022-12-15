**free

ctl-opt dftactgrp(*no);

dcl-pi P3506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2609.rpgleinc'
/copy 'qrpgleref/P975.rpgleinc'
/copy 'qrpgleref/P1342.rpgleinc'

dcl-ds T1621 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1621 FROM T1621 LIMIT 1;

theCharVar = 'Hello from P3506';
dsply theCharVar;
callp localProc();
P2609();
P975();
P1342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3506 in the procedure';
end-proc;