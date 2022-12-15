**free

ctl-opt dftactgrp(*no);

dcl-pi P653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T1376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1376 LIMIT 1;

theCharVar = 'Hello from P653';
dsply theCharVar;
callp localProc();
P282();
P278();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P653 in the procedure';
end-proc;