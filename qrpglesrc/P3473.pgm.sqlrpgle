**free

ctl-opt dftactgrp(*no);

dcl-pi P3473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3291.rpgleinc'
/copy 'qrpgleref/P1301.rpgleinc'
/copy 'qrpgleref/P2842.rpgleinc'

dcl-ds T852 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T852 FROM T852 LIMIT 1;

theCharVar = 'Hello from P3473';
dsply theCharVar;
callp localProc();
P3291();
P1301();
P2842();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3473 in the procedure';
end-proc;