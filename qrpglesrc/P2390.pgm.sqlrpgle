**free

ctl-opt dftactgrp(*no);

dcl-pi P2390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P2107.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P2390';
dsply theCharVar;
callp localProc();
P2013();
P2107();
P696();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2390 in the procedure';
end-proc;