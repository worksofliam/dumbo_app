**free

ctl-opt dftactgrp(*no);

dcl-pi P2161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P2138.rpgleinc'

dcl-ds theTable extname('T1193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1193 LIMIT 1;

theCharVar = 'Hello from P2161';
dsply theCharVar;
callp localProc();
P858();
P107();
P2138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2161 in the procedure';
end-proc;