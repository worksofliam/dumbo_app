**free

ctl-opt dftactgrp(*no);

dcl-pi P2172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1705.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P2063.rpgleinc'

dcl-ds T1585 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1585 FROM T1585 LIMIT 1;

theCharVar = 'Hello from P2172';
dsply theCharVar;
callp localProc();
P1705();
P213();
P2063();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2172 in the procedure';
end-proc;