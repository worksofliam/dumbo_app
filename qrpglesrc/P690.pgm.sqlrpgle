**free

ctl-opt dftactgrp(*no);

dcl-pi P690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds theTable extname('T431') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T431 LIMIT 1;

theCharVar = 'Hello from P690';
dsply theCharVar;
callp localProc();
P368();
P69();
P638();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P690 in the procedure';
end-proc;