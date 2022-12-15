**free

ctl-opt dftactgrp(*no);

dcl-pi P370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T1171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1171 LIMIT 1;

theCharVar = 'Hello from P370';
dsply theCharVar;
callp localProc();
P23();
P252();
P241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P370 in the procedure';
end-proc;