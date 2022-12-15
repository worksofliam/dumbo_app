**free

ctl-opt dftactgrp(*no);

dcl-pi P3350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3032.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P2221.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P3350';
dsply theCharVar;
callp localProc();
P3032();
P552();
P2221();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3350 in the procedure';
end-proc;