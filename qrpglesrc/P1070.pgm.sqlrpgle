**free

ctl-opt dftactgrp(*no);

dcl-pi P1070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P1070';
dsply theCharVar;
callp localProc();
P622();
P901();
P519();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1070 in the procedure';
end-proc;