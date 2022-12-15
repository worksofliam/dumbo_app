**free

ctl-opt dftactgrp(*no);

dcl-pi P2771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1617.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T1311') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1311 LIMIT 1;

theCharVar = 'Hello from P2771';
dsply theCharVar;
callp localProc();
P1617();
P771();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2771 in the procedure';
end-proc;