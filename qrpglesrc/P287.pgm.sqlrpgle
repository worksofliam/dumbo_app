**free

ctl-opt dftactgrp(*no);

dcl-pi P287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T1687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1687 LIMIT 1;

theCharVar = 'Hello from P287';
dsply theCharVar;
callp localProc();
P77();
P46();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P287 in the procedure';
end-proc;