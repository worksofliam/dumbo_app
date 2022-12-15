**free

ctl-opt dftactgrp(*no);

dcl-pi P4161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3043.rpgleinc'
/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'

dcl-ds theTable extname('T1789') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1789 LIMIT 1;

theCharVar = 'Hello from P4161';
dsply theCharVar;
callp localProc();
P3043();
P1524();
P582();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4161 in the procedure';
end-proc;