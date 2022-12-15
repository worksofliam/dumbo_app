**free

ctl-opt dftactgrp(*no);

dcl-pi P282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T641') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T641 LIMIT 1;

theCharVar = 'Hello from P282';
dsply theCharVar;
callp localProc();
P78();
P23();
P171();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P282 in the procedure';
end-proc;