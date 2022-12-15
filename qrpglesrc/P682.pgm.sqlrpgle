**free

ctl-opt dftactgrp(*no);

dcl-pi P682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T478') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T478 LIMIT 1;

theCharVar = 'Hello from P682';
dsply theCharVar;
callp localProc();
P629();
P616();
P37();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P682 in the procedure';
end-proc;