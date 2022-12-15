**free

ctl-opt dftactgrp(*no);

dcl-pi P853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P530.rpgleinc'

dcl-ds theTable extname('T630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T630 LIMIT 1;

theCharVar = 'Hello from P853';
dsply theCharVar;
callp localProc();
P592();
P590();
P530();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P853 in the procedure';
end-proc;