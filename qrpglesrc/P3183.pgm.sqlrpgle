**free

ctl-opt dftactgrp(*no);

dcl-pi P3183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P1446.rpgleinc'
/copy 'qrpgleref/P3121.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P3183';
dsply theCharVar;
callp localProc();
P400();
P1446();
P3121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3183 in the procedure';
end-proc;