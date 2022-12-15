**free

ctl-opt dftactgrp(*no);

dcl-pi P5008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2610.rpgleinc'
/copy 'qrpgleref/P2643.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T1633') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1633 LIMIT 1;

theCharVar = 'Hello from P5008';
dsply theCharVar;
callp localProc();
P2610();
P2643();
P612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5008 in the procedure';
end-proc;