**free

ctl-opt dftactgrp(*no);

dcl-pi P2130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds theTable extname('T1209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1209 LIMIT 1;

theCharVar = 'Hello from P2130';
dsply theCharVar;
callp localProc();
P46();
P1287();
P397();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2130 in the procedure';
end-proc;