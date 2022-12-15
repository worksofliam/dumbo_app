**free

ctl-opt dftactgrp(*no);

dcl-pi P3844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2729.rpgleinc'
/copy 'qrpgleref/P2642.rpgleinc'
/copy 'qrpgleref/P2487.rpgleinc'

dcl-ds theTable extname('T722') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T722 LIMIT 1;

theCharVar = 'Hello from P3844';
dsply theCharVar;
callp localProc();
P2729();
P2642();
P2487();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3844 in the procedure';
end-proc;