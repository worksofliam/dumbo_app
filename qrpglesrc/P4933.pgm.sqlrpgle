**free

ctl-opt dftactgrp(*no);

dcl-pi P4933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P4552.rpgleinc'
/copy 'qrpgleref/P2237.rpgleinc'

dcl-ds theTable extname('T1803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1803 LIMIT 1;

theCharVar = 'Hello from P4933';
dsply theCharVar;
callp localProc();
P1590();
P4552();
P2237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4933 in the procedure';
end-proc;