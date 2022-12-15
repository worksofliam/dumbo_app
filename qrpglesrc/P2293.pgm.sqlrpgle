**free

ctl-opt dftactgrp(*no);

dcl-pi P2293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2214.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds T1139 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1139 FROM T1139 LIMIT 1;

theCharVar = 'Hello from P2293';
dsply theCharVar;
callp localProc();
P2214();
P283();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2293 in the procedure';
end-proc;