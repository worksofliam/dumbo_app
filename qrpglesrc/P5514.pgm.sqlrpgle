**free

ctl-opt dftactgrp(*no);

dcl-pi P5514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4450.rpgleinc'
/copy 'qrpgleref/P1705.rpgleinc'
/copy 'qrpgleref/P2248.rpgleinc'

dcl-ds theTable extname('T1052') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1052 LIMIT 1;

theCharVar = 'Hello from P5514';
dsply theCharVar;
callp localProc();
P4450();
P1705();
P2248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5514 in the procedure';
end-proc;