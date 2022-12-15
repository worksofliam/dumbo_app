**free

ctl-opt dftactgrp(*no);

dcl-pi P3016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P2982.rpgleinc'

dcl-ds theTable extname('T153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T153 LIMIT 1;

theCharVar = 'Hello from P3016';
dsply theCharVar;
callp localProc();
P81();
P612();
P2982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3016 in the procedure';
end-proc;