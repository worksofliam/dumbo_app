**free

ctl-opt dftactgrp(*no);

dcl-pi P4289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3006.rpgleinc'
/copy 'qrpgleref/P3183.rpgleinc'
/copy 'qrpgleref/P849.rpgleinc'

dcl-ds theTable extname('T1104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1104 LIMIT 1;

theCharVar = 'Hello from P4289';
dsply theCharVar;
callp localProc();
P3006();
P3183();
P849();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4289 in the procedure';
end-proc;