**free

ctl-opt dftactgrp(*no);

dcl-pi P329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds T215 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T215 FROM T215 LIMIT 1;

theCharVar = 'Hello from P329';
dsply theCharVar;
callp localProc();
P260();
P109();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P329 in the procedure';
end-proc;