**free

ctl-opt dftactgrp(*no);

dcl-pi P2441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1128.rpgleinc'
/copy 'qrpgleref/P1882.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds theTable extname('T1696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1696 LIMIT 1;

theCharVar = 'Hello from P2441';
dsply theCharVar;
callp localProc();
P1128();
P1882();
P281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2441 in the procedure';
end-proc;