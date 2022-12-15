**free

ctl-opt dftactgrp(*no);

dcl-pi P4492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2863.rpgleinc'
/copy 'qrpgleref/P3940.rpgleinc'
/copy 'qrpgleref/P1594.rpgleinc'

dcl-ds theTable extname('T782') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T782 LIMIT 1;

theCharVar = 'Hello from P4492';
dsply theCharVar;
callp localProc();
P2863();
P3940();
P1594();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4492 in the procedure';
end-proc;