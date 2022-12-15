**free

ctl-opt dftactgrp(*no);

dcl-pi P894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P894';
dsply theCharVar;
callp localProc();
P812();
P356();
P349();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P894 in the procedure';
end-proc;