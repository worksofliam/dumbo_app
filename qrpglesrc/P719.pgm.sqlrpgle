**free

ctl-opt dftactgrp(*no);

dcl-pi P719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'

dcl-ds theTable extname('T62') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T62 LIMIT 1;

theCharVar = 'Hello from P719';
dsply theCharVar;
callp localProc();
P52();
P672();
P622();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P719 in the procedure';
end-proc;