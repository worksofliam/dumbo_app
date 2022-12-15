**free

ctl-opt dftactgrp(*no);

dcl-pi P2924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P2712.rpgleinc'
/copy 'qrpgleref/P2880.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P2924';
dsply theCharVar;
callp localProc();
P117();
P2712();
P2880();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2924 in the procedure';
end-proc;