**free

ctl-opt dftactgrp(*no);

dcl-pi P1820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T856') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T856 LIMIT 1;

theCharVar = 'Hello from P1820';
dsply theCharVar;
callp localProc();
P392();
P194();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1820 in the procedure';
end-proc;