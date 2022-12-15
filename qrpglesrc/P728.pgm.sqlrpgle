**free

ctl-opt dftactgrp(*no);

dcl-pi P728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'

dcl-ds theTable extname('T1032') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1032 LIMIT 1;

theCharVar = 'Hello from P728';
dsply theCharVar;
callp localProc();
P272();
P350();
P642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P728 in the procedure';
end-proc;