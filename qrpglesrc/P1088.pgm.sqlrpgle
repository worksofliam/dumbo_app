**free

ctl-opt dftactgrp(*no);

dcl-pi P1088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P1088';
dsply theCharVar;
callp localProc();
P512();
P612();
P939();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1088 in the procedure';
end-proc;