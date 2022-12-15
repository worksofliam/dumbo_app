**free

ctl-opt dftactgrp(*no);

dcl-pi P3415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2379.rpgleinc'
/copy 'qrpgleref/P2689.rpgleinc'
/copy 'qrpgleref/P2988.rpgleinc'

dcl-ds theTable extname('T1771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1771 LIMIT 1;

theCharVar = 'Hello from P3415';
dsply theCharVar;
callp localProc();
P2379();
P2689();
P2988();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3415 in the procedure';
end-proc;