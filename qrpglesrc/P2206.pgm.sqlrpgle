**free

ctl-opt dftactgrp(*no);

dcl-pi P2206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2116.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P1912.rpgleinc'

dcl-ds T1650 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1650 FROM T1650 LIMIT 1;

theCharVar = 'Hello from P2206';
dsply theCharVar;
callp localProc();
P2116();
P774();
P1912();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2206 in the procedure';
end-proc;