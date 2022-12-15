**free

ctl-opt dftactgrp(*no);

dcl-pi P1740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'

dcl-ds theTable extname('T446') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T446 LIMIT 1;

theCharVar = 'Hello from P1740';
dsply theCharVar;
callp localProc();
P1043();
P2();
P848();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1740 in the procedure';
end-proc;