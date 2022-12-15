**free

ctl-opt dftactgrp(*no);

dcl-pi P616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P616';
dsply theCharVar;
callp localProc();
P58();
P126();
P612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P616 in the procedure';
end-proc;