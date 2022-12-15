**free

ctl-opt dftactgrp(*no);

dcl-pi P685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P685';
dsply theCharVar;
callp localProc();
P612();
P424();
P369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P685 in the procedure';
end-proc;