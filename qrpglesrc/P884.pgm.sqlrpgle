**free

ctl-opt dftactgrp(*no);

dcl-pi P884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds theTable extname('T495') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T495 LIMIT 1;

theCharVar = 'Hello from P884';
dsply theCharVar;
callp localProc();
P36();
P529();
P399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P884 in the procedure';
end-proc;