**free

ctl-opt dftactgrp(*no);

dcl-pi P1780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P1526.rpgleinc'

dcl-ds theTable extname('T1059') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1059 LIMIT 1;

theCharVar = 'Hello from P1780';
dsply theCharVar;
callp localProc();
P188();
P1418();
P1526();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1780 in the procedure';
end-proc;