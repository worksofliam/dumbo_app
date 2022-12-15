**free

ctl-opt dftactgrp(*no);

dcl-pi P2142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1864.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'

dcl-ds theTable extname('T1031') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1031 LIMIT 1;

theCharVar = 'Hello from P2142';
dsply theCharVar;
callp localProc();
P1864();
P442();
P626();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2142 in the procedure';
end-proc;