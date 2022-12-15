**free

ctl-opt dftactgrp(*no);

dcl-pi P2839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2074.rpgleinc'
/copy 'qrpgleref/P1412.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P2839';
dsply theCharVar;
callp localProc();
P2074();
P1412();
P1706();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2839 in the procedure';
end-proc;