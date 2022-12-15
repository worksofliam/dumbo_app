**free

ctl-opt dftactgrp(*no);

dcl-pi P651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P623.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P651';
dsply theCharVar;
callp localProc();
P623();
P132();
P612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P651 in the procedure';
end-proc;