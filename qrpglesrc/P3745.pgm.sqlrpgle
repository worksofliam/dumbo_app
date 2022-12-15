**free

ctl-opt dftactgrp(*no);

dcl-pi P3745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P1643.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds theTable extname('T1308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1308 LIMIT 1;

theCharVar = 'Hello from P3745';
dsply theCharVar;
callp localProc();
P727();
P1643();
P658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3745 in the procedure';
end-proc;