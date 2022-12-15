**free

ctl-opt dftactgrp(*no);

dcl-pi P327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'

dcl-ds theTable extname('T85') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T85 LIMIT 1;

theCharVar = 'Hello from P327';
dsply theCharVar;
callp localProc();
P159();
P143();
P259();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P327 in the procedure';
end-proc;