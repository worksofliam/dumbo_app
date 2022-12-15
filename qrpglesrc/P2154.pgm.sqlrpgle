**free

ctl-opt dftactgrp(*no);

dcl-pi P2154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P2154';
dsply theCharVar;
callp localProc();
P68();
P1010();
P354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2154 in the procedure';
end-proc;