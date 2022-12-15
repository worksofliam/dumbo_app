**free

ctl-opt dftactgrp(*no);

dcl-pi P291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T76') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T76 LIMIT 1;

theCharVar = 'Hello from P291';
dsply theCharVar;
callp localProc();
P224();
P36();
P44();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P291 in the procedure';
end-proc;