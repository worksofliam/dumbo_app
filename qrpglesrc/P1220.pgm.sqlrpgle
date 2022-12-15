**free

ctl-opt dftactgrp(*no);

dcl-pi P1220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P927.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P1220';
dsply theCharVar;
callp localProc();
P927();
P739();
P740();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1220 in the procedure';
end-proc;