**free

ctl-opt dftactgrp(*no);

dcl-pi P828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P813.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P828';
dsply theCharVar;
callp localProc();
P423();
P609();
P813();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P828 in the procedure';
end-proc;