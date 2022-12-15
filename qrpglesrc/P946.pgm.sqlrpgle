**free

ctl-opt dftactgrp(*no);

dcl-pi P946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'

dcl-ds theTable extname('T473') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T473 LIMIT 1;

theCharVar = 'Hello from P946';
dsply theCharVar;
callp localProc();
P672();
P608();
P701();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P946 in the procedure';
end-proc;