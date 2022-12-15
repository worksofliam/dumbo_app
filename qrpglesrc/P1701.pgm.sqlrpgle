**free

ctl-opt dftactgrp(*no);

dcl-pi P1701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'

dcl-ds theTable extname('T631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T631 LIMIT 1;

theCharVar = 'Hello from P1701';
dsply theCharVar;
callp localProc();
P412();
P226();
P1612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1701 in the procedure';
end-proc;